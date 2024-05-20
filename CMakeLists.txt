cmake_minimum_required(VERSION 3.0.0)
project(HashTable VERSION 0.1.0 LANGUAGES C CXX)

include(CTest)
enable_testing()

file(GLOB_RECURSE RUZALLIB_SRC_FILES RuzalLib/src/*.cpp)
file(GLOB_RECURSE SRC_FILES src/*.cpp)
add_executable(hash_table main.cpp ${SRC_FILES} ${RUZALLIB_SRC_FILES})

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})

target_include_directories(hash_table PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
target_include_directories(hash_table PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/RuzalLib/include)

include(CPack)