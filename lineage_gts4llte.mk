# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from gts4llte device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := gts4llte
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_gts4llte
PRODUCT_MODEL := SM-T835

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := gts4llte
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="gts4lltexx-user 10 QP1A.190711.020 T835XXU5CVG2 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/gts4lltexx/gts4llte:10/QP1A.190711.020/T835XXU5CVG2:user/release-keys
