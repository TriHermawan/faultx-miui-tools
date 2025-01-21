:: ===========================================================
::  This batch script for debloat MIUI 13 RKFIDXM (ID) 
::  Device: Redmi Note 10 Pro {sweet}
::  #~ faultx | @Number666
:: ===========================================================

@echo off
echo ====================================================================================
echo I'm not responsible for bricked devices, dead SD cards, thermonuclear war,
echo * YOU are choosing to make these modifications, and if you point
echo the finger at me for messing up your device, I will laugh at you!!
echo * Your warranty will be void if you tamper with any part of your device / software.
echo ====================================================================================

title Debloat MIUI 13 (ID) - faultx - @Number666
echo (Uninstall System apps ROM)
adb devices
echo Give permission on your devices if Unauthorized.
PAUSE
echo Press Enter and Wait for the deletion (disabling).
PAUSE

:: #~ List App name
:: Analytics
:: App Vault
:: Backup
:: Browser
:: Calculator
:: Calendar
:: CatchLog
:: Compass
:: Digital Wellbeing
:: Facebook
:: Feedback
:: GetApps
:: Google App
:: Google Assistant
:: Google Chrome
:: Google One
:: HybridAccessory
:: Joyose
:: MSA
:: Market Feedback Agent
:: MiCalendar
:: MiConnectService
:: MiPlayClient
:: MiCredit
:: MiDrop
:: MiPay
:: MiShare
:: MiVideo
:: Music
:: Notes
:: PartnerBookmarks
:: Services & feedback
:: SoterService
:: WMService
:: Yellow Pages
:: YouTube
:: Mobile Device Information Provider
:: Wallpaper Carousel
:: PartnerBookmarks
:: Games
:: Email
:: Google Lens
:: Healt
:: Mi Mover
:: Mi Browser

:: adb shell pm uninstall --user 0 (package_name)
adb shell pm uninstall --user 0 com.miui.analytics
:: adb shell pm uninstall --user 0 com.mi.android.globalminusscreen
adb shell pm uninstall --user 0 com.miui.backup
:: adb shell pm uninstall --user 0 com.android.browser
adb shell pm uninstall --user 0 com.miui.calculator
adb shell pm uninstall --user 0 com.android.calendar
adb shell pm uninstall --user 0 com.bsp.catchlog
adb shell pm uninstall --user 0 com.miui.compass
adb shell pm uninstall --user 0 com.google.android.apps.wellbeing
adb shell pm uninstall --user 0 com.facebook.appmanager
adb shell pm uninstall --user 0 com.facebook.services
adb shell pm uninstall --user 0 com.facebook.system
adb shell pm uninstall --user 0 com.miui.bugreport
adb shell pm uninstall --user 0 com.xiaomi.mipicks
adb shell pm uninstall --user 0 com.google.android.googlequicksearchbox
adb shell pm uninstall --user 0 com.google.android.apps.googleassistant
adb shell pm uninstall --user 0 com.android.chrome
adb shell pm uninstall --user 0 com.google.android.apps.subscriptions.red
adb shell pm uninstall --user 0 com.miui.hybrid.accessory
:: adb shell pm uninstall --user 0 com.xiaomi.joyose
adb shell pm uninstall --user 0 com.miui.msa.global
adb shell pm uninstall --user 0 com.google.android.feedback
adb shell pm uninstall --user 0 com.xiaomi.calendar
adb shell pm uninstall --user 0 com.xiaomi.payment
adb shell pm uninstall --user 0 com.xiaomi.midrop
:: adb shell pm uninstall --user 0 com.mipay.wallet.id
adb shell pm uninstall --user 0 com.mipay.wallet.in
adb shell pm uninstall --user 0 com.miui.mishare.connectivity
adb shell pm uninstall --user 0 com.miui.videoplayer
adb shell pm uninstall --user 0 com.miui.player
adb shell pm uninstall --user 0 com.miui.notes
adb shell pm uninstall --user 0 com.miui.miservice
adb shell pm uninstall --user 0 com.tencent.soter.soterserver
adb shell pm uninstall --user 0 com.miui.wmsvc
adb shell pm uninstall --user 0 com.miui.yellowpage
adb shell pm uninstall --user 0 com.google.android.youtube
adb shell pm uninstall --user 0 com.amazon.appmanager
:: adb shell pm uninstall --user 0 com.miui.android.fashiongallery
adb shell pm uninstall --user 0 com.android.providers.partnerbookmarks
adb shell pm uninstall --user 0 com.xiaomi.glgm

adb shell pm uninstall --user 0 com.google.android.apps.tachyon
adb shell pm uninstall --user 0 com.google.android.videos
adb shell pm uninstall --user 0 com.google.android.apps.youtube.music
adb shell pm uninstall --user 0 com.mi.globalminusscreen

::----------------------------------------
:: Miui.EU

adb shell pm uninstall --user 0 com.android.email
adb shell pm uninstall --user 0 com.google.ar.lens
adb shell pm uninstall --user 0 com.mi.health
adb shell pm uninstall --user 0 com.miui.huanji
adb shell pm uninstall --user 0 com.mi.globalbrowser
echo.
echo All done.
PAUSE
exit
