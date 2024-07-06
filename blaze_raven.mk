# Inherit some common stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/blaze/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/gs101/calyx_common.mk)
$(call inherit-product, device/google/raviole/raven/device-calyx.mk)
$(call inherit-product, device/google/raviole/aosp_raven.mk)

TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1080
BLAZE_BUILD_TYPE := UNOFFICIAL
BLAZE_MAINTAINER := reocat
EXTRA_UDFPS_ANIMATIONS := true
WITH_GAPPS := true

## Device identifier. This must come after all inclusions
PRODUCT_NAME := blaze_raven
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=raven \
    PRIVATE_BUILD_DESC="raven-user 14 AP2A.240805.005.F1 12043167 release-keys"

BUILD_FINGERPRINT := google/raven/raven:14/AP2A.240805.005.F1/12043167:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, vendor/google/raven/raven-vendor.mk)
