#
# Copyright 2020 The Android Open-Source Project
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

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION_RES := 1440

# Inherit some common DerpFest stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += vendor/derp/config/device_framework_matrix.xml

EXTRA_UDFPS_ANIMATIONS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_BLUR := true

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_oriole.mk)
$(call inherit-product, hardware/google/pixel/powershare/device.mk)
$(call inherit-product, hardware/google/pixel/touch/device.mk)
$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := derp_raven
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_BRAND := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=raven \
    PRIVATE_BUILD_DESC="oriole-user 13 TQ3A.230605.010 10121037 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:13/TQ3A.230605.010/10121037:user/release-keys
