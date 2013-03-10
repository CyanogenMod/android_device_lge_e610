$(call inherit-product, device/lge/msm7x27a-common/msm7x27a-common.mk)

$(call inherit-product-if-exists, vendor/lge/e610/e610-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/e610/overlay

$(call inherit-product, $(LOCAL_PATH)/mdpi-dalvik.mk)

PRODUCT_AAPT_CONFIG := normal mdpi

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.m4.rc:root/init.m4.rc \
    $(LOCAL_PATH)/ueventd.m4.rc:root/ueventd.m4.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/m4_keypad.kl:/usr/keylayout/m4_keypad.kl \
    $(LOCAL_PATH)/configs/touch_mcs8000.idc:system/usr/idc/touch_mcs8000.idc \
    $(LOCAL_PATH)/configs/touch_mcs8000.kl:system/usr/keylayout/touch_mcs8000.kl

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/librasdioif.ko:system/lib/modules/librasdioif.ko \
    $(LOCAL_PATH)/prebuilt/wlan.ko:system/lib/modules/wlan.ko

# HW HALS
PRODUCT_PACKAGES += \
    gps.e610 \
    power.e610

PRODUCT_NAME := full_e610
PRODUCT_DEVICE := e610
PRODUCT_MODEL := LG-E610
