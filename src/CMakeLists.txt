cmake_minimum_required(VERSION 2.6)

PROJECT(Learn_CMakeGMockGTest)

subdirs(
	client
)

add_executable(main main.cpp)
