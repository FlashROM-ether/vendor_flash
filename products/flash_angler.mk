# Copyright (C) 2017 Flash ROM
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

# Include custom telephony configuration
include vendor/flash/configs/flash_phone.mk

# Copy over our ramdisk files
PRODUCT_COPY_FILES += \
    vendor/flash/prebuilt/ramdisk/init.flash.rc:root/init.flash.rc \
    vendor/flash/prebuilt/ramdisk/init.profiles.rc:root/init.profiles.rc \
    vendor/flash/prebuilt/ramdisk/init.profiles.sh:root/init.profiles.sh \
    vendor/flash/prebuilt/ramdisk/init.special_power.sh:root/init.special_power.sh \
    vendor/flash/prebuilt/ramdisk/msm_irqbalance.conf:root/msm_irqbalance.conf

# Include Spectrum APK
PRODUCT_PACKAGES += \
    Spectrum

# Inherit AOSP device configuration for angler
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

# Override AOSP build properties
PRODUCT_NAME := flash_angler
PRODUCT_BRAND := google
PRODUCT_DEVICE := angler
PRODUCT_MODEL := Nexus 6P
PRODUCT_MANUFACTURER := Huawei

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    PRIVATE_BUILD_DESC="angler-user 7.1.2 N2G47O 3852959 release-keys" \
    BUILD_FINGERPRINT=google/angler/angler:7.1.2/N2G47O/3852959:user/release-keys
