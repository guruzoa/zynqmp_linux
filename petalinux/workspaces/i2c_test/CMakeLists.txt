cmake_minimum_required(VERSION 3.5)

project(i2c_test)

add_executable(${PROJECT_NAME} main.c)

install(TARGETS ${PROJECT_NAME} DESTINATION bin)
