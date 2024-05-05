#
# Copyright (C) 2024 The Derpfest Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Derp stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/derp/config/common_full_phone.mk)
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true
DERP_BUILDTYPE := Official
TARGET_SUPPORTS_QUICK_TAP := true
EXTRA_UDFPS_ICONS := true
TARGET_IS_PIXEL := true
TARGET_IS_PIXEL_6 := true
TARGET_PIXEL_STAND_SUPPORTED := true

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_raven.mk)
$(call inherit-product, device/google/gs101/lineage_common.mk)

include device/google/raviole/raven/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_NAME := derp_raven

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=raven \
    PRIVATE_BUILD_DESC="raven-user 14 AP1A.240405.002 11480754 release-keys"

BUILD_FINGERPRINT := google/raven/raven:14/AP1A.240405.002/11480754:user/release-keys

$(call inherit-product, vendor/google/raven/raven-vendor.mk)
