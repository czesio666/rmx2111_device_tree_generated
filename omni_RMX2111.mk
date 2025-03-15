#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from RMX2111 device
$(call inherit-product, device/realme/RMX2111/device.mk)

PRODUCT_DEVICE := RMX2111
PRODUCT_NAME := omni_RMX2111
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme 7 5G
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="omni_RMX2111-eng 16.1.0 QQ3A.200805.001 eng.root.20210831.092311 test-keys"

BUILD_FINGERPRINT := realme/omni_RMX2111/RMX2111:16.1.0/QQ3A.200805.001/root08310922:eng/test-keys
