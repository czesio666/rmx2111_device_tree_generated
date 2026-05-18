#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),RMX2111)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif

# === Auto Reboot to System Script ===
$(TARGET_RECOVERY_ROOT_OUT)/auto_reboot.sh: $(LOCAL_PATH)/recovery/root/auto_reboot.sh
    $(hide) mkdir -p $(dir $@)
    $(hide) cp -f $< $@
    $(hide) chmod 755 $@

ALL_DEFAULT_INSTALLED_MODULES += $(TARGET_RECOVERY_ROOT_OUT)/auto_reboot.sh
