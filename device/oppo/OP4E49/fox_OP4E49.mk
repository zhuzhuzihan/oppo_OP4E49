DEVICE_PATH := device/oppo/OP4E49

$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# OrangeFox product
PRODUCT_DEVICE := OP4E49
PRODUCT_NAME := fox_OP4E49
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := PECM30
PRODUCT_MANUFACTURER := OPPO

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k6853v1_64-user 11 RP1A.200720.011 mp1tc16sp release-keys"

BUILD_FINGERPRINT := OPPO/PECM30/OP4E49:11/RP1A.200720.011/1625909530:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.product=OP4E49
