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
include sample/CMakeFiles/proposer.dir/depend.make

# Include the progress variables for this target.
include sample/CMakeFiles/proposer.dir/progress.make

# Include the compile flags for this target's objects.
include sample/CMakeFiles/proposer.dir/flags.make

sample/CMakeFiles/proposer.dir/proposer.c.o: sample/CMakeFiles/proposer.dir/flags.make
sample/CMakeFiles/proposer.dir/proposer.c.o: ../sample/proposer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object sample/CMakeFiles/proposer.dir/proposer.c.o"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/sample && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/proposer.dir/proposer.c.o   -c /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/sample/proposer.c

sample/CMakeFiles/proposer.dir/proposer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/proposer.dir/proposer.c.i"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/sample && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/sample/proposer.c > CMakeFiles/proposer.dir/proposer.c.i

sample/CMakeFiles/proposer.dir/proposer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/proposer.dir/proposer.c.s"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/sample && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/sample/proposer.c -o CMakeFiles/proposer.dir/proposer.c.s

# Object files for target proposer
proposer_OBJECTS = \
"CMakeFiles/proposer.dir/proposer.c.o"

# External object files for target proposer
proposer_EXTERNAL_OBJECTS =

sample/proposer: sample/CMakeFiles/proposer.dir/proposer.c.o
sample/proposer: sample/CMakeFiles/proposer.dir/build.make
sample/proposer: evpaxos/libevpaxos.dylib
sample/proposer: paxos/libpaxos.a
sample/proposer: /usr/local/lib/liblmdb.dylib
sample/proposer: /usr/local/lib/libevent.dylib
sample/proposer: /usr/local/lib/libmsgpackc.dylib
sample/proposer: sample/CMakeFiles/proposer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable proposer"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/sample && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/proposer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sample/CMakeFiles/proposer.dir/build: sample/proposer

.PHONY : sample/CMakeFiles/proposer.dir/build

sample/CMakeFiles/proposer.dir/clean:
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/sample && $(CMAKE_COMMAND) -P CMakeFiles/proposer.dir/cmake_clean.cmake
.PHONY : sample/CMakeFiles/proposer.dir/clean

sample/CMakeFiles/proposer.dir/depend:
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/sample /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/sample /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/build/sample/CMakeFiles/proposer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sample/CMakeFiles/proposer.dir/depend

