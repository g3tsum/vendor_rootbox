# Inherit AOSP device configuration for m7ul
$(call inherit-product, device/htc/m7ul/full_m7ul.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/rootbox/configs/gsm.mk)

# Inherit RootBox common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# Inherit houstonn sound package
$(call inherit-product, vendor/rootbox/configs/soundpackage.mk)

# Enhanced NFC
$(call inherit-product, vendor/rootbox/configs/nfc_enhanced.mk)

# M7 Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/m7

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xxhdpi

# Setup device specific product configuration
PRODUCT_NAME := rootbox_m7ul
PRODUCT_BRAND := HTC
PRODUCT_DEVICE := m7ul
PRODUCT_MODEL := HTC One
PRODUCT_MANUFACTURER := HTC
PRODUCT_LOCALES += xxhdpi

# Release name
PRODUCT_RELEASE_NAME := m7ul

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=htc_m7ul BUILD_FINGERPRINT=htc/bm/m7:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="m7-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

# Copy Bootanimation
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/common/bootanimation/m7-boot3.zip:system/media/bootanimation.zip
