#include "proposer.h"
#include "learner.h"
#include "carray.h"
#include <assert.h>
#include <string.h>
#include <stdlib.h>

typedef enum instance_status_e
{
	empty,
	p1_pending,
	p1_ready,
	p2_pending,
	p2_completed
} i_status;


struct instance
{
	int id;
	iid_t iid;
	i_status status;
	ballot_t my_ballot;
	ballot_t p1_value_ballot;
	unsigned int promises_count;
	unsigned int promises_bitvector;
	paxos_msg* p1_value;
	paxos_msg* p2_value;
};


struct proposer 
{
	int id;
	iid_t next_prepare_iid;
	iid_t next_accept_iid;
	struct carray* values;
	struct carray* instances;
	struct learner* learner;
};


static int
value_cmp(paxos_msg* m1, paxos_msg* m2)
{
	assert(m1->type == m2->type);
	if (m1->data_size != m2->data_size)
		return -1;
	return memcmp(m1->data, m2->data, m1->data_size);
}

static paxos_msg*
wrap_value(char* value, size_t size)
{
	paxos_msg* msg = malloc(size + sizeof(paxos_msg));
	msg->data_size = size;
	msg->type = submit;
	memcpy(msg->data, value, size);
	return msg;
}

static void
instance_clear(struct instance* inst)
{
	if (inst->p1_value != NULL) free(inst->p1_value);
	if (inst->p2_value != NULL) free(inst->p2_value);
	memset(inst, 0, sizeof(struct instance));
	inst->status = empty;
}

static struct instance*
instance_new()
{
	struct instance* inst;
	inst = malloc(sizeof(struct instance));
	instance_clear(inst);
	return inst;
}

static void
instance_add_prepare_ack(struct instance* inst, prepare_ack* ack)
{
	if (inst->promises_bitvector & (1<<ack->acceptor_id)) {
		LOG(DBG, ("Dropping duplicate promise from:%d, iid:%u, \n", 
		ack->acceptor_id, inst->iid));
		return;
	}

	inst->promises_bitvector &= (1<<ack->acceptor_id);
	inst->promises_count++;
	LOG(DBG, ("Received valid promise from: %d, iid: %u, \n",
	ack->acceptor_id, inst->iid));

	if (ack->value_size == 0) {
		LOG(DBG, ("No value in promise\n"));
		return;
	}

	// Our value has same or greater ballot
	if (inst->p1_value_ballot >= ack->value_ballot) {
		// Keep the current value
		LOG(DBG, ("Included value is ignored (cause:value_ballot)\n"));
		return;
	}

	// Ballot is greater but the value is actually the same
	if ((inst->p1_value != NULL) &&
		(inst->p1_value->data_size == ack->value_size) && 
		(memcmp(inst->p1_value->data, ack->value, ack->value_size) == 0)) {
		//Just update the value ballot
		LOG(DBG, ("Included value is the same with higher value_ballot\n"));
		inst->p1_value_ballot = ack->value_ballot;
		return;
	}

	// Value should replace the one we have (if any)
	if (inst->p1_value != NULL) {
		free(inst->p1_value);
	}

	// Save the received value 
	inst->p1_value = wrap_value(ack->value, ack->value_size);
	inst->p1_value_ballot = ack->value_ballot;
	LOG(DBG, ("Value in promise saved\n"));
}

static struct instance*
proposer_get_instance(struct proposer* s, iid_t iid)
{
	struct instance* inst;
	inst = carray_at(s->instances, iid);
	if (inst->iid != iid) {
		return NULL;
	}
	return inst;
}

static struct instance*
proposer_create_instance(struct proposer* s, iid_t iid, ballot_t ballot)
{
	struct instance* inst;
	inst = carray_at(s->instances, iid);
	assert(inst->iid == 0);

	inst->iid = iid;
	inst->status = p1_pending;
	inst->my_ballot = ballot;
	return inst;
}

static int
proposer_instance_ready(struct proposer* s, iid_t iid)
{
	struct instance* inst;
	inst = carray_at(s->instances, iid);
	if (inst->status != p1_ready || inst->iid != iid) {
		return 0;
	}
	return 1;
}

static ballot_t 
proposer_next_ballot(struct proposer* s, ballot_t b)
{
	if (b > 0)
		return MAX_N_OF_PROPOSERS + b;
	else
		return MAX_N_OF_PROPOSERS + s->id;
}

void
proposer_propose(struct proposer* s, char* value, size_t size)
{
	paxos_msg* msg;
	msg = wrap_value(value, size);
	carray_push_back(s->values, msg);
}

prepare_req 
proposer_prepare(struct proposer* s)
{
	struct instance* inst;
	iid_t iid = s->next_prepare_iid + 1;
	
	inst = proposer_get_instance(s, iid);

	if (inst == NULL) {
		// new instance, create it
		inst = proposer_create_instance(s, iid, proposer_next_ballot(s, 0));
	} else if (inst->status == p1_pending) {
		assert(inst->iid == iid);
		//Reset fields used for previous phase 1
		inst->promises_bitvector = 0;
		inst->promises_count = 0;
		inst->p1_value_ballot = 0;
		if (inst->p1_value != NULL) free(inst->p1_value);
		inst->p1_value = NULL;
		//Ballot is incremented
		inst->my_ballot = proposer_next_ballot(s, inst->my_ballot);
	}
	
	s->next_prepare_iid++;
		
	return (prepare_req) {inst->iid, inst->my_ballot};
}

