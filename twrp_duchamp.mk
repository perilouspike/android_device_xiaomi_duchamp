#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from duchamp device
$(call inherit-product, device/xiaomi/duchamp/device.mk)

# Configure launch_with_vendor_ramdisk.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch.mk)

# Configure emulated_storage.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

PRODUCT_DEVICE := duchamp
PRODUCT_NAME := twrp_duchamp
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 2311DRK48G
PRODUCT_MANUFACTURER := xiaomi