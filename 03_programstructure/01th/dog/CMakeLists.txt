cmake_minimum_required(VERSION 3.27)

project(dog)

set(LIBRARY_OUTPUT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../lib)

add_library(${PROJECT_NAME} SHARED dog.cpp)