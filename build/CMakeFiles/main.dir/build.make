# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.15.4/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.15.4/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/liuwch/dev/ar_vslam

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/liuwch/dev/ar_vslam/build

# Include any dependencies generated for this target.
include CMakeFiles/main.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/main.dir/flags.make

CMakeFiles/main.dir/examples/main.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/examples/main.cpp.o: ../examples/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/liuwch/dev/ar_vslam/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/main.dir/examples/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/examples/main.cpp.o -c /Users/liuwch/dev/ar_vslam/examples/main.cpp

CMakeFiles/main.dir/examples/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/examples/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/liuwch/dev/ar_vslam/examples/main.cpp > CMakeFiles/main.dir/examples/main.cpp.i

CMakeFiles/main.dir/examples/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/examples/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/liuwch/dev/ar_vslam/examples/main.cpp -o CMakeFiles/main.dir/examples/main.cpp.s

# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/examples/main.cpp.o"

# External object files for target main
main_EXTERNAL_OBJECTS =

main: CMakeFiles/main.dir/examples/main.cpp.o
main: CMakeFiles/main.dir/build.make
main: ../lib/libARVSlam.dylib
main: /usr/local/lib/libopencv_gapi.4.1.2.dylib
main: /usr/local/lib/libopencv_stitching.4.1.2.dylib
main: /usr/local/lib/libopencv_aruco.4.1.2.dylib
main: /usr/local/lib/libopencv_bgsegm.4.1.2.dylib
main: /usr/local/lib/libopencv_bioinspired.4.1.2.dylib
main: /usr/local/lib/libopencv_ccalib.4.1.2.dylib
main: /usr/local/lib/libopencv_dnn_objdetect.4.1.2.dylib
main: /usr/local/lib/libopencv_dpm.4.1.2.dylib
main: /usr/local/lib/libopencv_face.4.1.2.dylib
main: /usr/local/lib/libopencv_freetype.4.1.2.dylib
main: /usr/local/lib/libopencv_fuzzy.4.1.2.dylib
main: /usr/local/lib/libopencv_hfs.4.1.2.dylib
main: /usr/local/lib/libopencv_img_hash.4.1.2.dylib
main: /usr/local/lib/libopencv_line_descriptor.4.1.2.dylib
main: /usr/local/lib/libopencv_quality.4.1.2.dylib
main: /usr/local/lib/libopencv_reg.4.1.2.dylib
main: /usr/local/lib/libopencv_rgbd.4.1.2.dylib
main: /usr/local/lib/libopencv_saliency.4.1.2.dylib
main: /usr/local/lib/libopencv_sfm.4.1.2.dylib
main: /usr/local/lib/libopencv_stereo.4.1.2.dylib
main: /usr/local/lib/libopencv_structured_light.4.1.2.dylib
main: /usr/local/lib/libopencv_phase_unwrapping.4.1.2.dylib
main: /usr/local/lib/libopencv_superres.4.1.2.dylib
main: /usr/local/lib/libopencv_optflow.4.1.2.dylib
main: /usr/local/lib/libopencv_surface_matching.4.1.2.dylib
main: /usr/local/lib/libopencv_tracking.4.1.2.dylib
main: /usr/local/lib/libopencv_datasets.4.1.2.dylib
main: /usr/local/lib/libopencv_plot.4.1.2.dylib
main: /usr/local/lib/libopencv_text.4.1.2.dylib
main: /usr/local/lib/libopencv_dnn.4.1.2.dylib
main: /usr/local/lib/libopencv_highgui.4.1.2.dylib
main: /usr/local/lib/libopencv_videostab.4.1.2.dylib
main: /usr/local/lib/libopencv_video.4.1.2.dylib
main: /usr/local/lib/libopencv_videoio.4.1.2.dylib
main: /usr/local/lib/libopencv_xfeatures2d.4.1.2.dylib
main: /usr/local/lib/libopencv_ml.4.1.2.dylib
main: /usr/local/lib/libopencv_shape.4.1.2.dylib
main: /usr/local/lib/libopencv_ximgproc.4.1.2.dylib
main: /usr/local/lib/libopencv_xobjdetect.4.1.2.dylib
main: /usr/local/lib/libopencv_imgcodecs.4.1.2.dylib
main: /usr/local/lib/libopencv_objdetect.4.1.2.dylib
main: /usr/local/lib/libopencv_calib3d.4.1.2.dylib
main: /usr/local/lib/libopencv_features2d.4.1.2.dylib
main: /usr/local/lib/libopencv_flann.4.1.2.dylib
main: /usr/local/lib/libopencv_xphoto.4.1.2.dylib
main: /usr/local/lib/libopencv_photo.4.1.2.dylib
main: /usr/local/lib/libopencv_imgproc.4.1.2.dylib
main: /usr/local/lib/libopencv_core.4.1.2.dylib
main: CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/liuwch/dev/ar_vslam/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable main"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/main.dir/build: main

.PHONY : CMakeFiles/main.dir/build

CMakeFiles/main.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : CMakeFiles/main.dir/clean

CMakeFiles/main.dir/depend:
	cd /Users/liuwch/dev/ar_vslam/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/liuwch/dev/ar_vslam /Users/liuwch/dev/ar_vslam /Users/liuwch/dev/ar_vslam/build /Users/liuwch/dev/ar_vslam/build /Users/liuwch/dev/ar_vslam/build/CMakeFiles/main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/main.dir/depend

