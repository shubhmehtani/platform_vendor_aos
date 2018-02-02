# Copyright (C) 2017 Atomic-OS
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

#Atomic-OS Versioning
AOS_VERSION = 2.2

ifeq ($(filter-out atomicity alchemy weekly PLASMA,$(AOS_BUILD_TYPE)),)
PRODUCT_PACKAGES += \
     aosOTA \
     libbypass
endif

ifndef AOS_BUILD_TYPE
    AOS_BUILD_TYPE := LabMade
endif

# Add new version name here to define on exporting build type as official
ifeq ($(AOS_BUILD_TYPE), OFFICIAL)
    AOS_BUILD_TYPE := PLASMA
endif

AOS_MOD_VERSION := Atomic-OS-$(AOS_BUILD_TYPE)-$(AOS_VERSION)-$(AOS_BUILD)-$(shell date -u +%Y%m%d-%H%M)

PRODUCT_PROPERTY_OVERRIDES += \
  BUILD_DISPLAY_ID=$(BUILD_ID) \
  ro.aos.version=$(AOS_VERSION) \
  ro.aos.releasetype=$(AOS_BUILD_TYPE) \
  ro.mod.version=$(AOS_BUILD_TYPE)-$(AOS_VERSION)

AOS_DISPLAY_VERSION := $(AOS_MOD_VERSION)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.aos.display.version=$(AOS_DISPLAY_VERSION)
