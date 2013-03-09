## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 320

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/e610/e610.mk)

PRODUCT_NAME := cm_e610

# Release name and versioning
PRODUCT_RELEASE_NAME := OptimusL5
PRODUCT_VERSION_DEVICE_SPECIFIC :=

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := e610

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m4_open_eu BUILD_FINGERPRINT=lge/m4_open_eu/m4:4.0.3/IML74K/lge610-V10a.20121008.170544:user/release-keys PRIVATE_BUILD_DESC="m4_open_eu-user 4.0.3 IML74K lge610-V10a.20121008.170544 release-keys"

# Enable Torch
#PRODUCT_PACKAGES += Torch
