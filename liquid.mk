# name
PRODUCT_RELEASE_NAME := GN-CDMA

# device
$(call inherit-product-if-exists, device/samsung/toro/full_toro.mk)

# phone
$(call inherit-product, vendor/liquid/config/common_phone.mk)

# products
PRODUCT_DEVICE := toro
PRODUCT_BRAND := Google
PRODUCT_NAME := liquid_toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=liquid.toro.$(shell date +%m%d%y).$(shell date +%H%M%S)

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
PRODUCT_NAME=mysid \
BUILD_FINGERPRINT="google/mysid/toro:4.2.2/JDQ39/573038:user/release-keys" \
PRIVATE_BUILD_DESC="mysid-user 4.2.2 JDQ39 573038 release-keys"
