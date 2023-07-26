#
# Copyright (C) 2022 PixelOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lisa device
$(call inherit-product, device/xiaomi/lisa/device.mk)

# Inherit some common DerpFest stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Derp
WITH_GMS := true
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := false
EXTRA_UDFPS_ANIMATIONS := false
TARGET_NOT_USES_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_EXCLUDES_AUDIOFX := true

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := lisa
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := derp_lisa
PRODUCT_MODEL := Xiaomi 11 Lite NE

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
