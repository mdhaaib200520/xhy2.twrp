
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from generic device
$(call inherit-product, device/xiaomi/lake/device.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_DEVICE := lake
PRODUCT_NAME := twrp_lake
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 14C
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_USE_DYNAMIC_PARTITION_SIZE := true
# অ্যান্ড্রয়েড ১৫ (API 35) এর জন্য Retrofit অবশ্যই false হতে হবে (কারণ এটি নতুন ডিভাইস)
#PRODUCT_RETROFIT_DYNAMIC_PARTITIONS := false
