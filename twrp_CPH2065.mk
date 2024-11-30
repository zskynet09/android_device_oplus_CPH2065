#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from CPH2065 device
$(call inherit-product, device/oplus/CPH2065/device.mk)

PRODUCT_DEVICE := CPH2065
PRODUCT_NAME := twrp_CPH2065
PRODUCT_BRAND := oplus
PRODUCT_MODEL := CPH2065
PRODUCT_MANUFACTURER := oplus

PRODUCT_GMS_CLIENTID_BASE := android-oppo-rvo3

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_mssi_64_cn_armv82-user 12 SP1A.210812.016 1656662249578 release-keys"

BUILD_FINGERPRINT := oplus/ossi/ossi:12/SP1A.210812.016/1656662249578:user/release-keys
