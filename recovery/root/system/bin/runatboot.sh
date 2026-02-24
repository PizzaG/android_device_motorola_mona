#!/system/bin/sh
#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP Device Tree Generator
# Copyright (C) 2019-Present A-Team Digital Solutions
# Copyright (C) 2024 sosRR
#

# Set SeLinux Permissions
setenforce 0

# Mount Partitions
mount /vendor_dlkm
mount /vendor

# Modeprobe Device Drivers(Modules)
modprobe -d /vendor_dlkm/lib/modules /vendor_dlkm/lib/modules/goodix_brl_mmi.ko
modprobe -d /vendor_dlkm/lib/modules /vendor_dlkm/lib/modules/touchscreen_mmi.ko

# Rest
sleep 1

# Flash TouchScreen Firmware
if [ $(cat /sys/class/touchscreen/primary/productinfo) == "gt9916S" ]
then
echo 1 > /sys/class/touchscreen/primary/forcereflash
echo goodix-boe-gt9916S-24010501-6597AA91-avatrn.bin > /sys/class/touchscreen/primary/doreflash
echo "Reflashing Firmware..."
echo 0 > /sys/class/touchscreen/primary/forcereflash
fi   

# Qualcomm Modem + ADSP Firmware Loading
mkdir /firmware
SLOT=$(getprop ro.boot.slot_suffix)
mount /dev/block/bootdevice/by-name/modem$SLOT /firmware -O ro
echo "1" > /proc/sys/kernel/firmware_config/force_sysfs_fallback
echo "1" > /sys/kernel/boot_adsp/boot
exit 0
fi