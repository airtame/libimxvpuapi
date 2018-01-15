include(CMakeForceCompiler)

set (CROSSCOMPILE_TARGET_NAME "IMX")

set (CMAKE_SYSTEM_NAME "Linux")
set (CMAKE_SYSROOT ${SYSROOT_PATH})
set (PLAFTFORM_MODULES "IMX_MODULES")
set (CROSS_COMPILE "ON")

# Setup the cross compiling tools
set (TOOLCHAIN_BIN "${TOOLCHAIN_PATH}/bin")
set (CMAKE_C_COMPILER ${TOOLCHAIN_BIN}/arm-linux-gnueabihf-gcc)
set (CMAKE_CXX_COMPILER ${TOOLCHAIN_BIN}/arm-linux-gnueabihf-g++)
set (CMAKE_AR "${TOOLCHAIN_BIN}/arm-linux-gnueabihf-ar" CACHE PATH "archive" FORCE)
set (CMAKE_LINKER "${TOOLCHAIN_BIN}/arm-linux-gnueabihf-ld" CACHE PATH "linker" FORCE)
set (CMAKE_RANLIB "${TOOLCHAIN_BIN}/arm-linux-gnueabihf-ranlib" CACHE PATH "ranlib" FORCE)

# Setup the paths used by find_* functions
set (CMAKE_LIBRARY_PATH "${ROOTFS_PATH}/lib")
set (CMAKE_FIND_ROOT_PATH_MODE_PROGRAM ONLY)
set (CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set (CMAKE_FIND_ROOT_PATH "${ROOTFS_PATH}/lib")

add_definitions (-D__linux -D_UINTPTR_T)
