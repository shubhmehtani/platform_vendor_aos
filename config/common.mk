# Inherit common AOS stuff
$(call inherit-product, vendor/aos/config/telephony.mk)

$(call inherit-product, vendor/aos/config/aos_props.mk)

# Disable excessive dalvik debug messages
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.debug.alloc=0

# Backup tool
PRODUCT_COPY_FILES += \
    vendor/aos/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/aos/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/aos/prebuilt/common/bin/50-aos.sh:system/addon.d/50-aos.sh

# Backup services whitelist
PRODUCT_COPY_FILES += \
    vendor/aos/config/permissions/backup.xml:system/etc/sysconfig/backup.xml

# BT config
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.nonsmartphone.conf:system/etc/bluetooth/main.conf

# Signature compatibility validation
PRODUCT_COPY_FILES += \
    vendor/aos/prebuilt/common/bin/otasigcheck.sh:install/bin/otasigcheck.sh

# Aos-specific init file
PRODUCT_COPY_FILES += \
    vendor/aos/prebuilt/common/etc/init.local.rc:root/init.aos.rc

# Copy LatinIME for gesture typing
PRODUCT_COPY_FILES += \
    vendor/aos/prebuilt/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so

# SELinux filesystem labels
PRODUCT_COPY_FILES += \
    vendor/aos/prebuilt/common/etc/init.d/50selinuxrelabel:system/etc/init.d/50selinuxrelabel

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/aos/prebuilt/common/etc/mkshrc:system/etc/mkshrc \
    vendor/aos/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf

# Fix Dialer
PRODUCT_COPY_FILES +=  \
    vendor/aos/prebuilt/common/sysconfig/dialer_experience.xml:system/etc/sysconfig/dialer_experience.xml

# Aos-specific startup services
PRODUCT_COPY_FILES += \
    vendor/aos/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/aos/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit \
    vendor/aos/prebuilt/common/bin/sysinit:system/bin/sysinit

# Required packages
PRODUCT_PACKAGES += \
    Development \
    SpareParts \
    LockClock \
    su

# Optional packages
PRODUCT_PACKAGES += \
    Basic \
    LiveWallpapersPicker \
    PhaseBeam

# Include explicitly to work around GMS issues
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full \
    librsjni

# AudioFX
PRODUCT_PACKAGES += \
    AudioFX

# Extra AOS packages
PRODUCT_PACKAGES += \
    Calculator \
    LatinIME \
    BluetoothExt \
    Retro \
    Turbo \
    Launcher3

# Themes
PRODUCT_PACKAGES += \
    PixelTheme \
    Stock

# Extra tools
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    fsck.exfat \
    mkfs.exfat \
    ntfsfix \
    ntfs-3g

# MusicFX advanced effects
#ifneq ($(TARGET_NO_DSPMANAGER), true)
#PRODUCT_PACKAGES += \
#    libcyanogen-dsp \
#    audio_effects.conf
#endif

# Custom off-mode charger
#ifneq ($(WITH_CM_CHARGER),false)
#PRODUCT_PACKAGES += \
#    charger_res_images \
#    cm_charger_res_images \
#    font_log.png \
#    libhealthd.cm
#endif

# DU Utils library
#PRODUCT_BOOT_JARS += \
#    org.dirtyunicorns.utils

# DU Utils library
#PRODUCT_PACKAGES += \
#    org.dirtyunicorns.utils

# Magisk Manager
PRODUCT_PACKAGES += \
    MagiskManager

# Magisk
PRODUCT_COPY_FILES += \
   vendor/aos/prebuilt/common/addon.d/magisk.zip:system/addon.d/magisk.zip

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libffmpeg_extractor \
    libffmpeg_omx \
    media_codecs_ffmpeg.xml

# easy way to extend to add more packages
-include vendor/extra/product.mk

PRODUCT_PACKAGE_OVERLAYS += vendor/aos/overlay/common

 # Bootanimation
$(call inherit-product, vendor/aos/prebuilt/common/bootanimation/bootanimation.mk)

# Versioning System
# aos first version.
PRODUCT_VERSION_MAJOR = 0.1
PRODUCT_VERSION_MINOR = Trial
PRODUCT_VERSION_MAINTENANCE = 1.0
AOS_POSTFIX := -$(shell date +"%Y%m%d-%H%M")
ifdef AOS_BUILD_EXTRA
    AOS_POSTFIX := -$(AOS_BUILD_EXTRA)
endif

ifndef AOS_BUILD_TYPE
    AOS_BUILD_TYPE := UNOFFICIAL
endif

# Set all versions
AOS_VERSION := Aos-$(AOS_BUILD)-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-$(AOS_BUILD_TYPE)$(AOS_POSTFIX)
AOS_MOD_VERSION := Aos-$(AOS_BUILD)-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-$(AOS_BUILD_TYPE)$(AOS_POSTFIX)

PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    aos.ota.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE) \
    ro.aos.version=$(AOS_VERSION) \
    ro.modversion=$(AOS_MOD_VERSION) \
    ro.aos.buildtype=$(AOS_BUILD_TYPE)

EXTENDED_POST_PROCESS_PROPS := vendor/aos/tools/aos_process_props.py