void
proposer_receive_prepare(struct proposer* s, prepare_ack* ack)
{
	struct instance* inst;
	inst = proposer_get_instance(s, ack->iid);

	if (inst == NULL) { // instance not stored (too old)
		LOG(DBG, ("Promise dropped, iid:%u too old\n", ack->iid));
		return;
	} else if (inst->status != p1_pending) { // If not p1_pending, drop
		LOG(DBG, ("Promise dropped, iid:%u not pending\n", ack->iid));
		return;
	}

	// Save the acknowledgement from this acceptor.
	// Also takes care of value that may be there.
	instance_add_prepare_ack(inst, ack);
	
	// Not a majority yet for this instance
	if (inst->promises_count < QUORUM) {
		LOG(DBG, ("Not yet a quorum for iid:%u\n", ack->iid));
		return;
	}
	
	// Quorum reached!
	inst->status = p1_ready;

	LOG(DBG, ("Quorum for iid:%u reached\n", ack->iid));
}

int 
proposer_accept(struct proposer* s, iid_t* iout,
	ballot_t* bout, paxos_msg** vout)
{
	struct instance* inst;
	iid_t iid = s->next_accept_iid + 1;
	
	if (!proposer_instance_ready(s, iid) || carray_empty(s->values))
		return 0;
	
	inst = proposer_get_instance(s, iid);
	assert(inst != NULL); // proposer_instance_ready should have caught this!
		
	if (inst->p1_value == NULL && inst->p2_value == NULL) {
		// Happens when p1 completes without value        
		// Assign a p2_value and execute
		inst->p2_value = carray_pop_front(s->values);
		assert(inst->p2_value != NULL);
	} else if (inst->p1_value != NULL) {
		// Only p1 value is present, MUST execute p2 with it
		// Save it as p2 value and execute
		inst->p2_value = inst->p1_value;
		inst->p1_value = NULL;
		inst->p1_value_ballot = 0;
	} else if (inst->p2_value != NULL) {
		// Only p2 value is present
		// Do phase 2 with it
	} else {
		// There are both p1 and p2 value
		// Compare them
		if (value_cmp(inst->p1_value, inst->p2_value) == 0) {
			// Same value, just delete p1_value
			free(inst->p1_value);
			inst->p1_value = NULL;
			inst->p1_value_ballot = 0;
		} else {
			// Different values
			// p2_value is pushed back to pending list
			carray_push_back(s->values, inst->p2_value);
			// Must execute p2 with p1 value
			inst->p2_value = inst->p1_value;
			inst->p1_value = NULL;
			inst->p1_value_ballot = 0;            
		}
	}
	// Change instance status
	inst->status = p2_pending;
	s->next_accept_iid += 1;
	
	// return values
	*iout = inst->iid;
	*bout = inst->my_ballot;
	*vout = inst->p2_value;
	
	return 1;
}

static void 
do_learn(struct proposer* s, accept_ack* ack)
{	
    LOG(DBG, ("Learning outcome of instance %u \n", ack->iid));
	
	struct instance* inst;
	
	inst = proposer_get_instance(s, ack->iid);
	if (inst == NULL) {
		// Instance not stored. Probably too old.
		return;
	}
    
	int my_val = (inst->p2_value != NULL) &&
		(inst->p2_value->data_size == ack->value_size) &&
		(memcmp(ack->value, inst->p2_value->data, ack->value_size) == 0);

	if (my_val) {
		// Our value accepted, notify client that submitted it
		// vh_notify_client(0, ii->p2_value); //TODO what the hell is that??
	} else if (inst->p2_value != NULL) {
		// Different value accepted, push back our value
		carray_push_back(s->values, inst->p2_value);
		inst->p2_value = NULL;
	} else {
		// We assigned no value to this instance,
		// it comes from somebody else??
	}

	instance_clear(inst);
}

static void 
try_learn(struct proposer* s)
{
	accept_ack* ack;
	while ((ack = learner_deliver_next(s->learner)) != NULL) {
		do_learn(s, ack);
		free(ack);
	}
}

void
proposer_receive_accept(struct proposer* s, accept_ack* ack) 
{
	learner_receive_accept(s->learner, ack);
	try_learn(s);
}

static void
initialize_instances(struct proposer* s, int count)
{
	int i;
	s->instances = carray_new(count);
	assert(s->instances != NULL);	
	for (i = 0; i < carray_size(s->instances); i++)
		carray_push_back(s->instances, instance_new());
}

struct proposer*
proposer_new(int id, int instances)
{
	struct proposer *s;
	s = malloc(sizeof(struct proposer));
	s->id = id;	
	s->next_prepare_iid = 0;
	s->next_accept_iid  = 0;
	s->learner = learner_new(LEARNER_ARRAY_SIZE);
	if (s->learner == NULL) {
		printf("learner_new failed\n");
		return NULL;
	}
	initialize_instances(s, instances);
	s->values = carray_new(1024);
	
	return s;
}