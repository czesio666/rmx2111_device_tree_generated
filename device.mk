#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/realme/RMX2111

# Display
TARGET_USES_HWC2 := true
TARGET_FORCE_HWC_FOR_GPU_CLIENT_COMPOSITION := true

# Panel & Backlight
DEVICE_SPECIFIC_TW := true

# Touch fixes
TARGET_TOUCHSCREEN := focaltech

# Power management
TARGET_USES_ION := true
