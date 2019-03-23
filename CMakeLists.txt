cmake_minimum_required(VERSION 3.12)
project(SPIRGLSL)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS} -Wno-class-memaccess)

add_subdirectory(SPIRV-LLVM)
add_subdirectory(SPIRV-Cross)
add_subdirectory(SPIRV-Tools)

add_executable(SPIRGLSL main.cpp)
