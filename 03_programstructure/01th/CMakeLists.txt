cmake_minimum_required(VERSION 3.27)

project(test_main)

add_subdirectory(person)
add_subdirectory(dog)

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
include_directories(${PROJECT_SOURCE_DIR}/person)
include_directories(${PROJECT_SOURCE_DIR}/dog)
link_directories(${PROJECT_SOURCE_DIR}/lib)
add_executable(${PROJECT_NAME} main.cpp)
target_link_libraries(${PROJECT_NAME} dog)
target_link_libraries(${PROJECT_NAME} person)