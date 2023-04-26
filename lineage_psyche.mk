#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from psyche device
$(call inherit-product, device/xiaomi/psyche/device.mk)

# Include Lawnchair
$(call inherit-product-if-exists, vendor/lawnchair/Lawnchair.mk)
# Include FaceUnlock
$(call inherit-product-if-exists, external/faceunlock/config.mk)


PRODUCT_NAME := lineage_psyche
PRODUCT_DEVICE := psyche
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi12 X

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
