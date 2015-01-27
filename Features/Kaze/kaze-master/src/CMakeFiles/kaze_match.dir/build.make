# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nautec/FeatureDetectorsTest/Features/Kaze/kaze-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nautec/FeatureDetectorsTest/Features/Kaze/kaze-master

# Include any dependencies generated for this target.
include src/CMakeFiles/kaze_match.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/kaze_match.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/kaze_match.dir/flags.make

src/CMakeFiles/kaze_match.dir/kaze_match.cpp.o: src/CMakeFiles/kaze_match.dir/flags.make
src/CMakeFiles/kaze_match.dir/kaze_match.cpp.o: src/kaze_match.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/nautec/FeatureDetectorsTest/Features/Kaze/kaze-master/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/kaze_match.dir/kaze_match.cpp.o"
	cd /home/nautec/FeatureDetectorsTest/Features/Kaze/kaze-master/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/kaze_match.dir/kaze_match.cpp.o -c /home/nautec/FeatureDetectorsTest/Features/Kaze/kaze-master/src/kaze_match.cpp

src/CMakeFiles/kaze_match.dir/kaze_match.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kaze_match.dir/kaze_match.cpp.i"
	cd /home/nautec/FeatureDetectorsTest/Features/Kaze/kaze-master/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/nautec/FeatureDetectorsTest/Features/Kaze/kaze-master/src/kaze_match.cpp > CMakeFiles/kaze_match.dir/kaze_match.cpp.i

src/CMakeFiles/kaze_match.dir/kaze_match.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kaze_match.dir/kaze_match.cpp.s"
	cd /home/nautec/FeatureDetectorsTest/Features/Kaze/kaze-master/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/nautec/FeatureDetectorsTest/Features/Kaze/kaze-master/src/kaze_match.cpp -o CMakeFiles/kaze_match.dir/kaze_match.cpp.s

src/CMakeFiles/kaze_match.dir/kaze_match.cpp.o.requires:
.PHONY : src/CMakeFiles/kaze_match.dir/kaze_match.cpp.o.requires

src/CMakeFiles/kaze_match.dir/kaze_match.cpp.o.provides: src/CMakeFiles/kaze_match.dir/kaze_match.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/kaze_match.dir/build.make src/CMakeFiles/kaze_match.dir/kaze_match.cpp.o.provides.build
.PHONY : src/CMakeFiles/kaze_match.dir/kaze_match.cpp.o.provides

src/CMakeFiles/kaze_match.dir/kaze_match.cpp.o.provides.build: src/CMakeFiles/kaze_match.dir/kaze_match.cpp.o

# Object files for target kaze_match
kaze_match_OBJECTS = \
"CMakeFiles/kaze_match.dir/kaze_match.cpp.o"

# External object files for target kaze_match
kaze_match_EXTERNAL_OBJECTS =

bin/kaze_match: src/CMakeFiles/kaze_match.dir/kaze_match.cpp.o
bin/kaze_match: src/CMakeFiles/kaze_match.dir/build.make
bin/kaze_match: lib/libKAZE.a
bin/kaze_match: /usr/local/lib/libopencv_videostab.so.2.4.9
bin/kaze_match: /usr/local/lib/libopencv_ts.a
bin/kaze_match: /usr/local/lib/libopencv_superres.so.2.4.9
bin/kaze_match: /usr/local/lib/libopencv_stitching.so.2.4.9
bin/kaze_match: /usr/local/lib/libopencv_contrib.so.2.4.9
bin/kaze_match: /usr/local/lib/libopencv_nonfree.so.2.4.9
bin/kaze_match: /usr/local/lib/libopencv_ocl.so.2.4.9
bin/kaze_match: /usr/local/lib/libopencv_gpu.so.2.4.9
bin/kaze_match: /usr/local/lib/libopencv_photo.so.2.4.9
bin/kaze_match: /usr/local/lib/libopencv_objdetect.so.2.4.9
bin/kaze_match: /usr/local/lib/libopencv_legacy.so.2.4.9
bin/kaze_match: /usr/local/lib/libopencv_video.so.2.4.9
bin/kaze_match: /usr/local/lib/libopencv_ml.so.2.4.9
bin/kaze_match: /usr/local/lib/libopencv_calib3d.so.2.4.9
bin/kaze_match: /usr/local/lib/libopencv_features2d.so.2.4.9
bin/kaze_match: /usr/local/lib/libopencv_highgui.so.2.4.9
bin/kaze_match: /usr/local/lib/libopencv_imgproc.so.2.4.9
bin/kaze_match: /usr/local/lib/libopencv_flann.so.2.4.9
bin/kaze_match: /usr/local/lib/libopencv_core.so.2.4.9
bin/kaze_match: src/CMakeFiles/kaze_match.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/kaze_match"
	cd /home/nautec/FeatureDetectorsTest/Features/Kaze/kaze-master/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kaze_match.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/kaze_match.dir/build: bin/kaze_match
.PHONY : src/CMakeFiles/kaze_match.dir/build

src/CMakeFiles/kaze_match.dir/requires: src/CMakeFiles/kaze_match.dir/kaze_match.cpp.o.requires
.PHONY : src/CMakeFiles/kaze_match.dir/requires

src/CMakeFiles/kaze_match.dir/clean:
	cd /home/nautec/FeatureDetectorsTest/Features/Kaze/kaze-master/src && $(CMAKE_COMMAND) -P CMakeFiles/kaze_match.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/kaze_match.dir/clean

src/CMakeFiles/kaze_match.dir/depend:
	cd /home/nautec/FeatureDetectorsTest/Features/Kaze/kaze-master && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nautec/FeatureDetectorsTest/Features/Kaze/kaze-master /home/nautec/FeatureDetectorsTest/Features/Kaze/kaze-master/src /home/nautec/FeatureDetectorsTest/Features/Kaze/kaze-master /home/nautec/FeatureDetectorsTest/Features/Kaze/kaze-master/src /home/nautec/FeatureDetectorsTest/Features/Kaze/kaze-master/src/CMakeFiles/kaze_match.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/kaze_match.dir/depend

