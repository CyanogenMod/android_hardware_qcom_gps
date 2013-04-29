ifeq ($(TARGET_QCOM_GPS_VARIANT),)
LOCAL_PATH := $(call my-dir)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
