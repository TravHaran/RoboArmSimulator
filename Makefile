# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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

# Produce verbose output by default.
VERBOSE = 1

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.24.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.24.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/trav/Documents/TeslaRoboticsPrep/RoboArm

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/trav/Documents/TeslaRoboticsPrep/RoboArm

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/local/Cellar/cmake/3.16.2/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/local/Cellar/cmake/3.24.1/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/trav/Documents/TeslaRoboticsPrep/RoboArm/CMakeFiles /Users/trav/Documents/TeslaRoboticsPrep/RoboArm//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/trav/Documents/TeslaRoboticsPrep/RoboArm/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named ImGuizmo

# Build rule for target.
ImGuizmo: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 ImGuizmo
.PHONY : ImGuizmo

# fast build rule for target.
ImGuizmo/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ImGuizmo.dir/build.make CMakeFiles/ImGuizmo.dir/build
.PHONY : ImGuizmo/fast

#=============================================================================
# Target rules for targets named roboArm

# Build rule for target.
roboArm: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 roboArm
.PHONY : roboArm

# fast build rule for target.
roboArm/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/build
.PHONY : roboArm/fast

include/ImGuizmo/ImGuizmo.o: include/ImGuizmo/ImGuizmo.cpp.o
.PHONY : include/ImGuizmo/ImGuizmo.o

# target to build an object file
include/ImGuizmo/ImGuizmo.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ImGuizmo.dir/build.make CMakeFiles/ImGuizmo.dir/include/ImGuizmo/ImGuizmo.cpp.o
.PHONY : include/ImGuizmo/ImGuizmo.cpp.o

include/ImGuizmo/ImGuizmo.i: include/ImGuizmo/ImGuizmo.cpp.i
.PHONY : include/ImGuizmo/ImGuizmo.i

# target to preprocess a source file
include/ImGuizmo/ImGuizmo.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ImGuizmo.dir/build.make CMakeFiles/ImGuizmo.dir/include/ImGuizmo/ImGuizmo.cpp.i
.PHONY : include/ImGuizmo/ImGuizmo.cpp.i

include/ImGuizmo/ImGuizmo.s: include/ImGuizmo/ImGuizmo.cpp.s
.PHONY : include/ImGuizmo/ImGuizmo.s

# target to generate assembly for a file
include/ImGuizmo/ImGuizmo.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ImGuizmo.dir/build.make CMakeFiles/ImGuizmo.dir/include/ImGuizmo/ImGuizmo.cpp.s
.PHONY : include/ImGuizmo/ImGuizmo.cpp.s

src/Main.o: src/Main.cpp.o
.PHONY : src/Main.o

# target to build an object file
src/Main.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/Main.cpp.o
.PHONY : src/Main.cpp.o

src/Main.i: src/Main.cpp.i
.PHONY : src/Main.i

# target to preprocess a source file
src/Main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/Main.cpp.i
.PHONY : src/Main.cpp.i

src/Main.s: src/Main.cpp.s
.PHONY : src/Main.s

# target to generate assembly for a file
src/Main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/Main.cpp.s
.PHONY : src/Main.cpp.s

src/core/Application.o: src/core/Application.cpp.o
.PHONY : src/core/Application.o

# target to build an object file
src/core/Application.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/core/Application.cpp.o
.PHONY : src/core/Application.cpp.o

src/core/Application.i: src/core/Application.cpp.i
.PHONY : src/core/Application.i

# target to preprocess a source file
src/core/Application.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/core/Application.cpp.i
.PHONY : src/core/Application.cpp.i

src/core/Application.s: src/core/Application.cpp.s
.PHONY : src/core/Application.s

# target to generate assembly for a file
src/core/Application.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/core/Application.cpp.s
.PHONY : src/core/Application.cpp.s

src/core/DhParam.o: src/core/DhParam.cpp.o
.PHONY : src/core/DhParam.o

# target to build an object file
src/core/DhParam.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/core/DhParam.cpp.o
.PHONY : src/core/DhParam.cpp.o

src/core/DhParam.i: src/core/DhParam.cpp.i
.PHONY : src/core/DhParam.i

# target to preprocess a source file
src/core/DhParam.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/core/DhParam.cpp.i
.PHONY : src/core/DhParam.cpp.i

src/core/DhParam.s: src/core/DhParam.cpp.s
.PHONY : src/core/DhParam.s

# target to generate assembly for a file
src/core/DhParam.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/core/DhParam.cpp.s
.PHONY : src/core/DhParam.cpp.s

src/core/InverseKinematics.o: src/core/InverseKinematics.cpp.o
.PHONY : src/core/InverseKinematics.o

# target to build an object file
src/core/InverseKinematics.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/core/InverseKinematics.cpp.o
.PHONY : src/core/InverseKinematics.cpp.o

src/core/InverseKinematics.i: src/core/InverseKinematics.cpp.i
.PHONY : src/core/InverseKinematics.i

# target to preprocess a source file
src/core/InverseKinematics.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/core/InverseKinematics.cpp.i
.PHONY : src/core/InverseKinematics.cpp.i

