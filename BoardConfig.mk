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

# Platform
TARGET_BOARD_PLATFORM   := tegra
TARGET_CPU_ABI          := armeabi-v7a
TARGET_CPU_ABI2         := armeabi
TARGET_ARCH_VARIANT     := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_CPU_SMP          := true
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := picasso
TARGET_OTA_ASSERT_DEVICE := picasso,a500
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_USERIMAGES_USE_EXT4  := true
BOARD_USES_GENERIC_INVENSENSE := false

# kernel
TARGET_KERNEL_SOURCE := kernel/acer/a500
TARGET_KERNEL_CONFIG := jellyplay_defconfig
BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_BASE := 0x10000000
BOARD_PAGE_SIZE := 0x00000800

# Recovery
#TARGET_PREBUILT_RECOVERY_KERNEL := device/acer/a500/prebuilt/ramdisk/recovery_kernel
#TARGET_RECOVERY_FSTAB := device/acer/a500/recovery.fstab
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_HAS_LARGE_FILESYSTEM := true

# Display
USE_OPENGL_RENDERER    := true
BOARD_EGL_CFG          := device/acer/a500/prebuilt/etc/egl.cfg
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true
BOARD_HAS_NO_SELECT_BUTTON  := true
BOARD_USE_SKIA_LCDTEXT := true

# Audio
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_TINY_AUDIO_HW := true
BOARD_USES_ALSA_AUDIO := false

# GPS
BOARD_HAVE_GPS := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# USB 
BOARD_UMS_LUNFILE := "/sys/class/android_usb/f_mass_storage/lun/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/f_mass_storage/lun/file"

# Wireless
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_WLAN_DEVICE                := bcm4329
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_PATH_STA          := "/system/vendor/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/vendor/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_NAME          := "bcm4329"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/system/vendor/firmware/fw_bcm4329.bin nvram_path=/system/etc/wifi/bcmdhd.cal iface_name=wlan0"

# Partition
BOARD_BOOTIMAGE_PARTITION_SIZE      := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE  := 5242880 
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1283457024
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13950255104
BOARD_FLASH_BLOCK_SIZE              := 131072

