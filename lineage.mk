#import device
$(call inherit:product, device/xiaomi/alioth/full_alioth.mk)

#import LineageOS stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_NAME := lineage_alioth
PRODUCT_DEVICE := alioth