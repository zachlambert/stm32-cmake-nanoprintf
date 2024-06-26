add_library(nanoprintf STATIC IMPORTED)
set_target_properties(nanoprintf PROPERTIES IMPORTED_LOCATION ${STM32_LIB_PATH}/libnanoprintf.a)
target_include_directories(nanoprintf INTERFACE ${STM32_INCLUDE_PATH})
