# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.12.4/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.12.4/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build

# Include any dependencies generated for this target.
include unit/CMakeFiles/runtest.dir/depend.make

# Include the progress variables for this target.
include unit/CMakeFiles/runtest.dir/progress.make

# Include the compile flags for this target's objects.
include unit/CMakeFiles/runtest.dir/flags.make

unit/CMakeFiles/runtest.dir/runtest.cc.o: unit/CMakeFiles/runtest.dir/flags.make
unit/CMakeFiles/runtest.dir/runtest.cc.o: ../unit/runtest.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object unit/CMakeFiles/runtest.dir/runtest.cc.o"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/unit && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/runtest.dir/runtest.cc.o -c /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/unit/runtest.cc

unit/CMakeFiles/runtest.dir/runtest.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runtest.dir/runtest.cc.i"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/unit && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/unit/runtest.cc > CMakeFiles/runtest.dir/runtest.cc.i

unit/CMakeFiles/runtest.dir/runtest.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runtest.dir/runtest.cc.s"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/unit && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/unit/runtest.cc -o CMakeFiles/runtest.dir/runtest.cc.s

unit/CMakeFiles/runtest.dir/replica_thread.c.o: unit/CMakeFiles/runtest.dir/flags.make
unit/CMakeFiles/runtest.dir/replica_thread.c.o: ../unit/replica_thread.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object unit/CMakeFiles/runtest.dir/replica_thread.c.o"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/unit && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/runtest.dir/replica_thread.c.o   -c /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/unit/replica_thread.c

unit/CMakeFiles/runtest.dir/replica_thread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/runtest.dir/replica_thread.c.i"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/unit && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/unit/replica_thread.c > CMakeFiles/runtest.dir/replica_thread.c.i

unit/CMakeFiles/runtest.dir/replica_thread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/runtest.dir/replica_thread.c.s"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/unit && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/unit/replica_thread.c -o CMakeFiles/runtest.dir/replica_thread.c.s

unit/CMakeFiles/runtest.dir/test_client.c.o: unit/CMakeFiles/runtest.dir/flags.make
unit/CMakeFiles/runtest.dir/test_client.c.o: ../unit/test_client.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object unit/CMakeFiles/runtest.dir/test_client.c.o"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/unit && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/runtest.dir/test_client.c.o   -c /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/unit/test_client.c

unit/CMakeFiles/runtest.dir/test_client.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/runtest.dir/test_client.c.i"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/unit && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/unit/test_client.c > CMakeFiles/runtest.dir/test_client.c.i

unit/CMakeFiles/runtest.dir/test_client.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/runtest.dir/test_client.c.s"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/unit && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/unit/test_client.c -o CMakeFiles/runtest.dir/test_client.c.s

unit/CMakeFiles/runtest.dir/acceptor_unittest.cc.o: unit/CMakeFiles/runtest.dir/flags.make
unit/CMakeFiles/runtest.dir/acceptor_unittest.cc.o: ../unit/acceptor_unittest.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object unit/CMakeFiles/runtest.dir/acceptor_unittest.cc.o"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/unit && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/runtest.dir/acceptor_unittest.cc.o -c /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/unit/acceptor_unittest.cc

unit/CMakeFiles/runtest.dir/acceptor_unittest.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runtest.dir/acceptor_unittest.cc.i"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/unit && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/unit/acceptor_unittest.cc > CMakeFiles/runtest.dir/acceptor_unittest.cc.i

unit/CMakeFiles/runtest.dir/acceptor_unittest.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runtest.dir/acceptor_unittest.cc.s"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/unit && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/unit/acceptor_unittest.cc -o CMakeFiles/runtest.dir/acceptor_unittest.cc.s

unit/CMakeFiles/runtest.dir/learner_unittest.cc.o: unit/CMakeFiles/runtest.dir/flags.make
unit/CMakeFiles/runtest.dir/learner_unittest.cc.o: ../unit/learner_unittest.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object unit/CMakeFiles/runtest.dir/learner_unittest.cc.o"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/unit && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/runtest.dir/learner_unittest.cc.o -c /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/unit/learner_unittest.cc

unit/CMakeFiles/runtest.dir/learner_unittest.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runtest.dir/learner_unittest.cc.i"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/unit && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/unit/learner_unittest.cc > CMakeFiles/runtest.dir/learner_unittest.cc.i

unit/CMakeFiles/runtest.dir/learner_unittest.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runtest.dir/learner_unittest.cc.s"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/unit && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/unit/learner_unittest.cc -o CMakeFiles/runtest.dir/learner_unittest.cc.s

unit/CMakeFiles/runtest.dir/proposer_unittest.cc.o: unit/CMakeFiles/runtest.dir/flags.make
unit/CMakeFiles/runtest.dir/proposer_unittest.cc.o: ../unit/proposer_unittest.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object unit/CMakeFiles/runtest.dir/proposer_unittest.cc.o"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/unit && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/runtest.dir/proposer_unittest.cc.o -c /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/unit/proposer_unittest.cc

unit/CMakeFiles/runtest.dir/proposer_unittest.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runtest.dir/proposer_unittest.cc.i"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/unit && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/unit/proposer_unittest.cc > CMakeFiles/runtest.dir/proposer_unittest.cc.i

unit/CMakeFiles/runtest.dir/proposer_unittest.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runtest.dir/proposer_unittest.cc.s"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/unit && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/unit/proposer_unittest.cc -o CMakeFiles/runtest.dir/proposer_unittest.cc.s

