LOCAL_PATH := device/woxter/qx120

$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)

ifeq ($(TARGET_PREBUILT_KERNEL),)
 LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
 LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
 $(LOCAL_PATH)/kernel:kernel \
 $(LOCAL_PATH)/ko/gslX680new.ko:root/gslX680new.ko \
 $(LOCAL_PATH)/ko/disp.ko:root/disp.ko \
 $(LOCAL_PATH)/ko/lcd.ko:root/lcd.ko \
 $(LOCAL_PATH)/ko/nand.ko:root/nand.ko \
 $(LOCAL_PATH)/ko/sunxi-keyboard.ko:root/sunxi-keyboard.ko \
 $(LOCAL_PATH)/ko/sw-device.ko:root/sw-device.ko \
 $(LOCAL_PATH)/rc/init.recovery.sun8i.rc:root/init.recovery.sun8i.rc \
 $(LOCAL_PATH)/rc/ueventd.sun8i.rc:root/ueventd.sun8i.rc \
 $(LOCAL_PATH)/recovery.fstab:root/recovery.fstab \
 $(LOCAL_PATH)/fstab.sun8i:root/fstab.sun8i

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := qx120
