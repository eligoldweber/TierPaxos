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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/cmake-build-debug

# Include any dependencies generated for this target.
include sample/CMakeFiles/acceptor.dir/depend.make

# Include the progress variables for this target.
include sample/CMakeFiles/acceptor.dir/progress.make

# Include the compile flags for this target's objects.
include sample/CMakeFiles/acceptor.dir/flags.make

sample/CMakeFiles/acceptor.dir/acceptor.c.o: sample/CMakeFiles/acceptor.dir/flags.make
sample/CMakeFiles/acceptor.dir/acceptor.c.o: ../sample/acceptor.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object sample/CMakeFiles/acceptor.dir/acceptor.c.o"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/cmake-build-debug/sample && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/acceptor.dir/acceptor.c.o   -c /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/sample/acceptor.c

sample/CMakeFiles/acceptor.dir/acceptor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/acceptor.dir/acceptor.c.i"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/cmake-build-debug/sample && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/sample/acceptor.c > CMakeFiles/acceptor.dir/acceptor.c.i

sample/CMakeFiles/acceptor.dir/acceptor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/acceptor.dir/acceptor.c.s"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/cmake-build-debug/sample && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/sample/acceptor.c -o CMakeFiles/acceptor.dir/acceptor.c.s

# Object files for target acceptor
acceptor_OBJECTS = \
"CMakeFiles/acceptor.dir/acceptor.c.o"

# External object files for target acceptor
acceptor_EXTERNAL_OBJECTS =

sample/acceptor: sample/CMakeFiles/acceptor.dir/acceptor.c.o
sample/acceptor: sample/CMakeFiles/acceptor.dir/build.make
sample/acceptor: evpaxos/libevpaxos.dylib
sample/acceptor: paxos/libpaxos.a
sample/acceptor: /usr/local/lib/liblmdb.dylib
sample/acceptor: /usr/local/lib/libevent.dylib
sample/acceptor: /usr/local/lib/libmsgpackc.dylib
sample/acceptor: sample/CMakeFiles/acceptor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable acceptor"
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/cmake-build-debug/sample && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/acceptor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sample/CMakeFiles/acceptor.dir/build: sample/acceptor

.PHONY : sample/CMakeFiles/acceptor.dir/build

sample/CMakeFiles/acceptor.dir/clean:
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/cmake-build-debug/sample && $(CMAKE_COMMAND) -P CMakeFiles/acceptor.dir/cmake_clean.cmake
.PHONY : sample/CMakeFiles/acceptor.dir/clean

sample/CMakeFiles/acceptor.dir/depend:
	cd /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/sample /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/cmake-build-debug /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/cmake-build-debug/sample /Users/eligoldweber/Desktop/Michigan/School/1Fall2018/DistSystems/Research/libpaxos/cmake-build-debug/sample/CMakeFiles/acceptor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sample/CMakeFiles/acceptor.dir/depend

