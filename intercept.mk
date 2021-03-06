# Inherit device configuration.
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)

PRODUCT_NAME         := intercept
PRODUCT_BRAND        := samsung
PRODUCT_DEVICE       := intercept
PRODUCT_MODEL        := intercept
PRODUCT_MANUFACTURER := SAMSUNG

# Used by BusyBox
KERNEL_MODULES_DIR   :=/lib/modules

# Use edify for otapackage
PRODUCT_SPECIFIC_DEFINES += TARGET_OTA_SCRIPT_MODE=amend
PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/device/samsung/intercept/prelink-linux-arm-intercept.map


# Tiny toolbox
#TINY_TOOLBOX         :=true

# Enable Windows Media if supported by the board
WITH_WINDOWS_MEDIA   :=true

PRODUCT_PACKAGES += \
    FileManager \
    Superuser

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.supplicant_scan_interval=90

## Get proprietary configuration if available
$(call inherit-product-if-exists, vendor/samsung/intercept/intercept-vendor.mk)

# Copyright (C) 2010 The Android Open Source Project
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


# Intercept proprietary
#

# system/bin
PRODUCT_COPY_FILES += \
    device/samsung/intercept/proprietary/bin/akmd2:system/bin/akmd2 \
    device/samsung/intercept/proprietary/bin/BCM4329B1_002.002.023.0417.0421.hcd:system/bin/BCM4329B1_002.002.023.0417.0421.hcd \
    device/samsung/intercept/proprietary/bin/bluetoothd:system/bin/bluetoothd \
    device/samsung/intercept/proprietary/bin/iqmsd:system/bin/iqmsd \
    device/samsung/intercept/proprietary/bin/mfgloader:system/bin/mfgloader \
    device/samsung/intercept/proprietary/bin/playlogo:system/bin/playlogo \
    device/samsung/intercept/proprietary/bin/pppd:system/bin/pppd \
    device/samsung/intercept/proprietary/bin/pppd_runner:system/bin/pppd_runner \
    device/samsung/intercept/proprietary/bin/rilclient-test:system/bin/rilclient-test \
    device/samsung/intercept/proprietary/bin/rild:system/bin/rild \
    device/samsung/intercept/proprietary/bin/wlservice:system/bin/wlservice \
    device/samsung/intercept/proprietary/bin/wpa_supplicant:system/bin/wpa_supplicant

# system/etc
PRODUCT_COPY_FILES += \
    device/samsung/intercept/proprietary/etc/audio/aeqcoe.txt:system/etc/audio/aeqcoe.txt \
    device/samsung/intercept/proprietary/etc/audio/eqfilter.txt:system/etc/audio/eqfilter.txt \
    device/samsung/intercept/proprietary/etc/audio/lmfilter.txt:system/etc/audio/lmfilter.txt \
    device/samsung/intercept/proprietary/etc/audio/situation.txt:system/etc/audio/situation.txt \
    device/samsung/intercept/proprietary/etc/audio/soundbooster.txt:system/etc/audio/soundbooster.txt \
    device/samsung/intercept/proprietary/etc/audio/stream_earpiece.txt:system/etc/audio/stream_earpiece.txt \
    device/samsung/intercept/proprietary/etc/audio/stream_headset.txt:system/etc/audio/stream_headset.txt \
    device/samsung/intercept/proprietary/etc/audio/stream_speaker.txt:system/etc/audio/stream_speaker.txt \

PRODUCT_COPY_FILES += \
    device/samsung/intercept/proprietary/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf

