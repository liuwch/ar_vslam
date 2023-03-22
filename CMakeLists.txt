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

# Eigen
include_directories("/usr/local/include/eigen3")

# Sophus
find_package(Sophus REQUIRED)
message(Sophus dir: ${Sophus_INCLUDE_DIRS})

# g2o
find_package(G2O REQUIRED)
include_directories(${G2O_INCLUDE_DIRS})
message("g2o dir: " ${G2O_INCLUDE_DIRS})

# Backward
if (USE_BACKWARD)
    find_package(Backward REQUIRED)
endif()

set(SOURCE_FILE src/common/config.cpp
                src/data/camera.cpp
                src/data/frame.cpp
                src/data/landmark.cpp
                src/data/feature.cpp
                src/data/map_database.cpp
                src/module/tracking.cpp
                src/module/mapping.cpp)

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