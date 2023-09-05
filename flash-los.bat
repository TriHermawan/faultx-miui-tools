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
echo Step 04. Update Firmware - Return to the main menu, Apply Update, Apply from ADB
echo.
echo Press Enter to Update Firmware..
PAUSE
echo.
echo "------ [ Update Firmware on Xiaomi Redmi Note 10 Pro ]------"
echo.
adb devices
:: rename firmware/fw to fw
adb sideload fw.zip
echo.
echo Update Firmware --- [DONE]
echo.
echo Step 05. Flash ROM - Return to the main menu, Apply Update, Apply from ADB
echo Press Enter to Flash ROM
PAUSE
echo.
echo "------ [ FLASH ROM ] ------"
adb devices
:: rename lineage-20.0-xxxxxxxx-nightly-sweet-signed to rom
adb sideload rom.zip
echo.
echo Flash ROM --- [DONE]
echo.
echo Step 06. Flash MindTheGapps - Return to the main menu, Apply Update, Apply from ADB
echo Press Enter to Flash MindTheGapps -- and press YES 
PAUSE
echo.
echo "------ [ FLASH MindTheGapps ] ------"
adb devices
:: rename MindTheGapps to gapps
adb sideload gapps.zip
echo.
echo Flash MindTheGapps --- [DONE] --- [Now Reboot System]
echo.
PAUSE
exit

