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
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from yunluo device
$(call inherit-product, device/xiaomi/yunluo/device.mk)

PRODUCT_DEVICE := yunluo
PRODUCT_NAME := twrp_yunluo
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 22081283C
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="yunluo-user 12 SP1A.210812.016 V14.0.7.0.TLYCNXM release-keys"

BUILD_FINGERPRINT := Redmi/yunluo/yunluo:12/SP1A.210812.016/V14.0.7.0.TLYCNXM:user/release-keys
