# Inherit AOSP device configuration for m7
$(call inherit-product, device/htc/m7wls/full_m7wls.mk)

# Inherit CDMA common stuff
$(call inherit-product, vendor/rootbox/configs/cdma.mk)

# Inherit RootBox common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# M7 Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/m7

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xhdpi

# Setup device specific product configuration
PRODUCT_NAME := rootbox_m7wls
PRODUCT_BRAND := HTC
PRODUCT_DEVICE := m7wls
PRODUCT_MODEL := HTC One
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=htc_m7wls BUILD_FINGERPRINT=htc/bm/m7wls:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="m7-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

# Copy Bootanimation
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/common/bootanimation/m7-bootani.zip:system/media/bootanimation.zip

PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/common/app/com.miuimusic232.apk:system/app/com.miuimusic232.apk

PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/common/media/sounds/xperia.ogg:system/media/audio/ringtones/xperia.ogg \
    vendor/rootbox/prebuilt/common/media/sounds/xperia_z_breeze.ogg:system/media/audio/ringtones/xperia_z_breeze.ogg \
    vendor/rootbox/prebuilt/common/media/sounds/xperia_z_rise.ogg:system/media/audio/ringtones/xperia_z_rise.ogg \
    vendor/rootbox/prebuilt/common/media/sounds/xperia1_z.ogg:system/media/audio/ringtones/xperia1_z.ogg \
    vendor/rootbox/prebuilt/common/media/sounds/xperia2_z.ogg:system/media/audio/ringtones/xperia2_z.ogg \
    vendor/rootbox/prebuilt/common/media/sounds/Whistle.ogg:system/media/audio/notifications/s_whistle.ogg