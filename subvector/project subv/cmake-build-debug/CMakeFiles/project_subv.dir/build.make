# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\CLion 2021.2.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\CLion 2021.2.3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "D:\project subv"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "D:\project subv\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/project_subv.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/project_subv.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/project_subv.dir/flags.make

CMakeFiles/project_subv.dir/subvector_profiler.cpp.obj: CMakeFiles/project_subv.dir/flags.make
CMakeFiles/project_subv.dir/subvector_profiler.cpp.obj: ../subvector_profiler.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\project subv\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/project_subv.dir/subvector_profiler.cpp.obj"
	D:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\project_subv.dir\subvector_profiler.cpp.obj -c "D:\project subv\subvector_profiler.cpp"

CMakeFiles/project_subv.dir/subvector_profiler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/project_subv.dir/subvector_profiler.cpp.i"
	D:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\project subv\subvector_profiler.cpp" > CMakeFiles\project_subv.dir\subvector_profiler.cpp.i

CMakeFiles/project_subv.dir/subvector_profiler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/project_subv.dir/subvector_profiler.cpp.s"
	D:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\project subv\subvector_profiler.cpp" -o CMakeFiles\project_subv.dir\subvector_profiler.cpp.s

# Object files for target project_subv
project_subv_OBJECTS = \
"CMakeFiles/project_subv.dir/subvector_profiler.cpp.obj"

# External object files for target project_subv
project_subv_EXTERNAL_OBJECTS =

project_subv.exe: CMakeFiles/project_subv.dir/subvector_profiler.cpp.obj
project_subv.exe: CMakeFiles/project_subv.dir/build.make
project_subv.exe: CMakeFiles/project_subv.dir/linklibs.rsp
project_subv.exe: CMakeFiles/project_subv.dir/objects1.rsp
project_subv.exe: CMakeFiles/project_subv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\project subv\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable project_subv.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\project_subv.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/project_subv.dir/build: project_subv.exe
.PHONY : CMakeFiles/project_subv.dir/build

CMakeFiles/project_subv.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\project_subv.dir\cmake_clean.cmake
.PHONY : CMakeFiles/project_subv.dir/clean

CMakeFiles/project_subv.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\project subv" "D:\project subv" "D:\project subv\cmake-build-debug" "D:\project subv\cmake-build-debug" "D:\project subv\cmake-build-debug\CMakeFiles\project_subv.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/project_subv.dir/depend

