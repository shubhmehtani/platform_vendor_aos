# Telephony packages
PRODUCT_PACKAGES += \
    messaging \
    Stk \
    CellBroadcastReceiver \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# World APN list
PRODUCT_COPY_FILES += \
    vendor/aos/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Selective SPN list for operator number who has the problem.
PRODUCT_COPY_FILES += \
    vendor/aos/prebuilt/common/etc/selective-spn-conf.xml:system/etc/selective-spn-conf.xml
