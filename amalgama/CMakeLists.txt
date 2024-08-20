cmake_minimum_required (VERSION 3.20)

project(Amalgama VERSION 0.0.1 DESCRIPTION "Network vpn based on dpdk framework" LANGUAGES C)

include(package.cmake)
include(config.cmake)

file(GLOB_RECURSE AMALGAMA_SRC "${CMAKE_CURRENT_SOURCE_DIR}/source/*.h" "${CMAKE_CURRENT_SOURCE_DIR}/source/*.c")

set(TARGET_NAME "amalgama")

add_executable(${TARGET_NAME} ${AMALGAMA_SRC})

#enable_testing()
#add_subdirectory("tests")

target_include_directories(${TARGET_NAME} PUBLIC
	"${CMAKE_CURRENT_SOURCE_DIR}/source"
	${PACKAGE_DIRECTORIES}
)

target_link_libraries(${TARGET_NAME} PRIVATE 
	${PACKAGE_LIBRARIES}
)

install(TARGETS ${TARGET_NAME}
        CONFIGURATIONS Debug
        ARCHIVE DESTINATION "debug/${TARGET_NAME}/lib"
        RUNTIME DESTINATION "debug/${TARGET_NAME}/bin"
        PUBLIC_HEADER DESTINATION "debug/${TARGET_NAME}")
install(TARGETS ${TARGET_NAME}
        CONFIGURATIONS Release
        ARCHIVE DESTINATION "release/${TARGET_NAME}/lib"
        RUNTIME DESTINATION "release/${TARGET_NAME}/bin"
        PUBLIC_HEADER DESTINATION "release/${TARGET_NAME}")