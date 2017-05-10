# Inherit common AOS stuff
$(call inherit-product, vendor/aos/config/common.mk)

$(call inherit-product, vendor/aos/config/telephony.mk)

$(call inherit-product, vendor/aos/config/aos_props.mk)
