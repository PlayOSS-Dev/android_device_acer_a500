#
# Copyright (C) 2012 The CyanogenMod Project
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
#
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

#kernel
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/kernel:kernel

# inherit proprietary files
$(call inherit-product-if-exists, vendor/acer/a500/a500-vendor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, build/target/product/full_base.mk)
$(call inherit-product, device/common/gps/gps_us_supl.mk)
$(call inherit-product-if-exists, framework/base/data/videos/VideoPackage2.mk)

WIFI_BAND := 802_11_ABG
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk)

PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory \
    audio.a2dp.default \
    audio.primary.picasso \
    libaudioutils \
    libtinyalsa \
    libnetcmdiface \
    make_ext4fs \
    librs_jni \
    setup_fs \
    liba2dp \
    tinymix \
    tinyplay \
    tinycap \
    tinyrec \
    Torch \
    rild

# ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/ramdisk/init.picasso.usb.rc:root/init.picasso.usb.rc \
    $(LOCAL_PATH)/prebuilt/ramdisk/ueventd.picasso.rc:root/ueventd.picasso.rc \
    $(LOCAL_PATH)/prebuilt/ramdisk/init.picasso.rc:root/init.picasso.rc \
    $(LOCAL_PATH)/prebuilt/ramdisk/fstab.picasso:root/fstab.picasso 
    
# firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/bcmdhd.cal:system/vendor/firmware/bcmdhd.cal \
    $(LOCAL_PATH)/prebuilt/vendor/firmware/fw_bcmdhd_p2p.bin:system/vendor/firmware/fw_bcmdhd_p2p.bin \
    $(LOCAL_PATH)/prebuilt/vendor/firmware/BCM4329B1_002.002.023.0797.0863.hcd:system/etc/firmware/BCM4329B1_002.002.023.0797.0863.hcd \
    $(LOCAL_PATH)/prebuilt/bin/wifimacwriter:system/bin/wifimacwriter \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf 

# usbnet modules
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/lib/modules/asix.ko:system/lib/modules/asix.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/catc.ko:system/lib/modules/catc.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/cx82310_eth.ko:system/lib/modules/cx82310_eth.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/dm9601.ko:system/lib/modules/dm9601.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/int51x1.ko:system/lib/modules/int51x1.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/kalmia.ko:system/lib/modules/kalmia.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/kaweth.ko:system/lib/modules/kaweth.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/mcs7830.ko:system/lib/modules/mcs7830.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/pegasus.ko:system/lib/modules/pegasus.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/rtl8150.ko:system/lib/modules/rtl8150.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/sierra_net.ko:system/lib/modules/sierra_net.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/smsc75xx.ko:system/lib/modules/smsc75xx.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/smsc95xx.ko:system/lib/modules/smsc95xx.ko \
    $(LOCAL_PATH)/prebuilt/lib/firmware/kaweth/new_code.bin:system/lib/firmware/kaweth/new_code.bin \
    $(LOCAL_PATH)/prebuilt/lib/firmware/kaweth/new_code_fix.bin:system/lib/firmware/kaweth/new_code_fix.bin \
    $(LOCAL_PATH)/prebuilt/lib/firmware/kaweth/trigger_code.bin:system/lib/firmware/kaweth/trigger_code.bin \
    $(LOCAL_PATH)/prebuilt/lib/firmware/kaweth/trigger_code_fix.bin:system/lib/firmware/kaweth/trigger_code_fix.bin
    
# hw permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml 

# prebuilt configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/prebuilt/etc/audio_effects.conf:system/etc/audio_effects.conf \
    $(LOCAL_PATH)/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/prebuilt/etc/gpsconfig.xml:system/etc/gps/gpsconfig.xml \
    $(LOCAL_PATH)/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/prebuilt/data/srs_processing.cfg:system/data/srs_processing.cfg \
    $(LOCAL_PATH)/libaudio/mixer_paths.xml:system/etc/mixer_paths.xml 

