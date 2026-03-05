#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP Device Tree Generator
# Copyright (C) 2019-Present A-Team Digital Solutions
# Copyright (C) 2024 sosRR
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from mona device
$(call inherit-product, device/motorola/mona/device.mk)

PRODUCT_DEVICE := mona
PRODUCT_NAME := twrp_mona
PRODUCT_BRAND := Moto_G
PRODUCT_MODEL := XT2517
PRODUCT_MANUFACTURER := Motorola
PRODUCT_RELEASE_NAME := Moto G Sylus 5G 2025

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="mona_g-user 15 V2VAS35.29-49-3 a722c4-6802e7 release-keys MV-219"

BUILD_FINGERPRINT := motorola/mona_g/mona:15/V2VAS35.29-49-3/a722c4-6802e7:user/release-keys