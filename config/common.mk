#Bootanimation
ifneq ($(filter i9300 n7100,$(TARGET_DEVICE)),)
PRODUCT_COPY_FILES += \
    vendor/haxynox/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip
endif

#Launcher
PRODUCT_PACKAGES += \
    Launcher3
