cmake_minimum_required (VERSION 3.20)

file(GLOB_RECURSE RECV_PACKET_SRC "${CMAKE_CURRENT_SOURCE_DIR}/source/*.h" "${CMAKE_CURRENT_SOURCE_DIR}/source/*.c")

set(TARGET_NAME "recv_packet")

add_executable(${TARGET_NAME} ${RECV_PACKET_SRC})

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