PRODUCT_COPY_FILES += \
    device/samsung/intercept/proprietary/etc/wifi/bcm4329_aps.bin:system/etc/wifi/bcm4329_aps.bin \
    device/samsung/intercept/proprietary/etc/wifi/bcm4329_mfg.bin:system/etc/wifi/bcm4329_mfg.bin \
    device/samsung/intercept/proprietary/etc/wifi/bcm4329_sta.bin:system/etc/wifi/bcm4329_sta.bin \
    device/samsung/intercept/proprietary/etc/wifi/nvram_mfg.txt:system/etc/wifi/nvram_mfg.txt \
    device/samsung/intercept/proprietary/etc/wifi/nvram_net.txt:system/etc/wifi/nvram_net.txt \
    device/samsung/intercept/proprietary/etc/wifi/wifi.conf:system/etc/wifi/wifi.conf \
    device/samsung/intercept/proprietary/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    device/samsung/intercept/proprietary/etc/ppp/chap-secrets:system/etc/ppp/chap-secrets \
    device/samsung/intercept/proprietary/etc/ppp/ip-down:system/etc/ppp/ip-down \
    device/samsung/intercept/proprietary/etc/ppp/ip-up:system/etc/ppp/ip-up \
    device/samsung/intercept/proprietary/etc/ppp/options:system/etc/ppp/options \
    device/samsung/intercept/proprietary/etc/ppp/pap-secrets:system/etc/ppp/pap-secrets \

PRODUCT_COPY_FILES += \
    device/samsung/intercept/proprietary/etc/apns-conf.xml:system/etc/apns-conf.xml \
    device/samsung/intercept/proprietary/etc/asound.conf:system/etc/asound.conf \
    device/samsung/intercept/proprietary/etc/cdma-carriers-conf.xml:system/etc/cdma-carriers-conf.xml \
    device/samsung/intercept/proprietary/etc/gps.conf:system/etc/gps.conf \
    device/samsung/intercept/proprietary/etc/init.cdma-pppd:system/etc/init.cdma-pppd \
    device/samsung/intercept/proprietary/etc/init.gprs-pppd:system/etc/init.gprs-pppd \
    device/samsung/intercept/proprietary/etc/poweron.snd:system/etc/poweron.snd \
    device/samsung/intercept/proprietary/etc/vold.fstab:system/etc/vold.fstab

# system/lib
PRODUCT_COPY_FILES += \
    device/samsung/intercept/proprietary/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
    device/samsung/intercept/proprietary/lib/egl/libEGL_fimg.so:system/lib/egl/libEGL_fimg.so \
    device/samsung/intercept/proprietary/lib/egl/libGLESv1_CM_fimg.so:system/lib/egl/libGLESv1_CM_fimg.so \
    device/samsung/intercept/proprietary/lib/egl/libGLESv2_fimg.so:system/lib/egl/libGLESv2_fimg.so

PRODUCT_COPY_FILES += \
    device/samsung/intercept/proprietary/lib/hw/copybit.SPH-M910.so:system/lib/hw/copybit.SPH-M910.so \
    device/samsung/intercept/proprietary/lib/hw/gralloc.SPH-M910.so:system/lib/hw/gralloc.SPH-M910.so \
    device/samsung/intercept/proprietary/lib/hw/lights.SPH-M910.so:system/lib/hw/lights.SPH-M910.so \
    device/samsung/intercept/proprietary/lib/hw/sensors.SPH-M910.so:system/lib/hw/sensors.SPH-M910.so

