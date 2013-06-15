include device/lge/msm7x27a-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/lge/e610/BoardConfigVendor.mk
TARGET_BOOTLOADER_BOARD_NAME := e610

BOARD_KERNEL_CMDLINE := androidboot.hardware=m4 lge.signed_image=false

TARGET_KERNEL_CONFIG := cyanogenmod_m4_defconfig

BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := e610

BOARD_CUSTOM_GRAPHICS := ../../../device/lge/e610/recovery/graphics.c
