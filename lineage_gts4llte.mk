#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from gts4llte device
$(call inherit-product, device/samsung/gts4llte/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet.mk)

# Gapps
ifeq ($(WITH_GMS), true)
$(call inherit-product,vendor/gapps/arm64/arm64-vendor.mk)
endif

PRODUCT_DEVICE := gts4llte
PRODUCT_NAME := lineage_gts4llte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T835
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="gts4lltexx-user 10 QP1A.190711.020 T835XXU5CVG2 release-keys" \
    BuildFingerprint=samsung/gts4lltexx/gts4llte:10/QP1A.190711.020/T835XXU5CVG2:user/release-keys
