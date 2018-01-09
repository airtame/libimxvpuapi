set (TARGET_NAME imxvpuapi)

set (SOURCES imxvpuapi.c
             imxvpuapi_vpulib.c
             imxvpuapi_jpeg.c
             imxvpuapi_parse_jpeg.c)

set (LIBS vpu pthread)

add_library(${TARGET_NAME} SHARED ${SOURCES})
target_link_libraries(${TARGET_NAME} ${LIBS})

install (TARGETS ${TARGET_NAME}
         LIBRARY DESTINATION lib
         ARCHIVE DESTINATION lib
         RUNTIME DESTINATION bin)
