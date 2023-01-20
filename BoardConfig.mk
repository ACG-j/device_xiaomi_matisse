#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from mt6983-common
-include device/xiaomi/mt6983-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/matisse

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := matisse

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_matisse
TARGET_RECOVERY_DEVICE_MODULES := libinit_matisse

# Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilts/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilts/dtb
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilts/dtbo.img

BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)

TARGET_KERNEL_CONFIG := mikrn_matisse_stability_defconfig

# Kernel modules
BOARD_VENDOR_RAMDISK_KERNEL_MODULES := $(wildcard $(DEVICE_PATH)/prebuilts/ramdisk/modules/*.ko)
BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/prebuilts/ramdisk/modules/modules.load))
BOARD_VENDOR_KERNEL_MODULES := $(wildcard $(DEVICE_PATH)/prebuilts/vendor/modules/*.ko)
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/prebuilts/vendor/modules/modules.load))

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
