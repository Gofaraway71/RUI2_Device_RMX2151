#
# Copyright (C) 2020 Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/realme/RMX2151/device.mk)

# Call proprietary blob setup
$(call inherit-product, vendor/realme/RMX2151/RMX2151-vendor.mk)


# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/fluid/config/common_full_phone.mk)

# Build info
TARGET_GAPPS_ARCH := arm64
#TARGET_INCLUDE_GAPPS := true
#WITH_GAPPS := true
#USE_GAPPS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := fluid_RMX2151
PRODUCT_DEVICE := RMX2151
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme 6/7
PRODUCT_MANUFACTURER := realme

# Build info
BUILD_FINGERPRINT := "realme/RMX2151/RMX2151L1:10/QP1A.190711.020/1594211000:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=RMX2151 \
    PRODUCT_NAME=RMX2151 \
    PRIVATE_BUILD_DESC="full_oppo6785-user 10 QP1A.190711.020 0b36b6c4f9b3bf3b release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oppo
