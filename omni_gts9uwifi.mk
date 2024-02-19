#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from gts9uwifi device
$(call inherit-product, device/samsung/gts9uwifi/device.mk)

PRODUCT_DEVICE := gts9uwifi
PRODUCT_NAME := omni_gts9uwifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-X910
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gts9uwifixx-user 13 TP1A.220624.014 X910XXU1BWK6 release-keys"

BUILD_FINGERPRINT := samsung/gts9uwifixx/gts9uwifi:13/TP1A.220624.014/X910XXU1BWK6:user/release-keys
