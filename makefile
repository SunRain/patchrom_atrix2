#
# Makefile for Atrix2
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is update.zip if not specified
local-out-zip-file := MIUI_Atrix2.zip

local-previous-target-dir := ~/workspace/ota_base/me865

# All apps from original ZIP, but has smali files chanded
local-modified-apps :=
#MediaProvider

local-modified-jars :=

local-miui-modified-apps :=
##Mms MiuiHome Settings Phone ThemeManager TelephonyProvider
# All apks from MIUI
local-miui-removed-apps  := MediaProvider

# All apps need to be reserved from original ZIP file
#local-phone-apps := FaceLock LatinImeDictionaryPack ApplicationsProvider
#	CertInstaller ChargeOnlyMode DeepSleepService DrmProvider KeyChain LiveWallpapers \
#	LiveWallpapersPicker MotorolaSettingsProvider MusicFX OMAPPowerMeter \
#	OMAProvisioning OneTimeInitializer usbcamera UserDictionaryProvider VisualizationWallpapers \
#	VoiceSearch DefaultContainerService ExtDispService MediaProvider SmartActions ContextEngine \
#	DockComm DockService MotoDockHelperService SmartDock SmartActionFW SmartActionMFW DLNA SetupProvider

# Config density for co-developers to use the aaps with HDPI or XHDPI resource,
# Default configrations are HDPI for ics branch and XHDPI for jellybean branch
local-density := HDPI


include phoneapps.mk

#local-phone-apps += MediaProvider

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone

local-rewrite-skia-lib:= false

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
updater := $(ZIP_DIR)/META-INF/com/google/android/updater-script

local-pre-zip-misc:
	@echo Update build.prop
	cp other/build.prop $(ZIP_DIR)/system/build.prop
#
#	@echo update bootanimation
#	rm $(ZIP_DIR)/system/bin/bootanimation
#	cp other/bootanimation $(ZIP_DIR)/system/bin/bootanimation
#
#	@echo add system config
#	#cp -fR other/system_app/* $(ZIP_DIR)/system/app/
#	cp -fR other/system_etc/* $(ZIP_DIR)/system/etc/
#	cp -fR other/system_xbin/* $(ZIP_DIR)/system/xbin/
	#cp other/system_lib/* $(ZIP_DIR)/system/lib/

#	@echo add system app
	#cp other/system_app/* $(ZIP_DIR)/system/app/

	@echo delete redundance files
	rm -rf $(ZIP_DIR)/system/media/MotoDemo
	rm -rf $(ZIP_DIR)/system/multiconfig
	rm -rf $(ZIP_DIR)/system/tts
	rm -rf $(ZIP_DIR)/system/vendor/app
	rm -rf $(ZIP_DIR)/system/bin/su

local-put-to-phone:
#	rm -f $(local-out-zip-file)
#	cp .build/$(local-out-zip-file) 
#	@echo push $(OUT_ZIP) to phone sdcard
#	adb shell mount sdcard
#	adb shell rm -f /sdcard/update.zip
#	adb push out/update.zip /sdcard/update.zip

#enter recovery
#echo 1 > /data/.recovery_mode ; sync ; reboot ;

