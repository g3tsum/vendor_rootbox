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
PRODUCT_BRAND := LG
PRODUCT_DEVICE := geeb
PRODUCT_MODEL := Optimus G
PRODUCT_MANUFACTURER := LGE

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=occam BUILD_FINGERPRINT=google/gee/geeb:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="gee-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

# Copy Bootanimation
PRODUCT_COPY_FILES += \
    vendor/houstonn/prebuilt/common/media/test-3-ani.zip:system/media/bootanimation.zip