unit/CMakeFiles/runtest.dir/config_unittest.cc.o: unit/CMakeFiles/runtest.dir/flags.make
unit/CMakeFiles/runtest.dir/config_unittest.cc.o: ../unit/config_unittest.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object unit/CMakeFiles/runtest.dir/config_unittest.cc.o"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/unit && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/runtest.dir/config_unittest.cc.o -c /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/unit/config_unittest.cc

unit/CMakeFiles/runtest.dir/config_unittest.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runtest.dir/config_unittest.cc.i"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/unit && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/unit/config_unittest.cc > CMakeFiles/runtest.dir/config_unittest.cc.i

unit/CMakeFiles/runtest.dir/config_unittest.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runtest.dir/config_unittest.cc.s"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/unit && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/unit/config_unittest.cc -o CMakeFiles/runtest.dir/config_unittest.cc.s

unit/CMakeFiles/runtest.dir/storage_unittest.cc.o: unit/CMakeFiles/runtest.dir/flags.make
unit/CMakeFiles/runtest.dir/storage_unittest.cc.o: ../unit/storage_unittest.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object unit/CMakeFiles/runtest.dir/storage_unittest.cc.o"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/unit && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/runtest.dir/storage_unittest.cc.o -c /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/unit/storage_unittest.cc

unit/CMakeFiles/runtest.dir/storage_unittest.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runtest.dir/storage_unittest.cc.i"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/unit && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/unit/storage_unittest.cc > CMakeFiles/runtest.dir/storage_unittest.cc.i

unit/CMakeFiles/runtest.dir/storage_unittest.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runtest.dir/storage_unittest.cc.s"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/unit && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/unit/storage_unittest.cc -o CMakeFiles/runtest.dir/storage_unittest.cc.s

unit/CMakeFiles/runtest.dir/replica_unittest.cc.o: unit/CMakeFiles/runtest.dir/flags.make
unit/CMakeFiles/runtest.dir/replica_unittest.cc.o: ../unit/replica_unittest.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object unit/CMakeFiles/runtest.dir/replica_unittest.cc.o"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/unit && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/runtest.dir/replica_unittest.cc.o -c /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/unit/replica_unittest.cc

unit/CMakeFiles/runtest.dir/replica_unittest.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runtest.dir/replica_unittest.cc.i"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/unit && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/unit/replica_unittest.cc > CMakeFiles/runtest.dir/replica_unittest.cc.i

unit/CMakeFiles/runtest.dir/replica_unittest.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runtest.dir/replica_unittest.cc.s"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/unit && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/unit/replica_unittest.cc -o CMakeFiles/runtest.dir/replica_unittest.cc.s

# Object files for target runtest
runtest_OBJECTS = \
"CMakeFiles/runtest.dir/runtest.cc.o" \
"CMakeFiles/runtest.dir/replica_thread.c.o" \
"CMakeFiles/runtest.dir/test_client.c.o" \
"CMakeFiles/runtest.dir/acceptor_unittest.cc.o" \
"CMakeFiles/runtest.dir/learner_unittest.cc.o" \
"CMakeFiles/runtest.dir/proposer_unittest.cc.o" \
"CMakeFiles/runtest.dir/config_unittest.cc.o" \
"CMakeFiles/runtest.dir/storage_unittest.cc.o" \
"CMakeFiles/runtest.dir/replica_unittest.cc.o"

# External object files for target runtest
runtest_EXTERNAL_OBJECTS =

unit/runtest: unit/CMakeFiles/runtest.dir/runtest.cc.o
unit/runtest: unit/CMakeFiles/runtest.dir/replica_thread.c.o
unit/runtest: unit/CMakeFiles/runtest.dir/test_client.c.o
unit/runtest: unit/CMakeFiles/runtest.dir/acceptor_unittest.cc.o
unit/runtest: unit/CMakeFiles/runtest.dir/learner_unittest.cc.o
unit/runtest: unit/CMakeFiles/runtest.dir/proposer_unittest.cc.o
unit/runtest: unit/CMakeFiles/runtest.dir/config_unittest.cc.o
unit/runtest: unit/CMakeFiles/runtest.dir/storage_unittest.cc.o
unit/runtest: unit/CMakeFiles/runtest.dir/replica_unittest.cc.o
unit/runtest: unit/CMakeFiles/runtest.dir/build.make
unit/runtest: evpaxos/libevpaxos.dylib
unit/runtest: unit/gtest/libgtest-all.a
unit/runtest: paxos/libpaxos.a
unit/runtest: /usr/local/lib/liblmdb.dylib
unit/runtest: /usr/local/lib/libevent.dylib
unit/runtest: /usr/local/lib/libmsgpackc.dylib
unit/runtest: unit/CMakeFiles/runtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable runtest"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/unit && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/runtest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unit/CMakeFiles/runtest.dir/build: unit/runtest

.PHONY : unit/CMakeFiles/runtest.dir/build

unit/CMakeFiles/runtest.dir/clean:
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/unit && $(CMAKE_COMMAND) -P CMakeFiles/runtest.dir/cmake_clean.cmake
.PHONY : unit/CMakeFiles/runtest.dir/clean

unit/CMakeFiles/runtest.dir/depend:
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/unit /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/unit /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/unit/CMakeFiles/runtest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unit/CMakeFiles/runtest.dir/depend

