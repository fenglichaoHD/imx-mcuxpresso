# Add set(CONFIG_USE_middleware_multicore_rpmsg_lite true) in config.cmake to use this component

include_guard(GLOBAL)
message("${CMAKE_CURRENT_LIST_FILE} component is included.")

if(((CONFIG_DEVICE_ID STREQUAL K32L3A60xxx OR CONFIG_DEVICE_ID STREQUAL LPC55S69 OR CONFIG_DEVICE_ID STREQUAL LPC55S66 OR CONFIG_DEVICE_ID STREQUAL MIMXRT1165xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1166xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1171xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1172xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1173xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1175xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT1176xxxxx OR CONFIG_DEVICE_ID STREQUAL MCIMX7U3xxxxx OR CONFIG_DEVICE_ID STREQUAL MCIMX7U5xxxxx OR CONFIG_DEVICE_ID STREQUAL MIMXRT595S OR CONFIG_DEVICE_ID STREQUAL MIMXRT633S OR CONFIG_DEVICE_ID STREQUAL MIMXRT685S OR CONFIG_DEVICE_ID STREQUAL MIMX8MD6xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MD6xxxHZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MD7xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MD7xxxHZ OR CONFIG_DEVICE_ID STREQUAL MIMX8ML3xxxLZ OR CONFIG_DEVICE_ID STREQUAL MIMX8ML3xxxKZ OR CONFIG_DEVICE_ID STREQUAL MIMX8ML4xxxLZ OR CONFIG_DEVICE_ID STREQUAL MIMX8ML4xxxKZ OR CONFIG_DEVICE_ID STREQUAL MIMX8ML6xxxLZ OR CONFIG_DEVICE_ID STREQUAL MIMX8ML6xxxKZ OR CONFIG_DEVICE_ID STREQUAL MIMX8ML8xxxLZ OR CONFIG_DEVICE_ID STREQUAL MIMX8ML8xxxKZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM1xxxLZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM1xxxKZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM2xxxLZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM2xxxKZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM3xxxLZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM3xxxKZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM4xxxLZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM4xxxKZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM5xxxLZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM5xxxKZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM6xxxLZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MM6xxxKZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN1xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN1xxxIZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN2xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN2xxxIZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN3xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN3xxxIZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN4xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN4xxxIZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN5xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN5xxxIZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN6xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MN6xxxIZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ5xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ5xxxHZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ6xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ6xxxHZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ7xxxJZ OR CONFIG_DEVICE_ID STREQUAL MIMX8MQ7xxxHZ OR CONFIG_DEVICE_ID STREQUAL MIMX8UD3xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX8UD5xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX8UD7xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX8US3xxx08 OR CONFIG_DEVICE_ID STREQUAL MIMX8US5xxx08) OR (CONFIG_BOARD STREQUAL frdmk32l3a6 OR CONFIG_BOARD STREQUAL evkmcimx7ulp OR CONFIG_BOARD STREQUAL evkmimx8mq OR CONFIG_BOARD STREQUAL evkmimxrt685 OR CONFIG_BOARD STREQUAL mimxrt685audevk OR CONFIG_BOARD STREQUAL evkmimxrt595 OR CONFIG_BOARD STREQUAL lpcxpresso55s69 OR CONFIG_BOARD STREQUAL evkmimx8mm OR CONFIG_BOARD STREQUAL evkmimx8mn OR CONFIG_BOARD STREQUAL evkmimx8mnddr3l OR CONFIG_BOARD STREQUAL evkmimx8mp OR CONFIG_BOARD STREQUAL evkmimx8ulp OR CONFIG_BOARD STREQUAL evk9mimx8ulp OR CONFIG_BOARD STREQUAL evkmimxrt1160 OR CONFIG_BOARD STREQUAL evkmimxrt1170 OR CONFIG_BOARD STREQUAL evkbmimxrt1170)) AND (CONFIG_USE_middleware_multicore_rpmsg_lite_bm OR CONFIG_USE_middleware_multicore_rpmsg_lite_freertos OR CONFIG_USE_middleware_multicore_rpmsg_lite_xos OR CONFIG_USE_middleware_multicore_rpmsg_lite_azurertos))

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
  ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/common/llist.c
  ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/rpmsg_lite.c
  ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/rpmsg_ns.c
  ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/virtio/virtqueue.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/include
)

else()

message(SEND_ERROR "middleware_multicore_rpmsg_lite dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()