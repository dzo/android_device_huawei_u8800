#$(call inherit-product, device/qcom/common/common.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

$(call inherit-product, device/common/gps/gps_eu_supl.mk)

DEVICE_PACKAGE_OVERLAYS := device/huawei/u8800/overlay




PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := huawei_u8800
PRODUCT_DEVICE := u8800
PRODUCT_MODEL := huawei u8800
PRODUCT_MANUFACTURER := huawei
#PRODUCT_LOCALES := zh_CN zh_TW en_US

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel

#PRODUCT_COPY_FILES += \
#    device/huawei/u8800/gps.conf:/system/etc/gps.conf

PRODUCT_COPY_FILES += \
    device/huawei/u8800/init.rc:root/init.rc \
    device/huawei/u8800/init.u8800.rc:root/init.u8800.rc \
    device/huawei/u8800/ueventd.u8800.rc:root/ueventd.u8800.rc

$(call inherit-product-if-exists, vendor/huawei/u8800/u8800-vendor.mk)



PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:/system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:/system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:/system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:/system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:/system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:/system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:/system/etc/permissions/android.hardware.telephony.gsm.xml


PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    Gallery3d \
    SpareParts \
    Term \
    librs_jni \
    overlay.default \
    gps.u8800 \
    libcamera \
    libOmxCore \
    libOmxVdec \
#    libOmxVenc \

# Firmware mm
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/etc/firmware/vidc_720p_command_control.fw:/system/etc/firmware/vidc_720p_command_control.fw \
    device/huawei/u8800/system/etc/firmware/vidc_720p_h263_dec_mc.fw:/system/etc/firmware/vidc_720p_h263_dec_mc.fw \
    device/huawei/u8800/system/etc/firmware/vidc_720p_h264_dec_mc.fw:/system/etc/firmware/vidc_720p_h264_dec_mc.fw \
    device/huawei/u8800/system/etc/firmware/vidc_720p_h264_enc_mc.fw:/system/etc/firmware/vidc_720p_h264_enc_mc.fw \
    device/huawei/u8800/system/etc/firmware/vidc_720p_mp4_dec_mc.fw:/system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
    device/huawei/u8800/system/etc/firmware/vidc_720p_mp4_enc_mc.fw:/system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
    device/huawei/u8800/system/etc/firmware/vidc_720p_vc1_dec_mc.fw:/system/etc/firmware/vidc_720p_vc1_dec_mc.fw \
    device/huawei/u8800/system/etc/firmware/yamato_pfp.fw:/system/etc/firmware/yamato_pfp.fw \
    device/huawei/u8800/system/etc/firmware/yamato_pm4.fw:/system/etc/firmware/yamato_pm4.fw

# Firmware wlan
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/etc/firmware/wlan/qcom_fw.bin:/system/etc/firmware/wlan/qcom_fw.bin \
    device/huawei/u8800/system/etc/firmware/wlan/qcom_wapi_fw.bin:/system/etc/firmware/wlan/qcom_wapi_fw.bin \
    device/huawei/u8800/system/etc/firmware/wlan/qcom_wlan_nv.bin:/system/etc/firmware/wlan/qcom_wlan_nv.bin \
    device/huawei/u8800/system/etc/firmware/wlan/cfg.dat:/system/etc/firmware/wlan/cfg.dat \
    device/huawei/u8800/system/etc/firmware/wlan/hostapd_default.conf:/system/etc/firmware/wlan/hostapd_default.conf \
    device/huawei/u8800/system/etc/firmware/wlan/qcom_cfg.ini:/system/etc/firmware/wlan/qcom_cfg.ini \
    device/huawei/u8800/system/etc/wifi/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf \

# OpenGL
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/lib/egl/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \
    device/huawei/u8800/system/lib/egl/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \
    device/huawei/u8800/system/lib/egl/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \
    device/huawei/u8800/system/lib/egl/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so \
    device/huawei/u8800/system/lib/libgsl.so:/system/lib/libgsl.so \
    device/huawei/u8800/system/lib/hw/gralloc.msm7k.so:/system/lib/hw/gralloc.u8800.so \


