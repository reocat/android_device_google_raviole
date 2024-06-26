# Inherit some common stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/blaze/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/gs101/calyx_common.mk)
$(call inherit-product, device/google/raviole/oriole/device-calyx.mk)
$(call inherit-product, device/google/raviole/aosp_oriole.mk)

TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1080
BLAZE_BUILD_TYPE := UNOFFICIAL
BLAZE_MAINTAINER := reocat
TARGET_SUPPORTS_BLUR := true
TARGET_UDFPS_ANIMATIONS := true
EXTRA_UDFPS_ANIMATIONS := true
WITH_GAPPS := true

## Device identifier. This must come after all inclusions
PRODUCT_NAME := blaze_oriole
PRODUCT_MODEL := Pixel 6
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=oriole \
    PRIVATE_BUILD_DESC="oriole-user 14 AP2A.240805.005.F1 12043167 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:14/AP2A.240805.005.F1/12043167:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, vendor/google/oriole/oriole-vendor.mk)
