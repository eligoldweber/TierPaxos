# TIERPaxos

This is TIERPaxos, a prototype of a 2 Tier Paxos implenetation.

This is an extension of [LibPaxos3][1].


## Building

These are the basic steps required to get and compile LibPaxos3

	git clone https://github.com/eligoldweber/TierPaxos.git
	mkdir TierPaxos/build
	cd TierPaxos/build
	cmake ..
	make


## Running the examples

	cd libpaxos/build
	./sample/replica 0 ../paxos.conf > /dev/null &
	./sample/replica 1 ../paxos.conf > /dev/null &
	./sample/replica 2 ../paxos.conf > /dev/null &
	./sample/replica 3 ../paxos.conf > /dev/null &
    ./sample/replica 4 ../paxos.conf > /dev/null &
    ./sample/replica 5 ../paxos.conf > /dev/null &
	./sample/replica 6 ../paxos.conf > /dev/null &
    ./sample/replica 7 ../paxos.conf > /dev/null &
    ./sample/replica 8 ../paxos.conf > /dev/null &
	./sample/client 127.0.0.1:5550 1

## Configuration

See ```paxos.conf``` for a sample configuration file.

A difference between this and LibPaxos configuration is the addition of:
* cluster_num
* cluster_size
* client_q_size


## License

LibPaxos3 is distributed under the terms of the 3-clause BSD license.
LibPaxos3 has been developed at the [University of Lugano][7],
by [Daniele Sciascia][8].

[1]: http://libpaxos.sourceforge.net
[7]: http://inf.usi.ch
[8]: http://atelier.inf.usi.ch/~sciascid

