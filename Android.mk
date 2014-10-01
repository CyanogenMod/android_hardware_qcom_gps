# Must always include this if BOARD_USES_QCOM_HARDWARE is unset
ifeq ($(BOARD_USES_QCOM_HARDWARE),)
USE_QCOM_GPS := true
endif

ifeq ($(call my-dir),$(call project-path-for,qcom-gps))
USE_QCOM_GPS := true
endif

ifeq ($(USE_QCOM_GPS),true)
include $(call all-subdir-makefiles)
endif
