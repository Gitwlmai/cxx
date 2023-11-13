cmake_minimum_required(VERSION 3.27)
project(person2)

message("CMAKE_SOURCE_DIR" ${CMAKE_SOURCE_DIR})
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_SOURCE_DIR})

add_executable(${PROJECT_NAME} person2.cpp)
