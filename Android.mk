ifneq ($(BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE),)
LOCAL_PATH := $(call my-dir)

ifeq ($(BOARD_VENDOR_QCOM_LOC_PDK_FEATURE_SET),true)

ifneq ($(filter msm8960 apq8064 ,$(TARGET_BOARD_PLATFORM)),)
    #For msm8960/apq8064 targets
    include $(call all-named-subdir-makefiles,msm8960)
else ifneq ($(filter msm8974 ,$(TARGET_BOARD_PLATFORM)),)
    #For msm8974 target
    include $(call all-named-subdir-makefiles,msm8974)
else ifneq ($(filter msm8084 ,$(TARGET_BOARD_PLATFORM)),)
    #For msm8084 target
    include $(call all-named-subdir-makefiles,msm8084)
else ifeq ($(filter msm8916,$(TARGET_BOARD_PLATFORM)),)
    #For all other targets
    GPS_DIRS=core utils loc_api platform_lib_abstractions etc
    include $(call all-named-subdir-makefiles,$(GPS_DIRS))
endif #TARGET_BOARD_PLATFORM

else ifeq ($(filter msm8916,$(TARGET_BOARD_PLATFORM)),)
    GPS_DIRS=core utils loc_api platform_lib_abstractions etc
    include $(call all-named-subdir-makefiles,$(GPS_DIRS))
endif #BOARD_VENDOR_QCOM_LOC_PDK_FEATURE_SET

endif #BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE
