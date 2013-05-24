# Inherit AOSP device configuration for gee
$(call inherit-product, device/lge/geehrc4g_spr_us/full_geehrc4g_spr_us.mk)

# Inherit CDMA common stuff
$(call inherit-product, vendor/rootbox/configs/cdma.mk)

# Inherit RootBox common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# Inherit houstonn sound package
$(call inherit-product, vendor/rootbox/configs/soundpackage.mk)

# Geeb Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/geeb

# CDMATools
# PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/CDMATools

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
    vendor/rootbox/prebuilt/common/bootanimation/bootgeeb.zip:system/media/bootanimation.zip

# PRODUCT_PACKAGES += \
#    CDMATools