src/core/InverseKinematics.s: src/core/InverseKinematics.cpp.s
.PHONY : src/core/InverseKinematics.s

# target to generate assembly for a file
src/core/InverseKinematics.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/core/InverseKinematics.cpp.s
.PHONY : src/core/InverseKinematics.cpp.s

src/core/JointLink.o: src/core/JointLink.cpp.o
.PHONY : src/core/JointLink.o

# target to build an object file
src/core/JointLink.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/core/JointLink.cpp.o
.PHONY : src/core/JointLink.cpp.o

src/core/JointLink.i: src/core/JointLink.cpp.i
.PHONY : src/core/JointLink.i

# target to preprocess a source file
src/core/JointLink.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/core/JointLink.cpp.i
.PHONY : src/core/JointLink.cpp.i

src/core/JointLink.s: src/core/JointLink.cpp.s
.PHONY : src/core/JointLink.s

# target to generate assembly for a file
src/core/JointLink.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/core/JointLink.cpp.s
.PHONY : src/core/JointLink.cpp.s

src/core/PidController.o: src/core/PidController.cpp.o
.PHONY : src/core/PidController.o

# target to build an object file
src/core/PidController.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/core/PidController.cpp.o
.PHONY : src/core/PidController.cpp.o

src/core/PidController.i: src/core/PidController.cpp.i
.PHONY : src/core/PidController.i

# target to preprocess a source file
src/core/PidController.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/core/PidController.cpp.i
.PHONY : src/core/PidController.cpp.i

src/core/PidController.s: src/core/PidController.cpp.s
.PHONY : src/core/PidController.s

# target to generate assembly for a file
src/core/PidController.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/core/PidController.cpp.s
.PHONY : src/core/PidController.cpp.s

src/core/Robot.o: src/core/Robot.cpp.o
.PHONY : src/core/Robot.o

# target to build an object file
src/core/Robot.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/core/Robot.cpp.o
.PHONY : src/core/Robot.cpp.o

src/core/Robot.i: src/core/Robot.cpp.i
.PHONY : src/core/Robot.i

# target to preprocess a source file
src/core/Robot.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/core/Robot.cpp.i
.PHONY : src/core/Robot.cpp.i

src/core/Robot.s: src/core/Robot.cpp.s
.PHONY : src/core/Robot.s

# target to generate assembly for a file
src/core/Robot.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/core/Robot.cpp.s
.PHONY : src/core/Robot.cpp.s

src/meshes/BoxMesh.o: src/meshes/BoxMesh.cpp.o
.PHONY : src/meshes/BoxMesh.o

# target to build an object file
src/meshes/BoxMesh.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/meshes/BoxMesh.cpp.o
.PHONY : src/meshes/BoxMesh.cpp.o

src/meshes/BoxMesh.i: src/meshes/BoxMesh.cpp.i
.PHONY : src/meshes/BoxMesh.i

# target to preprocess a source file
src/meshes/BoxMesh.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/meshes/BoxMesh.cpp.i
.PHONY : src/meshes/BoxMesh.cpp.i

src/meshes/BoxMesh.s: src/meshes/BoxMesh.cpp.s
.PHONY : src/meshes/BoxMesh.s

# target to generate assembly for a file
src/meshes/BoxMesh.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/meshes/BoxMesh.cpp.s
.PHONY : src/meshes/BoxMesh.cpp.s

src/meshes/CylinderMesh.o: src/meshes/CylinderMesh.cpp.o
.PHONY : src/meshes/CylinderMesh.o

# target to build an object file
src/meshes/CylinderMesh.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/meshes/CylinderMesh.cpp.o
.PHONY : src/meshes/CylinderMesh.cpp.o

src/meshes/CylinderMesh.i: src/meshes/CylinderMesh.cpp.i
.PHONY : src/meshes/CylinderMesh.i

# target to preprocess a source file
src/meshes/CylinderMesh.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/meshes/CylinderMesh.cpp.i
.PHONY : src/meshes/CylinderMesh.cpp.i

src/meshes/CylinderMesh.s: src/meshes/CylinderMesh.cpp.s
.PHONY : src/meshes/CylinderMesh.s

# target to generate assembly for a file
src/meshes/CylinderMesh.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/meshes/CylinderMesh.cpp.s
.PHONY : src/meshes/CylinderMesh.cpp.s

src/meshes/JointLinkMesh.o: src/meshes/JointLinkMesh.cpp.o
.PHONY : src/meshes/JointLinkMesh.o

# target to build an object file
src/meshes/JointLinkMesh.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/meshes/JointLinkMesh.cpp.o
.PHONY : src/meshes/JointLinkMesh.cpp.o

src/meshes/JointLinkMesh.i: src/meshes/JointLinkMesh.cpp.i
.PHONY : src/meshes/JointLinkMesh.i

# target to preprocess a source file
src/meshes/JointLinkMesh.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/meshes/JointLinkMesh.cpp.i
.PHONY : src/meshes/JointLinkMesh.cpp.i

