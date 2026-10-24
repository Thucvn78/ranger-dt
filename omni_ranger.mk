#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from ranger device
$(call inherit-product, device/sony/ranger/device.mk)

PRODUCT_DEVICE := ranger
PRODUCT_NAME := omni_ranger
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia
PRODUCT_MANUFACTURER := sony

PRODUCT_GMS_CLIENTID_BASE := android-sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ranger-user 7.1.1 2.99.J.2.53 1512024057 release-keys"

BUILD_FINGERPRINT := alps/ranger/ranger:7.1.1/2.99.J.2.53_201711301221/1512024057:user/release-keys
