# Inherit AOSP device configuration for gee
$(call inherit-product, device/lge/geehrc4g_spr_us/full_geehrc4g_spr_us.mk)

# Inherit CDMA common stuff
$(call inherit-product, vendor/rootbox/configs/cdma.mk)

# Inherit RootBox common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# Geeb Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/geeb

# CDMATools
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/CDMATools

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xhdpi

# Setup device specific product configuration
PRODUCT_NAME := rootbox_geehrc4g_spr_us
PRODUCT_BRAND := LGE
PRODUCT_DEVICE := geehrc4g_spr_us
PRODUCT_MODEL := Optimus G
PRODUCT_MANUFACTURER := LGE

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=lge BUILD_FINGERPRINT=lge/gee/geehrc:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="gee-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

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

PRODUCT_PACKAGES += \
    CDMATools
