#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from matisse device
$(call inherit-product, device/xiaomi/matisse/device.mk)

PRODUCT_DEVICE := matisse
PRODUCT_NAME := lineage_matisse
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := matisse
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="missi_phone_cn-user 13 TP1A.220624.014 V14.0.15.0.TLKCNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/missi_phone_cn/missi:13/TP1A.220624.014/V14.0.15.0.TLKCNXM:user/release-keys
