## Specify phone tech before including full_phone
$(call inherit-product, vendor/liquid/config/common_gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 768

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/liquid/config/common_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/liquid/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/e970/full_e970.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := e970
PRODUCT_NAME := liquid_e970
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-E970
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=google/occam/mako:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2.2 JDQ39 573038 release-keys"
