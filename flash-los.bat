:: ===========================================================
::  Devices: Redmi Note 10 Pro {sweet}
::  #~ faultx | https://t.me/Number666
:: ===========================================================
@echo off
color 0a
title Flash LineageOS Official - Redmi Note 10 Pro [sweet]
echo.
echo * faultx - https://t.me/Number666
echo.
echo ====================================================================================
echo I'm not responsible for bricked devices, dead SD cards, thermonuclear war,
echo * YOU are choosing to make these modifications, and if you point
echo the finger at me for messing up your device, I will laugh at you!!
echo * Your warranty will be void if you tamper with any part of your device / software.
echo.
echo More Info: https://wiki.lineageos.org/devices/sweet/
echo Maintainers: basamaryan and danielml3
echo ====================================================================================
echo.
echo.
echo  Script for install LineageOS Redmi Note 10 Pro [sweet]
echo. ------------------------------------------------------
echo * MODE:
fastboot devices
echo  ------------------------------------------------------
echo.
echo Step 01. Flash LineageOS Recovery
echo.
echo Press Enter to Flash Recovery..
PAUSE
echo.
echo "------ [ FLASH RECOVERY ] ------"
echo.
fastboot flash recovery recovery.img
fastboot reboot recovery
echo.
echo Flash Recovery --- [DONE] --- Now reboot into recovery.
echo.
echo Step 02. Factory Reset, Format data / factory reset, Format data (Delete all files stored in the internal storage)
echo.
echo Step 03. Format cache partition, yes.
echo.
echo Step 04. Update Firmware - Return to the main menu, Advanced, Reboot to bootloader
echo.
echo Press Enter to Update Firmware..
PAUSE
echo.
echo "------ [ Update Firmware on Xiaomi Redmi Note 10 Pro ]------"
echo.
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
echo.
echo Update Firmware --- [DONE]
echo.
echo Step 05. Flash ROM - Return to the main menu, Apply Update, Apply from ADB
echo Press Enter to Flash ROM
PAUSE
echo.
echo "------ [ FLASH ROM ] ------"
adb devices
:: rename lineage-20.0-xxxxxxxx-nightly-sweet-signed
adb sideload lineage-20.0-20230901-nightly-sweet-signed.zip
echo.
echo Flash ROM --- [DONE]
echo.
echo Step 06. Flash MindTheGapps - Return to the main menu, Apply Update, Apply from ADB
echo Press Enter to Flash MindTheGapps -- and press YES 
PAUSE
echo.
echo "------ [ FLASH MindTheGapps ] ------"
adb devices
:: rename MindTheGapps-xx.x.x-arm64-xxxxxxxx_xxxxxx
adb sideload MindTheGapps-13.0.0-arm64-20230808_213316.zip
echo.
echo Flash MindTheGapps --- [DONE] --- [Now Reboot System]
echo.
PAUSE
exit

