LOCAL_PATH := $(call my-dir)

TW_THEME: = landscape_hdpi

ifeq ($(TARGET_DEVICE),x7)
include $(call all-makefiles-under,$(LOCAL_PATH))

endif
