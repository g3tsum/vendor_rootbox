# Inherit AOSP device configuration for m7
$(call inherit-product, device/htc/m7/full_m7.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/rootbox/configs/gsm.mk)

# Inherit RootBox common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# M7 Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/m7

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xhdpi

# Setup device specific product configuration
PRODUCT_NAME := rootbox_m7
PRODUCT_BRAND := HTC
PRODUCT_DEVICE := m7
PRODUCT_MODEL := HTC One
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=occam BUILD_FINGERPRINT=google/bm/m7:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="m7-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

# Copy Bootanimation
PRODUCT_COPY_FILES += \
    vendor/htc/m7/prebuilt/common/media/test-3-ani.zip:system/media/bootanimation.zip