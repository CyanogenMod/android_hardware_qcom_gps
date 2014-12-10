ifneq (,$(filter $(QCOM_BOARD_PLATFORMS),$(TARGET_BOARD_PLATFORM)))

ifeq ($(TARGET_GPS_HAL_PATH),)

ifeq ($(call my-dir),$(call project-path-for,qcom-gps))

ifneq ($(filter msm8960 apq8064 ,$(TARGET_BOARD_PLATFORM)),)
    #For msm8960/apq8064 targets
    include $(call all-named-subdir-makefiles,msm8960)
else
    #For all other targets
    GPS_DIRS=core utils loc_api platform_lib_abstractions etc
    include $(call all-named-subdir-makefiles,$(GPS_DIRS))
endif #TARGET_BOARD_PLATFORM

endif

endif

endif
