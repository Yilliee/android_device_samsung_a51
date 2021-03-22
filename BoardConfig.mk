#
# Copyright (C) 2018 The LineageOS Project
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

DEVICE_PATH := device/samsung/a51

# APEX image
DEXPREOPT_GENERATE_APEX_IMAGE := true

# Assert
TARGET_OTA_ASSERT_DEVICE := a51nsxx,a51xx,a51

# Display
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x2000U | 0x400000000LL

# FOD
TARGET_SURFACEFLINGER_FOD_LIB := //$(DEVICE_PATH):libfod_extension.a51

# Display
TARGET_SCREEN_DENSITY := 420

# Kernel
BOARD_BOOT_HEADER_NAME := SRPSG30B004RU
TARGET_KERNEL_CONFIG := bluefly_a51_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/a51
BOARD_DTBO_CFG := $(DEVICE_PATH)/kernel/a51.cfg

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE     := 61865984
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 71106560
BOARD_CACHEIMAGE_PARTITION_SIZE    := 209715200
BOARD_DTBOIMG_PARTITION_SIZE       := 8388608
ifneq ($(WITH_GMS),true)
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 1887436800
endif

BOARD_SUPER_PARTITION_SIZE := 6836715520
BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := system
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 6826715520

TARGET_COPY_OUT_ODM := odm
TARGET_COPY_OUT_PRODUCT := system/product

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/fstab.exynos9611

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)/releasetools

# SELinux
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private

# Inherit common board flags
include device/samsung/universal9610-common/BoardConfigCommon.mk
