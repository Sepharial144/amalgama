find_package(GTest REQUIRED)
file(GLOB_RECURSE UNIT_SRC_FILES "unit/*.hpp" "unit/*.cpp")

list(FILTER SRVLOADER_SOURCE EXCLUDE REGEX "main.cpp")

function(add_custom_test nameTest srcFiles depFiles)
    set(EXECUTION_TEST_FILE ${TARGET_NAME}-${nameTest}-test)
	set(NAME_TEST ${TARGET_NAME}-${nameTest}-gtest)
	add_executable(${EXECUTION_TEST_FILE} ${srcFiles} ${depFiles})
	target_link_libraries(${EXECUTION_TEST_FILE} PRIVATE GTest::gmock GTest::gtest GTest::gmock_main GTest::gtest_main ${PACKAGE_LIBRARIES})
	target_include_directories(${EXECUTION_TEST_FILE} 
		PUBLIC 
		"${CMAKE_SOURCE_DIR}/source"
		${PACKAGE_INCLUDE_DIR}
	)
endfunction()

add_custom_test(unit ${UNIT_SRC_FILES} ${AMALGAMA_SRC})

add_test(unit unit)