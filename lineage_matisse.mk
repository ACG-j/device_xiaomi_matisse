#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from matisse device
$(call inherit-product, device/xiaomi/matisse/device.mk)

PRODUCT_DEVICE := matisse
PRODUCT_NAME := omni_matisse
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 22011211C
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
TARGET_SCREEN_HEIGHT := 3200
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION_RES := 1440

TARGET_SCREEN_DENSITY := 560

TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
# TODO: 没搞清楚版本号
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="matisse-user 13 SP2A.220405.004 eng.twrp.20230108.235029 test-keys"

BUILD_FINGERPRINT := Redmi/matisse/matisse:13/SP2A.220405.004/twrp01082349:eng/test-keys
