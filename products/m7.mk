# Inherit AOSP device configuration for m7
$(call inherit-product, device/htc/m7/device_m7.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/rootbox/configs/gsm.mk)

# Inherit RootBox common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# M7 Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/m7

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xxhdpi

# Setup device specific product configuration
PRODUCT_NAME := rootbox_m7
PRODUCT_BRAND := HTC
PRODUCT_DEVICE := m7
PRODUCT_MODEL := HTC One
PRODUCT_MANUFACTURER := HTC
PRODUCT_LOCALES += xxhdpi

# Release name
PRODUCT_RELEASE_NAME := m7

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=htc_m7 BUILD_FINGERPRINT=htc/bm/m7:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="m7-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

# Copy Bootanimation
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/common/bootanimation/m7-boot3.zip:system/media/bootanimation.zip

PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/common/app/com.miuimusic232.apk:system/app/com.miuimusic232.apk

PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/common/media/sounds/xperia.ogg:system/media/audio/ringtones/xperia.ogg \
    vendor/rootbox/prebuilt/common/media/sounds/xperia_z_breeze.ogg:system/media/audio/ringtones/xperia_z_breeze.ogg \
    vendor/rootbox/prebuilt/common/media/sounds/xperia_z_rise.ogg:system/media/audio/ringtones/xperia_z_rise.ogg \
    vendor/rootbox/prebuilt/common/media/sounds/xperia1_z.ogg:system/media/audio/ringtones/xperia1_z.ogg \
    vendor/rootbox/prebuilt/common/media/sounds/xperia2_z.ogg:system/media/audio/ringtones/xperia2_z.ogg \
    vendor/rootbox/prebuilt/common/media/sounds/Whistle.ogg:system/media/audio/notifications/s_whistle.ogg