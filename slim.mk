$(call inherit-product, device/samsung/crespo4g/full_crespo4g.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/slim/config/cdma.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit device settings
$(call inherit-product, vendor/slim/config/common_nexus.mk)

# Inherit torch settings
$(call inherit-product, vendor/slim/config/common_ledflash.mk)

#bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

#copy modified lights.s5pc110.so for BLN support
PRODUCT_COPY_FILES += \
    device/samsung/crespo4g/prebuilt/system/lib/hw/lights.s5pc110.so:system/lib/hw/lights.s5pc110.so

#camera info
PRODUCT_PROPERTY_OVERRIDES += \
    ro.camera.res=5MP

#copy 00check
PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check

# Release name
PRODUCT_RELEASE_NAME := crespo4g

# Use build.prop values similar to Google's values
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sojus \
    BUILD_FINGERPRINT="google/sojus/crespo4g:4.1.2/JZO54K/485486:user/release-keys" \
    PRIVATE_BUILD_DESC="sojus-user 4.1.2 JZO54K 485486 release-keys" \
    BUILD_NUMBER=485486

PRODUCT_NAME := slim_crespo4g
PRODUCT_DEVICE := crespo4g
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus S 4G
PRODUCT_MANUFACTURER := Samsung
