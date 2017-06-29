# Inherit omni-specific board config
include device/lge/bullhead/BoardConfigPurity.mk

# Inherit base AOSP device configuration
$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/purity/config/common.mk)

# Allow tethering without provisioning app
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true

# SELinux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# SnapdragonCamera
PRODUCT_PACKAGES += \
    SnapdragonCamera

# TWRP
PRODUCT_COPY_FILES += \
    device/lge/bullhead/twrp.fstab:recovery/root/etc/twrp.fstab

# Override product naming for Purity
PRODUCT_NAME := purity_bullhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5X
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="google/bullhead/bullhead:7.1.2/N2G47W/3938523:user/release-keys" \
    PRIVATE_BUILD_DESC="bullhead-user 7.1.2 N2G47W 3938523 release-keys"
