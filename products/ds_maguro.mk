# Copyright (C) 2013 ParanoidAndroid Project
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

# Check for target product

ifeq (ds_maguro,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := ds_xhdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= true

# Include ParanoidAndroid common configuration
include vendor/ds/main.mk

# Inherit AOSP device configuration
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Override AOSP build properties
PRODUCT_NAME := ds_maguro
PRODUCT_BRAND := Google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

endif
