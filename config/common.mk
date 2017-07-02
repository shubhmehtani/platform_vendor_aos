# Copyright (C) 2017 Atomic-OS
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include vendor/aos/config/version.mk

PRODUCT_BRAND ?= Atomic-OS

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/aos/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/aos/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/aos/prebuilt/common/bin/50-base.sh:system/addon.d/50-base.sh \

# Bootanimation
$(call inherit-product, vendor/aos/prebuilt/common/bootanimation/bootanimation.mk)

DEVICE_PACKAGE_OVERLAYS += \
    vendor/aos/overlay/common \
    vendor/aos/overlay/dictionaries

# Custom AOS packages
PRODUCT_PACKAGES += \
    BluetoothExt \
    LatinIME \
    Launcher3 \
    LiveWallpapers \
    LiveWallpapersPicker \
    Stk \
    ThemeInterfacer \
    Turbo \
    ViaBrowser \
    Amaze

# Extra tools
PRODUCT_PACKAGES += \
    e2fsck \
    mke2fs \
    tune2fs \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    mkfs.ntfs \
    fsck.ntfs \
    mount.ntfs \
    7z \
    bzip2 \
    curl \
    lib7z \
    powertop \
    pigz \
    tinymix \
    unrar \
    unzip \
    zip

# Exchange support
PRODUCT_PACKAGES += \
    Exchange2

# Backup Services whitelist
PRODUCT_COPY_FILES += \
    vendor/aos/config/permissions/backup.xml:system/etc/sysconfig/backup.xml
    
# For keyboard gesture typing
ifneq ($(filter jflte,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/aos/prebuilt/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinime.so
else
PRODUCT_COPY_FILES += \
    vendor/aos/prebuilt/common/lib64/libjni_latinimegoogle.so:system/lib64/libjni_latinime.so
endif
    
# init.d support
PRODUCT_COPY_FILES += \
    vendor/aos/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/aos/prebuilt/common/bin/sysinit:system/bin/sysinit

# AOS-specific init file
PRODUCT_COPY_FILES += \
    vendor/aos/prebuilt/common/etc/init.local.rc:root/init.aos.rc

# Copy over added mimetype supported in libcore.net.MimeUtils
PRODUCT_COPY_FILES += \
    vendor/aos/prebuilt/common/lib/content-types.properties:system/lib/content-types.properties

# Copy over added mimetype supported in libcore.net.MimeUtils
PRODUCT_COPY_FILES += \
    vendor/aos/prebuilt/common/lib/content-types.properties:system/lib/content-types.properties

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Enable wireless Xbox 360 controller support
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libffmpeg_extractor \
    libffmpeg_omx \
    media_codecs_ffmpeg.xml

# Needed by some RILs and for some gApps packages
PRODUCT_PACKAGES += \
    librsjni \
    libprotobuf-cpp-full

# Charger images
PRODUCT_PACKAGES += \
    charger_res_images

# DSP
ifeq ($(WITH_DSPMANAGER), true)
PRODUCT_PACKAGES += \
    MusicFX \
    libcyanogen-dsp \
    audio_effects.conf
else
$(warning you are not using dsp manager, please use 'WITH_DSPMANAGER := true' to define it)
endif

# AudioFX
ifeq ($(WITH_AUDIOFX), true)
PRODUCT_PACKAGES += \
    AudioFX
else
$(warning you are not using audiofx, please use 'WITH_AUDIOFX := true' to define it)
endif

# DU Utils Library
PRODUCT_PACKAGES += \
    org.dirtyunicorns.utils

PRODUCT_BOOT_JARS += \
    org.dirtyunicorns.utils


# Magisk
ifeq ($(WITH_ROOT),true)
 PRODUCT_COPY_FILES += \
    vendor/aos/prebuilt/common/magisk/Magisk.zip:system/addon.d/magisk.zip

 PRODUCT_PACKAGES += \
    MagiskManager
else
$(warning Root method is undefined, please use 'WITH_ROOT := true' to define it)
endif
