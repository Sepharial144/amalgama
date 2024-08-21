cmake_minimum_required (VERSION 3.20)
project("Amalgama" VERSION 0.0.2 DESCRIPTION "Network vpn based on dpdk framework")

#if(${TARGET} STREQUAL "amalgama")
    add_subdirectory ("amalgama")
#elseif(${TARGET} STREQUAL "utils") 
    add_subdirectory ("utils")
#endif()