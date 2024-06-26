cmake_minimum_required(VERSION 3.3)
project(stm32-cmake-nanoprintf)

add_library(nanoprintf STATIC
    src/nanoprintf.c
)
target_include_directories(nanoprintf PUBLIC
    nanoprintf
)

set(CONFIG_FILE ${CMAKE_CURRENT_BINARY_DIR}/nanoprintf-config.cmake)
configure_file(cmake/nanoprintf-config.cmake ${CONFIG_FILE})
install(
    FILES ${CONFIG_FILE}
    DESTINATION ${STM32_CMAKE_CONFIG_PATH}
)

install(
    FILES nanoprintf/nanoprintf.h
    DESTINATION ${STM32_ROOT_PATH}/${STM32_MCU_NAME}/include
)

install(
    TARGETS nanoprintf
    LIBRARY DESTINATION ${STM32_LIB_PATH}
    ARCHIVE DESTINATION ${STM32_LIB_PATH}
)
