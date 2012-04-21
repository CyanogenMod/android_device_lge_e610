ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),p700)
include $(call first-makefiles-under,$(call my-dir))
endif
