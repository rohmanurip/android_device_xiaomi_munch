#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from munch device
$(call inherit-product, device/xiaomi/munch/device.mk)

# Inherit from MiuiCamera
$(call inherit-product-if-exists, vendor/xiaomi/miuicamera/miuicamera.mk)

PRODUCT_NAME := lineage_munch
PRODUCT_DEVICE := munch
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Poco
PRODUCT_MODEL := 22021211RG

# Maintainer name
AVIUM_MAINTAINER := rohmanurip

AVIUM_BUILDTYPE := Unoffical
AVIUM_VERSION_APPEND_TIME_OF_DAY := false

# GMS
#WITH_GMS := true
#TARGET_GMS_TYPE := PICO
#TARGET_INCLUDE_GOOGLEIME := true
#TARGET_GOOGLEIME_OVERRIDE_IME := true

USE_PIXEL_CHARGING := true

BYPASS_CHARGE_SUPPORTED := true
TARGET_ENABLE_BLUR := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := POCO/munch_global/munch:13/RKQ1.211001.001/V816.0.9.0.ULMMIXM:user/release-keys
