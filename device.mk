PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_SHIPPING_API_LEVEL := 29

PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd \
    op4e49_keymaster_service \
    op4e49_cryptoeng_service \
    op4e49_gatekeeper_service \
    op4e49_mc_driver_daemon \
    op4e49_libMcClient \
    op4e49_libtrustonic_keybox_ca \
    op4e49_liburee_meta_drmkeyinstall \
    op4e49_commondcs_hal \
    op4e49_cryptoeng_hal \
    op4e49_gatekeeper_impl \
    op4e49_gatekeeper_default \
    op4e49_gatekeeper_mt6853 \
    op4e49_gatekeeper_oppo6853 \
    op4e49_libMcGatekeeper \
    op4e49_libSoftGatekeeper
