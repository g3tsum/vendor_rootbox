# Inherit AOSP device configuration for geeb
$(call inherit-product, device/lge/geeb/full_geeb.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/rootbox/configs/gsm.mk)

# Inherit RootBox common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# Geeb Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/geeb

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xhdpi

# Setup device specific product configuration
PRODUCT_NAME := rootbox_geeb
PRODUCT_BRAND := LGE
PRODUCT_DEVICE := geeb
PRODUCT_MODEL := Optimus G
PRODUCT_MANUFACTURER := LGE

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=occam BUILD_FINGERPRINT=google/gee/geeb:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="gee-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

# Copy Bootanimation
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/common/bootanimation/test-3-ani.zip:system/media/bootanimation.zip

PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/common/app/com.miuimusic232.apk:system/app/com.miuimusic232.apk

PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/common/media/sounds/xperia.ogg:system/media/audio/ringtones/xperia.ogg \
    vendor/rootbox/prebuilt/common/media/sounds/xperia_z_breeze.ogg:system/media/audio/ringtones/xperia_z_breeze.ogg \
    vendor/rootbox/prebuilt/common/media/sounds/xperia_z_rise.ogg:system/media/audio/ringtones/xperia_z_rise.ogg \
    vendor/rootbox/prebuilt/common/media/sounds/xperia1_z.ogg:system/media/audio/ringtones/xperia1_z.ogg \
    vendor/rootbox/prebuilt/common/media/sounds/xperia2_z.ogg:system/media/audio/ringtones/xperia2_z.ogg \
    vendor/rootbox/prebuilt/common/media/sounds/Whistle.ogg:system/media/audio/notifications/s_whistle.ogg