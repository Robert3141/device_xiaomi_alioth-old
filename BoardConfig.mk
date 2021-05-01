# Inherit from xiaomi sm8250-common
-include device/xiaomi/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/alioth

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Display
TARGET_SCREEN_DENSITY := 395

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_alioth
TARGET_RECOVERY_DEVICE_MODULES := libinit_alioth

# Kernel
include kernel/xiaomi/alioth/Makefile
TARGET_KERNEL_CONFIG := vendor/alioth_defconfig

# Properties
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop

# inherit from proprietary version
-include vendor/xiaomi/alioth/BoardConfigVendor.mk