# Huawei_3GUSB
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/lib/libhuawei-ril.so:system/lib/libhuawei-ril.so \
    $(LOCAL_PATH)/prebuilt/etc/init.d/02ppp.sh:system/etc/init.d/02ppp.sh \
    $(LOCAL_PATH)/prebuilt/etc/ppp/peers/3g:system/etc/ppp/peers/3g \
    $(LOCAL_PATH)/prebuilt/etc/ppp/peers/gprs:system/etc/ppp/peers/gprs \
    $(LOCAL_PATH)/prebuilt/etc/ppp/peers/pppd-ril.options:system/etc/ppp/peers/pppd-ril.options \
    $(LOCAL_PATH)/prebuilt/etc/ppp/chap-secrets:system/etc/ppp/chap-secrets \
    $(LOCAL_PATH)/prebuilt/etc/ppp/gprs-connect-chat:system/etc/ppp/gprs-connect-chat \
    $(LOCAL_PATH)/prebuilt/etc/ppp/ip-down:system/etc/ppp/ip-down \
    $(LOCAL_PATH)/prebuilt/etc/ppp/ip-down-HUAWEI:system/etc/ppp/ip-down-HUAWEI \
    $(LOCAL_PATH)/prebuilt/etc/ppp/ip-up:system/etc/ppp/ip-up \
    $(LOCAL_PATH)/prebuilt/etc/ppp/ip-up-HUAWEI:system/etc/ppp/ip-up-HUAWEI \
    $(LOCAL_PATH)/prebuilt/etc/ppp/ip-up-vpn:system/etc/ppp/ip-up-vpn \
    $(LOCAL_PATH)/prebuilt/etc/ppp/options.huawei:system/etc/ppp/options.huawei \
    $(LOCAL_PATH)/prebuilt/etc/ppp/pap-secrets:system/etc/ppp/pap-secrets
    
# keychars/layout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/idc/atmel-maxtouch.idc:system/usr/idc/atmel-maxtouch.idc \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/acer-dock.kl:system/usr/keylayout/acer-dock.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/prebuilt/usr/keychars/Acer-AK00LB.kcm:system/usr/keychars/Acer-AK00LB.kcm \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/Acer-AK00LB.kl:system/usr/keylayout/Acer-AK00LB.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/Bluetooth_00_06_66_42.kl:system/usr/keylayout/Bluetooth_00_06_66_42.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/Vendor_044f_Product_d007.kl:system/usr/keylayout/Vendor_044f_Product_d007.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_028e.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/Vendor_045e_Product_0719.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/Vendor_046d_Product_c216.kl:system/usr/keylayout/Vendor_046d_Product_c216.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/Vendor_046d_Product_c21d.kl:system/usr/keylayout/Vendor_046d_Product_c21d.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/Vendor_046d_Product_c21e.kl:system/usr/keylayout/Vendor_046d_Product_c21e.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/Vendor_046d_Product_c21f.kl:system/usr/keylayout/Vendor_046d_Product_c21f.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/Vendor_046d_Product_c294.kl:system/usr/keylayout/Vendor_046d_Product_c294.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/Vendor_046d_Product_c299.kl:system/usr/keylayout/Vendor_046d_Product_c299.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/Vendor_046d_Product_c532.kl:system/usr/keylayout/Vendor_046d_Product_c532.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/Vendor_054c_Product_0268.kl:system/usr/keylayout/Vendor_054c_Product_0268.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/Vendor_057e_Product_0306.kl:system/usr/keylayout/Vendor_057e_Product_0306.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/Vendor_05ac_Product_0239.kl:system/usr/keylayout/Vendor_05ac_Product_0239.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/Vendor_22b8_Product_093d.kl:system/usr/keylayout/Vendor_22b8_Product_093d.kl

# for bugreport, with screen capture, and send mail intent
PRODUCT_PACKAGES += send_bug
PRODUCT_COPY_FILES += \
    system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
    system/extras/bugmailer/send_bug:system/bin/send_bug

PRODUCT_PROPERTY_OVERRIDES := \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=30 \

PRODUCT_PROPERTY_OVERRIDES += ro.dinfo.radio=Wifi

PRODUCT_CHARACTERISTICS := tablet

# Bluetooth config file
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.nonsmartphone.conf:system/etc/bluetooth/main.conf \

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-data-only=1 \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=96m \
    dalvik.vm.heapsize=384m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m

PRODUCT_NAME := cm_a500
PRODUCT_DEVICE := a500
PRODUCT_BRAND := acer
PRODUCT_MODEL := a500
