USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/htc/primou/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := primou

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=primou
BOARD_KERNEL_BASE := 0x13F00000
BOARD_KERNEL_PAGESIZE := 4096

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x080000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x0010FE80000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x63BFFC0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x79FFFC0000
BOARD_FLASH_BLOCK_SIZE := 1310722

TARGET_PREBUILT_KERNEL := device/htc/primou/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_USES_MMCUTILS := false
BOARD_HAS_NO_MISC_PARTITION := false

BOARD_HAS_LARGE_FILESYSTEM := true

#UMS CRAP

BOARD_UMS_LUNFILE := /sys/class/android_usb/f_mass_storage/lun0/file

# Script

TARGET_RECOVERY_INITRC := device/htc/primou/recovery/init-cwm.rc
