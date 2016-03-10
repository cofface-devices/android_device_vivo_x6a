$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/vivo/x6a/x6a-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/vivo/x6a/overlay
include $(call all-subdir-makefiles)
LOCAL_PATH := device/vivo/x6a
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
	$(LOCAL_PATH)/dt.img:dt.img

#Add cofface prop
PRODUCT_PROPERTY_OVERRIDES += \
  ro.weibo.com=weibo.com/cofface \
  ro.vivo.product.release.model=X6A \
  ro.vivo.product.model=PD1415A

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_x6a
PRODUCT_DEVICE := msm8916_64
