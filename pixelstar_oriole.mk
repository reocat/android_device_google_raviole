#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common PixelStar stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/pixelstar/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_oriole.mk)
$(call inherit-product, device/google/gs101/lineage_common.mk)

include device/google/raviole/oriole/device-lineage.mk

# PixelStar stuff goes here:
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
TARGET_FACE_UNLOCK_SUPPORTED := true
USE_PIXEL_CHARGER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP  := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_CARRIER_SETTINGS := true
TARGET_INCLUDE_PIXEL_IMS := true
TARGET_INCLUDE_PIXEL_EUICC := true
TARGET_INCLUDE_CARRIER_SERVICES := true
TARGET_SUPPORTS_NOW_PLAYING := true
TARGET_GOOGLE_CAMERA_LARGE_RAM := true
TARGET_SUPPORTS_GOOGLE_BATTERY := true
TARGET_SUPPORTS_ADPATIVE_CHARGING := true
TARGET_SUPPORTS_DREAMLINER := true
TARGET_SUPPORTS_CLEAR_CALLING := true
PIXELSTAR_BUILD_TYPE := unofficial

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6
PRODUCT_NAME := pixelstar_oriole

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=oriole \
    PRIVATE_BUILD_DESC="oriole-user 14 AP2A.240805.005.F1 12043167 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:14/AP2A.240805.005.F1/12043167:user/release-keys

$(call inherit-product, vendor/google/oriole/oriole-vendor.mk)
