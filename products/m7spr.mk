# Inherit AOSP device configuration for m7spr
$(call inherit-product, device/htc/m7spr/full_m7spr.mk)

# Inherit CDMA common stuff
$(call inherit-product, vendor/rootbox/configs/cdma.mk)

# Inherit RootBox common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# Inherit houstonn sound package
$(call inherit-product, vendor/rootbox/configs/soundpackage.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# M7 Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/m7

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xxhdpi

# Setup device specific product configuration
PRODUCT_NAME := rootbox_m7spr
PRODUCT_BRAND := HTC
PRODUCT_DEVICE := m7spr
PRODUCT_MODEL := HTC One
PRODUCT_MANUFACTURER := HTC
PRODUCT_LOCALES += xxhdpi

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=htc_m7wls BUILD_FINGERPRINT=htc/bm/m7wls:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="m7-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

# Copy Bootanimation
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/common/bootanimation/m7-boot3.zip:system/media/bootanimation.zip