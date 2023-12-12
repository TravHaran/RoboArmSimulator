cmake_minimum_required(VERSION 3.24)
if(DEFINED ENV{VCPKG_ROOT})
    set(DCMAKE_TOOLCHAIN_FILE $ENV{VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake CACHE STRING "")
endif()
project(
    roboArm
    VERSION 1.0
    LANGUAGES CXX
)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_PREFIX_PATH $ENV{VCPKG_ROOT}/installed/x64-osx/share/imgui)

## Find dependencies
find_package(OpenGL REQUIRED)
find_package(glfw3 REQUIRED)
find_package(imgui REQUIRED)
find_package(GLEW REQUIRED)
find_package(Eigen3 3.3 REQUIRED NO_MODULE)

set(SOURCES
    src/core/Application.cpp 
    src/core/DhParam.cpp 
    src/core/InverseKinematics.cpp 
    src/core/JointLink.cpp 
    src/core/PidController.cpp 
    src/core/Robot.cpp 
    src/Main.cpp 
    src/meshes/BoxMesh.cpp 
    src/meshes/CylinderMesh.cpp 
    src/meshes/JointLinkMesh.cpp 
    src/meshes/Mesh.cpp 
    src/meshes/SphereMesh.cpp 
    src/rendering/Camera.cpp 
)

include_directories(
    ${PROJECT_SOURCE_DIR}/src 
    # ${PROJECT_SOURCE_DIR}/include/imgui/imgui  
    ${PROJECT_SOURCE_DIR}/include/ImGuizmo  
)

add_library(ImGuizmo include/ImGuizmo/ImGuizmo.cpp)
target_link_libraries(
    ImGuizmo 
    PRIVATE 
        imgui::imgui 
        # imgui::imgui_glfw 
        # imgui-opengl3
)

add_executable(roboArm ${SOURCES})

target_link_libraries(
    roboArm
    PRIVATE 
        OpenGL::GL 
        glfw 
        GLEW::GLEW 
        imgui::imgui 
        # imgui-glfw 
        # imgui-opengl3
        Eigen3::Eigen 
        ImGuizmo 
)

set_target_properties(roboArm PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})