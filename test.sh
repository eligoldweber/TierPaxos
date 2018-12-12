#!/usr/bin/env bash

VG=""
BUILD="build"
CONFIG="paxos.conf"
OPT="--verbose"
tmux_test ()  {
tmux new-session -d -s paxos
tmux new-window -t paxos
for (( i = 0; i < 4; i++ )); do
		tmux split
		tmux select-layout tile
	done
tmux send-keys -t 0 "$VG ./$BUILD/sample/replica 0 $CONFIG $OPT" C-m
tmux send-keys -t 1 "$VG ./$BUILD/sample/replica 1 $CONFIG $OPT" C-m
tmux send-keys -t 2 "$VG ./$BUILD/sample/replica 2 $CONFIG $OPT" C-m

#tmux send-keys -t 4 "./$BUILD/sample/client $CONFIG" C-m

tmux attach-session -t paxos
tmux kill-session -t paxos
}

usage () {
	echo "$0 [--help] [--build-dir dir] [--config-file] [--valgrind]
	[--silence-replica]"
	exit 1
}

while [[ $# > 0 ]]; do
	key="$1"
	case $key in
		-b|--build-dir)
		DIR=$2
		shift
		;;
		-c|--config)
		CONFIG=$2
		shift
		;;
		-h|--help)
		usage
		;;
		-s|--silence-replica)
		OPT=""
		;;
		-v|--valgrind)
		VG="valgrind "
		;;
		*)
		usage
		;;
	esac
	shift
done

tmux_test