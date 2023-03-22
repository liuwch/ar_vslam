cmake_minimum_required(VERSION 3.10)
project(ARVSlam)

set(CMAKE_CXX_STANDARD 14)

#set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

# OpenCV
find_package(OpenCV 4 REQUIRED)
if (OpenCV_FOUND)
    message("Found OpenCV in: " ${OpenCV_INCLUDE_DIRS})
endif()
include_directories(${OpenCV_INCLUDE_DIRS})

# Backward
if (USE_BACKWARD)
    find_package(Backward REQUIRED)
endif()

set(SOURCE_FILE src/common/config.cpp
                src/data/camera.cpp
                src/data/frame.cpp
        src/data/landmark.cpp src/data/landmark.h src/data/feature.cpp src/data/feature.h src/data/map_database.cpp src/data/map_database.h src/module/tracking.cpp src/module/tracking.h src/module/mapping.cpp src/module/mapping.h)

include_directories(src)

add_library(ARVSlam SHARED ${SOURCE_FILE})
target_link_libraries(ARVSlam ${OpenCV_LIBS})

if (USE_BACKWARD)
    add_executable(main examples/main.cpp examples/backward.cpp)
    target_link_libraries(main ARVSlam Backward::Backward)
else()
    add_executable(main examples/main.cpp)
    target_link_libraries(main ARVSlam)
endif()