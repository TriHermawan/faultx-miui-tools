#!/bin/bash

# ===========================================================
#  Devices: Redmi Note 10 Pro {sweet}
#  #~ faultx | @Number666
# ===========================================================

echo "------ [ Flash Recovery ]------"
fastboot flash recovery recovery.img
fastboot reboot recovery
echo "------ [ Done ]------"
echo "------ [ Update firmware on Xiaomi Redmi Note 10 Pro ]------"
fastboot flash abl abl.elf
fastboot flash ablbak abl.elf
fastboot flash aop aop.mbn
fastboot flash aopbak aop.mbn
fastboot flash bluetooth BTFM.bin
fastboot flash cmnlib cmnlib.mbn
fastboot flash cmnlib64 cmnlib64.mbn
fastboot flash cmnlib64bak cmnlib64.mbn
fastboot flash cmnlibbak cmnlib.mbn
fastboot flash devcfg devcfg.mbn
fastboot flash devcfgbak devcfg.mbn
fastboot flash dsp dspso.bin
fastboot flash hyp hyp.mbn
fastboot flash hypbak hyp.mbn
fastboot flash imagefv imagefv.elf
fastboot flash imagefvbak imagefv.elf
fastboot flash keymaster km41.mbn
fastboot flash keymasterbak km41.mbn
fastboot flash logo logo.img
fastboot flash modem NON-HLOS.bin
fastboot flash qupfw qupv3fw.elf
fastboot flash qupfwbak qupv3fw.elf
fastboot flash storsec storsec.mbn
fastboot flash tz tz.mbn
fastboot flash tzbak tz.mbn
fastboot flash uefisecapp uefi_sec.mbn
fastboot flash uefisecappbak uefi_sec.mbn
fastboot flash xbl xbl.elf
fastboot flash xbl_config xbl_config.elf
fastboot flash xbl_configbak xbl_config.elf
fastboot flash xblbak xbl.elf
fastboot reboot recovery
echo "------ [ Done ]------"
echo "------ [ Flash ROM ]------"
adb devices
# rename lineage-20.0-xxxxxxxx-nightly-sweet-signed
adb sideload lineage-20.0-20230901-nightly-sweet-signed.zip
echo "------ [ Done ]------"
echo "------ [ Flash MindTheGapps ]------"
adb devices
# rename MindTheGapps-xx.x.x-arm64-xxxxxxxx_xxxxxx
adb sideload MindTheGapps-13.0.0-arm64-20230808_213316.zip
echo "------ [ Done ]------"