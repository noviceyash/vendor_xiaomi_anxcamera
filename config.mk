PRODUCT_SOONG_NAMESPACES += \
    vendor/xiaomi/anxcamera

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/xiaomi/anxcamera/proprietary/system/etc,$(TARGET_COPY_OUT_SYSTEM)/etc) \
    $(call find-copy-subdir-files,*,vendor/xiaomi/anxcamera/proprietary/system/framework,$(TARGET_COPY_OUT_SYSTEM)/framework) \
    $(call find-copy-subdir-files,*,vendor/xiaomi/anxcamera/proprietary/system/lib,$(TARGET_COPY_OUT_SYSTEM)/lib) \
    $(call find-copy-subdir-files,*,vendor/xiaomi/anxcamera/proprietary/system/lib64,$(TARGET_COPY_OUT_SYSTEM)/lib64) \
    $(call find-copy-subdir-files,*,vendor/xiaomi/anxcamera/proprietary/system/priv-app/ANXExtraPhoto/lib,$(TARGET_COPY_OUT_SYSTEM)/priv-app/ANXExtraPhoto/lib) \
    $(call find-copy-subdir-files,*,vendor/xiaomi/anxcamera/proprietary/system/priv-app/ANXScanner/lib,$(TARGET_COPY_OUT_SYSTEM)/priv-app/ANXScanner/lib)

PRODUCT_PACKAGES += \
    ANXCamera \
    ANXExtraPhoto \
    ANXScanner \
    anxres
