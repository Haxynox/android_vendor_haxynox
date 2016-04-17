#Bootanimation
PRODUCT_COPY_FILES += \
    vendor/haxynox/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip

# exfat
PRODUCT_PACKAGES += \
    fsck.exfat \
    mount.exfat \
    mkfs.exfat \
    libexfat \
    libexfat_static \
    libfuse \
    libfuse_static

#Launcher
PRODUCT_PACKAGES += \
    Launcher3
