$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)
$(call inherit-product, device/oppo/OP4E49/device.mk)

PRODUCT_COPY_FILES += \
    device/oppo/OP4E49/init.recovery.mt6853.rc:recovery/root/init.recovery.mt6853.rc \
    device/oppo/OP4E49/prebuilt/dtb:dtb.img

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/oppo/OP4E49/recovery/root,recovery/root)

# OrangeFox product
PRODUCT_DEVICE := OP4E49
PRODUCT_NAME := twrp_OP4E49
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := PECM30
PRODUCT_MANUFACTURER := OPPO

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k6853v1_64-user 11 RP1A.200720.011 mp1tc16sp release-keys"

BUILD_FINGERPRINT := OPPO/PECM30/OP4E49:11/RP1A.200720.011/1625909530:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.product=OP4E49
