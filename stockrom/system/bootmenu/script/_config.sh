######## BootMenu Script Env
######## common variables for scripts

export PATH=/sbin:/system/xbin:/system/bin

PART_SYSTEM=/dev/block/mmcblk1p21
PART_CACHE=/dev/block/mmcblk1p22
PART_DATA=/dev/block/mmcblk1p25
PART_PDS=/dev/block/mmcblk1p7
PART_WEBTOP=/dev/block/mmcblk1p24

FS_SYSTEM=ext3
FS_CACHE=ext3
FS_DATA=ext3
FS_PDS=ext3
FS_WEBTOP=ext3

BM_ROOTDIR=/system/bootmenu

BOARD_UMS_LUNFILE=/sys/class/android_usb/android0/f_mass_storage/lun%d/file