# etc
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/etc/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
    device/huawei/u8800/system/etc/init.qcom.bt.sh:/system/etc/init.qcom.fm.sh \
    device/huawei/u8800/system/etc/init.qcom.sdio.sh:/system/etc/init.qcom.sdio.sh \
    device/huawei/u8800/system/etc/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh \
    device/huawei/u8800/system/etc/media_profiles.xml:/system/etc/media_profiles.xml \
    device/huawei/u8800/system/etc/init.qcom.coex.sh:/system/etc/init.qcom.coex.sh\
    device/huawei/u8800/system/etc/vold.fstab:/system/etc/vold.fstab

# mm
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/lib/libmm-adspsvc.so:/system/lib/libmm-adspsvc.so \
    device/huawei/u8800/system/lib/libgemini.so:/system/lib/libgemini.so \
    device/huawei/u8800/system/lib/libOmxVenc.so:/system/lib/libOmxVenc.so \

#ril
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/lib/libril-qc-1.so:/system/lib/libril-qc-1.so \
    device/huawei/u8800/system/lib/libril-qcril-hook-oem.so:/system/lib/libril-qcril-hook-oem.so \
    device/huawei/u8800/system/lib/libdiag.so:/system/lib/libdiag.so \
    device/huawei/u8800/system/lib/liboncrpc.so:/system/lib/liboncrpc.so \
    device/huawei/u8800/system/lib/libqmi.so:/system/lib/libqmi.so \
    device/huawei/u8800/system/lib/libdsm.so:/system/lib/libdsm.so \
    device/huawei/u8800/system/lib/libqueue.so:/system/lib/libqueue.so \
    device/huawei/u8800/system/lib/libdll.so:/system/lib/libdll.so \
    device/huawei/u8800/system/lib/libcm.so:/system/lib/libcm.so \
    device/huawei/u8800/system/lib/libmmgsdilib.so:/system/lib/libmmgsdilib.so \
    device/huawei/u8800/system/lib/libgsdi_exp.so:/system/lib/libgsdi_exp.so \
    device/huawei/u8800/system/lib/libgstk_exp.so:/system/lib/libgstk_exp.so \
    device/huawei/u8800/system/lib/libwms.so:/system/lib/libwms.so \
    device/huawei/u8800/system/lib/libnv.so:/system/lib/libnv.so \
    device/huawei/u8800/system/lib/libwmsts.so:/system/lib/libwmsts.so \
    device/huawei/u8800/system/lib/libpbmlib.so:/system/lib/libpbmlib.so \
    device/huawei/u8800/system/lib/libdss.so:/system/lib/libdss.so \
    device/huawei/u8800/system/lib/libauth.so:/system/lib/libauth.so \
    device/huawei/u8800/system/lib/libhwrpc.so:/system/lib/libhwrpc.so \


# init bin
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/bin/qmuxd:/system/bin/qmuxd \
    device/huawei/u8800/system/bin/hci_qcomm_init:/system/bin/hci_qcomm_init \

# other bin
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/bin/compassd:/system/bin/compassd \
    device/huawei/u8800/system/bin/rmt_oeminfo:/system/bin/rmt_oeminfo \
    device/huawei/u8800/system/bin/rmt_storage:/system/bin/rmt_storage \
    device/huawei/u8800/system/bin/hw_diag_app:/system/bin/hw_diag_app \
    device/huawei/u8800/system/bin/oem_rpc_svc:/system/bin/oem_rpc_svc \
    device/huawei/u8800/system/bin/load_oemlogo:/system/bin/load_oemlogo \
    device/huawei/u8800/system/bin/oeminfo_test:/system/bin/oeminfo_test \
    device/huawei/u8800/system/bin/kmsgcat:/system/bin/kmsgcat \
#    device/huawei/u8800/system/bin/port-bridge:/system/bin/port-bridge \
    device/huawei/u8800/system/bin/hwvefs:/system/bin/hwvefs \


# bluetooth bin
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/bin/bluetoothd:/system/bin/bluetoothd \
    device/huawei/u8800/system/bin/btwlancoex:/system/bin/btwlancoex \
    device/huawei/u8800/system/bin/hciattach:/system/bin/hciattach \

