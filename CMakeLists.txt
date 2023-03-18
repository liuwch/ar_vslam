cmake_minimum_required(VERSION 3.10)
project(ARVSlam)

set(CMAKE_CXX_STANDARD 17)

set(SOURCE_FILE src/common/config.cpp)

include_directories(src)

add_library(ARVSlam SHARED ${SOURCE_FILE})

add_executable(main examples/main.cpp)
target_link_libraries(main ARVSlam)