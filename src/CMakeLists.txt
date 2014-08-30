cmake_minimum_required(VERSION 2.6)

PROJECT(Learn_CMakeGMockGTest)

subdirs(
	client
	socket
)

add_executable(main main.cpp)
target_link_libraries(main client socket)
