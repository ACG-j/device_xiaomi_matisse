#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from mt6983-common
$(call inherit-product, device/xiaomi/mt6983-common/mt6983-common.mk)
# Inherit from proprietary files
$(call inherit-product, vendor/xiaomi/matisse/matisse-vendor.mk)

# FM Radio
PRODUCT_PACKAGES += \
    MtkFMRadio

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/idc/uinput-fpc.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/uinput-fpc.idc \
    $(LOCAL_PATH)/configs/idc/uinput-goodix.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/uinput-goodix.idc \
    $(LOCAL_PATH)/configs/keylayout/uinput-fpc.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/uinput-fpc.kl \
    $(LOCAL_PATH)/configs/keylayout/uinput-goodix.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/uinput-goodix.kl

# MIUI Camera
PRODUCT_SYSTEM_PROPERTIES += \
    ro.miui.notch=1 \
    ro.product.mod_device=matisse_global \
    camera.lab.options=true

# Overlays
PRODUCT_PACKAGES += \
    FrameworkResOverlay \
    MatisseFrameworkResOverlay \
    SystemUIOverlay \
    SettingsOverlay

# Recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/modules/ramdisk/modules.load.recovery:recovery/root/lib/modules/modules.load.recovery

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/prebuilts/firmware/,recovery/root/vendor/firmware)

# Rootdir
PRODUCT_PACKAGES += \
    init.project.rc \
    meta_init.rc

# Xiaomi Parts
PRODUCT_PACKAGES += \
    XiaomiParts
