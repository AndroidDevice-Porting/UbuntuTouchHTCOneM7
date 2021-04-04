# Copyright (C) 2016 The CyanogenMod Project
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

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/htc/m7/m7-vendor.mk)

# FM radio
PRODUCT_PACKAGES += \
    FM2 \
    libqcomfm_jni \
    qcom.fmradio

# Inherit from m7-common
$(call inherit-product, device/htc/m7-common/m7-common.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/htc/m7/overlay

### Ubuntu Touch ###
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ubuntu/70-m7.rules:system/halium/lib/udev/rules.d/70-android.rules \
    $(LOCAL_PATH)/ubuntu/android.conf:system/halium/etc/ubuntu-touch-session.d/android.conf \
    $(LOCAL_PATH)/ubuntu/touch.pa:system/halium/etc/pulse/touch.pa \
    $(LOCAL_PATH)/ubuntu/ofono.override:system/halium/etc/init/ofono.override \
    $(LOCAL_PATH)/ubuntu/timekeeper.conf:system/halium/etc/init/timekeeper.conf
### End Ubuntu Touch ###

# Offline Charging
PRODUCT_PACKAGES += \
    charger_res_images

# telepathy-ofono quirks, ril selection
PRODUCT_PROPERTY_OVERRIDES += \
    ro.t-o.quirk.forcesink=sink.primary_output \
    ro.t-o.quirk.forcesource=source.primary_input

#Ubuntu Touch: USB port handling
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ubuntu/usb/setupusb:system/halium/usr/share/usbinit/setupusb \
    $(LOCAL_PATH)/ubuntu/usb/mtp-state.conf:system/halium/etc/init/mtp-state.conf

# Unlock recovery
PRODUCT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0