src/meshes/JointLinkMesh.s: src/meshes/JointLinkMesh.cpp.s
.PHONY : src/meshes/JointLinkMesh.s

# target to generate assembly for a file
src/meshes/JointLinkMesh.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/meshes/JointLinkMesh.cpp.s
.PHONY : src/meshes/JointLinkMesh.cpp.s

src/meshes/Mesh.o: src/meshes/Mesh.cpp.o
.PHONY : src/meshes/Mesh.o

# target to build an object file
src/meshes/Mesh.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/meshes/Mesh.cpp.o
.PHONY : src/meshes/Mesh.cpp.o

src/meshes/Mesh.i: src/meshes/Mesh.cpp.i
.PHONY : src/meshes/Mesh.i

# target to preprocess a source file
src/meshes/Mesh.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/meshes/Mesh.cpp.i
.PHONY : src/meshes/Mesh.cpp.i

src/meshes/Mesh.s: src/meshes/Mesh.cpp.s
.PHONY : src/meshes/Mesh.s

# target to generate assembly for a file
src/meshes/Mesh.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/meshes/Mesh.cpp.s
.PHONY : src/meshes/Mesh.cpp.s

src/meshes/SphereMesh.o: src/meshes/SphereMesh.cpp.o
.PHONY : src/meshes/SphereMesh.o

# target to build an object file
src/meshes/SphereMesh.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/meshes/SphereMesh.cpp.o
.PHONY : src/meshes/SphereMesh.cpp.o

src/meshes/SphereMesh.i: src/meshes/SphereMesh.cpp.i
.PHONY : src/meshes/SphereMesh.i

# target to preprocess a source file
src/meshes/SphereMesh.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/meshes/SphereMesh.cpp.i
.PHONY : src/meshes/SphereMesh.cpp.i

src/meshes/SphereMesh.s: src/meshes/SphereMesh.cpp.s
.PHONY : src/meshes/SphereMesh.s

# target to generate assembly for a file
src/meshes/SphereMesh.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/meshes/SphereMesh.cpp.s
.PHONY : src/meshes/SphereMesh.cpp.s

src/rendering/Camera.o: src/rendering/Camera.cpp.o
.PHONY : src/rendering/Camera.o

# target to build an object file
src/rendering/Camera.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/rendering/Camera.cpp.o
.PHONY : src/rendering/Camera.cpp.o

src/rendering/Camera.i: src/rendering/Camera.cpp.i
.PHONY : src/rendering/Camera.i

# target to preprocess a source file
src/rendering/Camera.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/rendering/Camera.cpp.i
.PHONY : src/rendering/Camera.cpp.i

src/rendering/Camera.s: src/rendering/Camera.cpp.s
.PHONY : src/rendering/Camera.s

# target to generate assembly for a file
src/rendering/Camera.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/roboArm.dir/build.make CMakeFiles/roboArm.dir/src/rendering/Camera.cpp.s
.PHONY : src/rendering/Camera.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... ImGuizmo"
	@echo "... roboArm"
	@echo "... include/ImGuizmo/ImGuizmo.o"
	@echo "... include/ImGuizmo/ImGuizmo.i"
	@echo "... include/ImGuizmo/ImGuizmo.s"
	@echo "... src/Main.o"
	@echo "... src/Main.i"
	@echo "... src/Main.s"
	@echo "... src/core/Application.o"
	@echo "... src/core/Application.i"
	@echo "... src/core/Application.s"
	@echo "... src/core/DhParam.o"
	@echo "... src/core/DhParam.i"
	@echo "... src/core/DhParam.s"
	@echo "... src/core/InverseKinematics.o"
	@echo "... src/core/InverseKinematics.i"
	@echo "... src/core/InverseKinematics.s"
	@echo "... src/core/JointLink.o"
	@echo "... src/core/JointLink.i"
	@echo "... src/core/JointLink.s"
	@echo "... src/core/PidController.o"
	@echo "... src/core/PidController.i"
	@echo "... src/core/PidController.s"
	@echo "... src/core/Robot.o"
	@echo "... src/core/Robot.i"
	@echo "... src/core/Robot.s"
	@echo "... src/meshes/BoxMesh.o"
	@echo "... src/meshes/BoxMesh.i"
	@echo "... src/meshes/BoxMesh.s"
	@echo "... src/meshes/CylinderMesh.o"
	@echo "... src/meshes/CylinderMesh.i"
	@echo "... src/meshes/CylinderMesh.s"
	@echo "... src/meshes/JointLinkMesh.o"
	@echo "... src/meshes/JointLinkMesh.i"
	@echo "... src/meshes/JointLinkMesh.s"
	@echo "... src/meshes/Mesh.o"
	@echo "... src/meshes/Mesh.i"
	@echo "... src/meshes/Mesh.s"
	@echo "... src/meshes/SphereMesh.o"
	@echo "... src/meshes/SphereMesh.i"
	@echo "... src/meshes/SphereMesh.s"
	@echo "... src/rendering/Camera.o"
	@echo "... src/rendering/Camera.i"
	@echo "... src/rendering/Camera.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
