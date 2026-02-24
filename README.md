Recovery Configuration For Moto G Stylus 5G 2025 (Codenamed "mona")
=========================================

The Motorola Moto G Stylus 5G 2025 (codenamed _"mona"_) is a mid-range smartphone from Motorola Mobility announced April 8th 2025

## Device specifications

Basic   | Spec Sheet
-------:|:-------------------------
SoC     | Qualcomm SM6475-AB Snapdragon 6 Gen 3 (4 nm)
CPU     | Octa-core (4x2.4 GHz Cortex-A78 & 4x1.8 GHz Cortex-A55)
GPU     | Adreno 710
Memory  | 8 GB RAM (LPDDR4X)
Shipped Android Version | Android 15, up to 2 major Android upgrades
Storage | 128 GB | 256 GB (UFS 2.2)
Battery | Non-removable Li-Po 5000 mAh battery
Display | AMOLED, 1B colors, 120Hz, HDR, 3000 nits (peak), 1220 x 2712 pixels, 20:9 ratio (~444 ppi density)
Camera  | 50MP (Wide) + 13MP (Ultra-wide) + 32MP (Selfie)

## Device picture
![Motorola Moto G Stylus 5G 2025](https://fdn2.gsmarena.com/vv/pics/motorola/motorola-moto-g-stylus-5g-2025-1.jpg)

## Device link @ gsmArena
https://www.gsmarena.com/motorola_moto_g_stylus_5g_(2025)-13784.php

# Status
Current State Of Features:
- [X] Correct screen/recovery size
- [X] Working touch, display
- [X] Screen goes off and on
- [ ] Backup/restore to/from internal/external storage and adb
- [X] Poweroff
- [X] Reboot to system, bootloader, recovery, fastboot, edl
- [X] ADB (including sideload)
- [X] Support EROFS/F2FS/EXT4/exFAT/FAT32/NTFS
- [X] Decrypt /data
- [ ] Flashing zip/images
- [X] MTP export
- [X] All important partitions listed in wipe/mount/backup lists
- [X] Input devices via USB-OTG
- [X] USB mass storage export
- [X] Correct date
- [X] Battery level
- [X] Set brightness
- [X] Vibrate and set vibration
- [X] Screenshot
- [ ] Advanced features

# Building
*Build Script Included
```bash
export ALLOW_MISSING_DEPENDENCIES=true
source build/envsetup.sh
lunch twrp_mona-eng
mka recoveryimage -j$(nproc --all)
```

**Copyright (C) 2019-Present A-Team Digital Solutions**<br />