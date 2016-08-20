ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

PRODUCT_PACKAGE_OVERLAYS += vendor/haxynox/overlay/common

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/haxynox/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/haxynox/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \

#Bootanimation
PRODUCT_COPY_FILES += \
    vendor/haxynox/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip

#Launcher
PRODUCT_PACKAGES += \
    Launcher3 \
    busybox \
    static_busybox
