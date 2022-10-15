@echo off
title Erase Partition!! - @Number666
echo ERASE Partition system, vendor, product, dtbo, boot. [all data will be deleted]
echo ====================================================================================
echo I'm not responsible for bricked devices, dead SD cards, thermonuclear war,
echo * YOU are choosing to make these modifications, and if you point
echo the finger at me for messing up your device, I will laugh at you!!
echo * Your warranty will be void if you tamper with any part of your device / software.
echo ====================================================================================
echo Press Enter to execution!!
PAUSE
fastboot erase vendor
fastboot erase system
fastboot erase product
fastboot erase dtbo
fastboot erase boot
echo Done..
PAUSE
exit