PRODUCT_COPY_FILES += \
    device/samsung/intercept/proprietary/lib/libcamera.so:system/lib/libcamera.so \
    device/samsung/intercept/proprietary/lib/libChunkAlloc.so:system/lib/libChunkAlloc.so \
    device/samsung/intercept/proprietary/lib/libril.so:system/lib/libril.so \
    device/samsung/intercept/proprietary/lib/libs3c2drender.so:system/lib/libs3c2drender.so \
    device/samsung/intercept/proprietary/lib/libs3cjpeg.so:system/lib/libs3cjpeg.so \
    device/samsung/intercept/proprietary/lib/libs263domxoc.so:system/lib/libs263domxoc.so \
    device/samsung/intercept/proprietary/lib/libs263eomxoc.so:system/lib/libs263eomxoc.so \
    device/samsung/intercept/proprietary/lib/libs264domxoc.so:system/lib/libs264domxoc.so \
    device/samsung/intercept/proprietary/lib/libsaacdomxoc.so:system/lib/libsaacdomxoc.so \
    device/samsung/intercept/proprietary/lib/libsac3domxoc.so:system/lib/libsac3domxoc.so \
    device/samsung/intercept/proprietary/lib/libsamrdomxoc.so:system/lib/libsamrdomxoc.so \
    device/samsung/intercept/proprietary/lib/libsamreomxoc.so:system/lib/libsamreomxoc.so \
    device/samsung/intercept/proprietary/lib/libSamsungAFConverter.so:system/lib/libSamsungAFConverter.so \
    device/samsung/intercept/proprietary/lib/libsamsunglmeq.so:system/lib/libsamsunglmeq.so \
    device/samsung/intercept/proprietary/lib/libsamsungr2vs.so:system/lib/libsamsungr2vs.so \
    device/samsung/intercept/proprietary/lib/lib_Samsung_Resampler.so:system/lib/lib_Samsung_Resampler.so \
    device/samsung/intercept/proprietary/lib/libsavidocn.so:system/lib/libsavidocn.so \
    device/samsung/intercept/proprietary/lib/libsavidreg.so:system/lib/libsavidreg.so \
    device/samsung/intercept/proprietary/lib/libsavscmn.so:system/lib/libsavscmn.so \
    device/samsung/intercept/proprietary/lib/libsecgps.so:system/lib/libsecgps.so \
    device/samsung/intercept/proprietary/lib/libsec-ril40.so:system/lib/libsec-ril40.so \
    device/samsung/intercept/proprietary/lib/libsecril-client.so:system/lib/libsecril-client.so \
    device/samsung/intercept/proprietary/lib/libsmp3domxoc.so:system/lib/libsmp3domxoc.so \
    device/samsung/intercept/proprietary/lib/libsmp4fmocn.so:system/lib/libsmp4fmocn.so \
    device/samsung/intercept/proprietary/lib/libsmp4vdomxoc.so:system/lib/libsmp4vdomxoc.so \
    device/samsung/intercept/proprietary/lib/libsmp4veomxoc.so:system/lib/libsmp4veomxoc.so \
    device/samsung/intercept/proprietary/lib/libsrec_jni.so:system/lib/libsrec_jni.so \
    device/samsung/intercept/proprietary/lib/libsvc1domxoc.so:system/lib/libsvc1domxoc.so \
    device/samsung/intercept/proprietary/lib/libsvidmiooc.so:system/lib/libsvidmiooc.so \
    device/samsung/intercept/proprietary/lib/libswmadomxoc.so:system/lib/libswmadomxoc.so \
    device/samsung/intercept/proprietary/lib/libswmfdocn.so:system/lib/libswmfdocn.so \
    device/samsung/intercept/proprietary/lib/libswmfdreg.so:system/lib/libswmfdreg.so \
    device/samsung/intercept/proprietary/lib/libwlservice.so:system/lib/libwlservice.so \
    device/samsung/intercept/proprietary/lib/libwpa_client.so:system/lib/libwpa_client.so

