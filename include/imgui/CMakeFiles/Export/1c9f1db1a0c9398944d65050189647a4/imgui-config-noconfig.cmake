#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "imgui::imgui" for configuration ""
set_property(TARGET imgui::imgui APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(imgui::imgui PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libimgui.a"
  )

list(APPEND _cmake_import_check_targets imgui::imgui )
list(APPEND _cmake_import_check_files_for_imgui::imgui "${_IMPORT_PREFIX}/lib/libimgui.a" )

# Import target "imgui::imgui_impl_glfw" for configuration ""
set_property(TARGET imgui::imgui_impl_glfw APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(imgui::imgui_impl_glfw PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libimgui_impl_glfw.a"
  )

list(APPEND _cmake_import_check_targets imgui::imgui_impl_glfw )
list(APPEND _cmake_import_check_files_for_imgui::imgui_impl_glfw "${_IMPORT_PREFIX}/lib/libimgui_impl_glfw.a" )

# Import target "imgui::imgui_impl_opengl3" for configuration ""
set_property(TARGET imgui::imgui_impl_opengl3 APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(imgui::imgui_impl_opengl3 PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libimgui_impl_opengl3.a"
  )

list(APPEND _cmake_import_check_targets imgui::imgui_impl_opengl3 )
list(APPEND _cmake_import_check_files_for_imgui::imgui_impl_opengl3 "${_IMPORT_PREFIX}/lib/libimgui_impl_opengl3.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
