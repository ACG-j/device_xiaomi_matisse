#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
if [ "${BASH_SOURCE[0]}" != "${0}"]; then
    return
fi

set -e

export DEVICE=matisse
export VENDOR=xiaomi
export DEVICE_COMMOM=mt6983-common

"./../mt6983-common/extract-files.sh" "$@"