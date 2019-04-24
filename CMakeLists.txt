cmake_minimum_required(VERSION 3.5)
project(rtt-test)

enable_language(C ASM)

set(CMAKE_MODULE_PATH $ENV{CMAKE_MODULE_PATH})

include(Arduino)

enable_arduino_toolchain()

file(GLOB sources *.cpp)

add_arduino_library(rtt-test "${sources}")

find_package(RtThread)
target_link_libraries(rtt-test Arduino_RT-Thread)

find_package(arduino-logging)
target_link_libraries(rtt-test arduino-logging)

add_arduino_firmware(rtt-test)
