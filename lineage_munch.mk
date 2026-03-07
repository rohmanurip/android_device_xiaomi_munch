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

# Maintainer
# AVIUM_MAINTAINER is a string that represents the maintainer of the build.
AVIUM_MAINTAINER ?= rohmanurip

# Settings
# Soc model name
AVIUM_SETTINGS_SOC_MODEL_NAME ?= SM8250-AC
# Device code name
AVIUM_SETTINGS_DEVICE_CODENAME ?= Munch(in)

WITH_GMS ?= true

TARGET_INCLUDE_GOOGLEIME ?= true
TARGET_GOOGLEIME_OVERRIDE_IME ?= true

AVIUM_FORCE_SET_FAKE_PROP ?= true
AVIUM_VERSION_APPEND_TIME_OF_DAY ?= false

PRODUCT_NAME := lineage_munch
PRODUCT_DEVICE := munch
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Poco
PRODUCT_MODEL := 22021211RG

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="munch-user 13 RKQ1.211001.001 V816.0.9.0.ULMMIXM release-keys" \
    BuildFingerprint=POCO/munch_global/munch:13/RKQ1.211001.001/V816.0.9.0.ULMMIXM:user/release-keys
