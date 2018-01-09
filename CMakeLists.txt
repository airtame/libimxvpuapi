cmake_minimum_required (VERSION 2.8)

project(imxvpuapi)

set (COMMON_FLAGS "-Wextra -Wall -std=gnu99, -pedantic, -fPIC, -DPIC")
set (CMAKE_C_FLAGS_RELWITHDEBINFO "${CMAKE_C_FLAGS_RELWITHDEBINFO} ${COMMON_C_FLAGS} -O2")

set (CMAKE_BUILD_TYPE RelWithDebInfo)
add_subdirectory (imxvpuapi)