#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Blaze stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/blaze/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_oriole.mk)
$(call inherit-product, device/google/gs101/lineage_common.mk)

include device/google/raviole/oriole/device-lineage.mk

TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1080
BLAZE_BUILD_TYPE := UNOFFICIAL
BLAZE_MAINTAINER := reocat
EXTRA_UDFPS_ANIMATIONS := true
WITH_GAPPS := true

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6
PRODUCT_NAME := blaze_oriole

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=oriole \
    PRIVATE_BUILD_DESC="oriole-user 14 AP2A.240805.005.F1 12043167 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:14/AP2A.240805.005.F1/12043167:user/release-keys

$(call inherit-product, vendor/google/oriole/oriole-vendor.mk)
