@echo off
title Install Custom Recovery
echo.
adb devices
echo.
adb reboot bootloader
echo.
fastboot devices
echo.
echo Installing..
echo.
fastboot flash recovery recovery.img
echo.
echo Reboot to recovery..
echo.
fastboot boot recovery.img
echo.
echo.
echo Done..
echo.
pause
exit