#Copy modules to /obj/lib for build dependencies
PRODUCT_COPY_FILES += \
    device/samsung/intercept/proprietary/lib/libcamera.so:obj/lib/libcamera.so \
    device/samsung/intercept/proprietary/lib/libChunkAlloc.so:obj/lib/libChunkAlloc.so \
    device/samsung/intercept/proprietary/lib/libril.so:obj/lib/libril.so \
    device/samsung/intercept/proprietary/lib/libs3c2drender.so:obj/lib/libs3c2drender.so \
    device/samsung/intercept/proprietary/lib/libs3cjpeg.so:obj/lib/libs3cjpeg.so \
    device/samsung/intercept/proprietary/lib/libs263domxoc.so:obj/lib/libs263domxoc.so \
    device/samsung/intercept/proprietary/lib/libs263eomxoc.so:obj/lib/libs263eomxoc.so \
    device/samsung/intercept/proprietary/lib/libs264domxoc.so:obj/lib/libs264domxoc.so \
    device/samsung/intercept/proprietary/lib/libsaacdomxoc.so:obj/lib/libsaacdomxoc.so \
    device/samsung/intercept/proprietary/lib/libsac3domxoc.so:obj/lib/libsac3domxoc.so \
    device/samsung/intercept/proprietary/lib/libsamrdomxoc.so:obj/lib/libsamrdomxoc.so \
    device/samsung/intercept/proprietary/lib/libsamreomxoc.so:obj/lib/libsamreomxoc.so \
    device/samsung/intercept/proprietary/lib/libSamsungAFConverter.so:obj/lib/libSamsungAFConverter.so \
    device/samsung/intercept/proprietary/lib/libsamsunglmeq.so:obj/lib/libsamsunglmeq.so \
    device/samsung/intercept/proprietary/lib/libsamsungr2vs.so:obj/lib/libsamsungr2vs.so \
    device/samsung/intercept/proprietary/lib/lib_Samsung_Resampler.so:obj/lib/lib_Samsung_Resampler.so \
    device/samsung/intercept/proprietary/lib/libsavscmn.so:obj/lib/libsavscmn.so \
    device/samsung/intercept/proprietary/lib/libsecgps.so:obj/lib/libsecgps.so \
    device/samsung/intercept/proprietary/lib/libsecril-client.so:obj/lib/libsecril-client.so \
    device/samsung/intercept/proprietary/lib/libsec-ril40.so:obj/lib/libsec-ril40.so \
    device/samsung/intercept/proprietary/lib/libsmp3domxoc.so:obj/lib/libsmp3domxoc.so \
    device/samsung/intercept/proprietary/lib/libsmp4fmocn.so:obj/lib/libsmp4fmocn.so \
    device/samsung/intercept/proprietary/lib/libsmp4vdomxoc.so:obj/lib/libsmp4vdomxoc.so \
    device/samsung/intercept/proprietary/lib/libsmp4veomxoc.so:obj/lib/libsmp4veomxoc.so \
    device/samsung/intercept/proprietary/lib/libsrec_jni.so:obj/lib/libsrec_jni.so \
    device/samsung/intercept/proprietary/lib/libsvc1domxoc.so:obj/lib/libsvc1domxoc.so \
    device/samsung/intercept/proprietary/lib/libsvidmiooc.so:obj/lib/libsvidmiooc.so \
    device/samsung/intercept/proprietary/lib/libswmadomxoc.so:obj/lib/libswmadomxoc.so \
    device/samsung/intercept/proprietary/lib/libswmfdocn.so:obj/lib/libswmfdocn.so \
    device/samsung/intercept/proprietary/lib/libswmfdreg.so:obj/lib/libswmfdreg.so \
    device/samsung/intercept/proprietary/lib/libwlservice.so:obj/lib/libwlservice.so \
    device/samsung/intercept/proprietary/lib/libwpa_client.so:obj/lib/libwpa_client.so


# system/libmodules
PRODUCT_COPY_FILES += \
    device/samsung/intercept/proprietary/libmodules/dhd.ko:system/libmodules/dhd.ko


# system/media
PRODUCT_COPY_FILES += \
    device/samsung/intercept/proprietary/media/bootani.qmg:system/media/bootani.qmg


# system/xbin
PRODUCT_COPY_FILES += \
    device/samsung/intercept/proprietary/xbin/ipcdump:system/xbin/ipcdump \
    device/samsung/intercept/proprietary/xbin/ipctool:system/xbin/ipctool

# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Install 3rd party apks
PRODUCT_COPY_FILES += \
    device/samsung/intercept/proprietary/app/linpack.apk:system/app/linpack.apk \
    device/samsung/intercept/proprietary/app/Superuser.apk:system/app/Superuser.apk

# Call generic 6410 makefiles 
$(call inherit-product-if-exists, device/samsung/common/common.mk)