# Camera
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/lib/liboemcamera.so:/system/lib/liboemcamera.so \
    device/huawei/u8800/system/lib/libmmjpeg.so:/system/lib/libmmjpeg.so \
    device/huawei/u8800/system/lib/libmmipl.so:/system/lib/libmmipl.so \
    device/huawei/u8800/system/lib/libcamera.so:/system/lib/libcamera.so \
    device/huawei/u8800/system/lib/libcamera.so:/obj/lib/libcamera.so \
#    device/huawei/u8800/system/lib/liboverlay.so:/system/lib/liboverlay.so \
#    device/huawei/u8800/system/lib/liboverlay.so:/obj/lib/liboverlay.so \
#    device/huawei/u8800/system/lib/hw/overlay.default.so:/system/lib/hw/overlay.default.so \

#Useful Apps
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/app/LauncherPro.apk:/system/app/LauncherPro.apk \
    device/huawei/u8800/system/app/TitaniumBackup.apk:/system/app/TitaniumBackup.apk

# sensors
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/lib/hw/sensors.default.so:/system/lib/hw/sensors.u8800.so \
    device/huawei/u8800/system/lib/liboem_rapi.so:/system/lib/liboem_rapi.so \
    device/huawei/u8800/system/bin/modempre:/system/bin/modempre

# wifi
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/bin/wpa_supplicant:/system/bin/wpa_supplicant \
    device/huawei/u8800/system/bin/wpa_cli:/system/bin/wpa_cli \
    device/huawei/u8800/wifi/libra.ko:/system/lib/modules/libra.ko \
    device/huawei/u8800/wifi/librasdioif.ko:/system/lib/modules/librasdioif.ko \
    
#gps

PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/lib/libcommondefs.so:/system/lib/libcommondefs.so \
    device/huawei/u8800/system/lib/libcommondefs.so:/obj/lib/libcommondefs.so \


PRODUCT_PROPERTY_OVERRIDES := \
    keyguard.no_require_sim=true \
    ro.com.android.dateformat=dd-MM-yyyy \
    ro.build.baseband_version=129005 \
    ro.telephony.default_network=0 \
    ro.telephony.call_ring.multiple=false
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \


PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libril-qc-1.so \
    rild.libargs=-d /dev/smd0 \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15 \
    ro.com.android.dataroaming=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    persist.sys.language=en \
    persist.sys.country=US \

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.hwfeature_slavecamera=yes \
    ro.config.hwcameraset=63 \
    hw.secondary_mic=0 \
    ro.config.hw_addsettingsdbex=1 \
    ro.config.hw_gcf_mms=true \
    ro.config.wifi_chip_is_bcm=false \
    ro.config.hwft_PNN_function=true \
    persist.cust.tel.adapt=1 \
    persist.cust.tel.eons=1 \
    ro.config.hwfeature_gps_test=0 \
    ro.config.hwfeature_ecc=true \
    ro.config.lowbattery_shutdown=1 \
    ro.config.hwfeature_wakeupkey=1 \
    ro.config.endkeybehavior=true \
    ro.config.hw_menu_unlockscreen=false \
    ro.media.enc.lprof.duration=30 \
    ro.config.PicMaxSize=5mp \
    ro.config.hw_temperature_warn=true \
    ro.config.hw_clocksetting=0

# u8800 uses high-density artwork where available
PRODUCT_LOCALES += hdpi

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# This should not be needed but on-screen keyboard uses the wrong density without it.
PRODUCT_PROPERTY_OVERRIDES += \
    qemu.sf.lcd_density=240 


PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enable_bypass=1 \
    ro.media.dec.jpeg.memcap=20000000 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y \
    dalvik.vm.heapsize=32m \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.dexopt-data-only=1 \
    ro.opengles.version=131072  \
    ro.compcache.default=0


$(call inherit-product-if-exists, vendor/huawei/u8800/u8800-vendor.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)
# common msm7x30 configs
#$(call inherit-product, device/htc/msm7x30-common/msm7x30.mk)
