message(STATUS "Load ... package.cmake")

#find_package( CONFIG REQUIRED)
find_package(PkgConfig REQUIRED)
if (PKG_CONFIG_FOUND)
    message(STATUS "Pkg found...")
    pkg_check_modules(DPDK "libdpdk")
        if (DPDK_FOUND)
            message(STATUS "found dpdk via pkg-config")
            add_definitions(${DPDK_CFLAGS})
            set(DPDK_LIBRARIES -Wl,--whole-archive ${DPDK_LIBRARIES} -lpthread -lnuma -ldl -Wl,--no-whole-archive)
            add_definitions(-DHAVE_DPDK)
        endif(DPDK_FOUND)
endif()

# include directories
SET(PACKAGE_DIRECTORIES
    ${DPDK_INCLUDE_DIR}
)

# link libraries
SET(PACKAGE_LIBRARIES ${DPDK_LIBRARIES})