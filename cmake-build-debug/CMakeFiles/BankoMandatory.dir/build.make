# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\liljd\CLionProjects\BankoMandatory

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\liljd\CLionProjects\BankoMandatory\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/BankoMandatory.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/BankoMandatory.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/BankoMandatory.dir/flags.make

CMakeFiles/BankoMandatory.dir/main.c.obj: CMakeFiles/BankoMandatory.dir/flags.make
CMakeFiles/BankoMandatory.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\liljd\CLionProjects\BankoMandatory\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/BankoMandatory.dir/main.c.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\BankoMandatory.dir\main.c.obj   -c C:\Users\liljd\CLionProjects\BankoMandatory\main.c

CMakeFiles/BankoMandatory.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/BankoMandatory.dir/main.c.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\liljd\CLionProjects\BankoMandatory\main.c > CMakeFiles\BankoMandatory.dir\main.c.i

CMakeFiles/BankoMandatory.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/BankoMandatory.dir/main.c.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\liljd\CLionProjects\BankoMandatory\main.c -o CMakeFiles\BankoMandatory.dir\main.c.s

CMakeFiles/BankoMandatory.dir/uniqueIntArrayGeneration.c.obj: CMakeFiles/BankoMandatory.dir/flags.make
CMakeFiles/BankoMandatory.dir/uniqueIntArrayGeneration.c.obj: ../uniqueIntArrayGeneration.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\liljd\CLionProjects\BankoMandatory\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/BankoMandatory.dir/uniqueIntArrayGeneration.c.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\BankoMandatory.dir\uniqueIntArrayGeneration.c.obj   -c C:\Users\liljd\CLionProjects\BankoMandatory\uniqueIntArrayGeneration.c

CMakeFiles/BankoMandatory.dir/uniqueIntArrayGeneration.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/BankoMandatory.dir/uniqueIntArrayGeneration.c.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\liljd\CLionProjects\BankoMandatory\uniqueIntArrayGeneration.c > CMakeFiles\BankoMandatory.dir\uniqueIntArrayGeneration.c.i

CMakeFiles/BankoMandatory.dir/uniqueIntArrayGeneration.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/BankoMandatory.dir/uniqueIntArrayGeneration.c.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\liljd\CLionProjects\BankoMandatory\uniqueIntArrayGeneration.c -o CMakeFiles\BankoMandatory.dir\uniqueIntArrayGeneration.c.s

# Object files for target BankoMandatory
BankoMandatory_OBJECTS = \
"CMakeFiles/BankoMandatory.dir/main.c.obj" \
"CMakeFiles/BankoMandatory.dir/uniqueIntArrayGeneration.c.obj"

# External object files for target BankoMandatory
BankoMandatory_EXTERNAL_OBJECTS =

BankoMandatory.exe: CMakeFiles/BankoMandatory.dir/main.c.obj
BankoMandatory.exe: CMakeFiles/BankoMandatory.dir/uniqueIntArrayGeneration.c.obj
BankoMandatory.exe: CMakeFiles/BankoMandatory.dir/build.make
BankoMandatory.exe: CMakeFiles/BankoMandatory.dir/linklibs.rsp
BankoMandatory.exe: CMakeFiles/BankoMandatory.dir/objects1.rsp
BankoMandatory.exe: CMakeFiles/BankoMandatory.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\liljd\CLionProjects\BankoMandatory\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable BankoMandatory.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\BankoMandatory.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/BankoMandatory.dir/build: BankoMandatory.exe

.PHONY : CMakeFiles/BankoMandatory.dir/build

CMakeFiles/BankoMandatory.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\BankoMandatory.dir\cmake_clean.cmake
.PHONY : CMakeFiles/BankoMandatory.dir/clean

CMakeFiles/BankoMandatory.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\liljd\CLionProjects\BankoMandatory C:\Users\liljd\CLionProjects\BankoMandatory C:\Users\liljd\CLionProjects\BankoMandatory\cmake-build-debug C:\Users\liljd\CLionProjects\BankoMandatory\cmake-build-debug C:\Users\liljd\CLionProjects\BankoMandatory\cmake-build-debug\CMakeFiles\BankoMandatory.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/BankoMandatory.dir/depend

