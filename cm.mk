## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := x6a

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/vivo/x6a/device_x6a.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := x6a
PRODUCT_NAME := cm_x6a
PRODUCT_BRAND := vivo
PRODUCT_MODEL := vivo X6A
PRODUCT_MANUFACTURER := vivo
