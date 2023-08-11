#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from RMX3241 device
$(call inherit-product, device/realme/RMX3241/device.mk)

PRODUCT_DEVICE := RMX3241
PRODUCT_NAME := omni_RMX3241
PRODUCT_BRAND := realme
PRODUCT_MODEL := RM6833
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_RMX3241-eng 16.1.0 RQ1A.210205.004 eng.bharat.20220219.124206 test-keys"

BUILD_FINGERPRINT := realme/twrp_RMX3241/RMX3241:16.1.0/RQ1A.210205.004/bharat02191256:eng/test-keys
