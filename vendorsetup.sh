#!/bin/bash

export TW_DEFAULT_LANGUAGE="en"
export FOX_EXTREME_SIZE_REDUCTION=1
export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
export FOX_VANILLA_BUILD=1
export OF_DISABLE_OTA_MENU=1
export FOX_AB_DEVICE=1
export FOX_VIRTUAL_AB_DEVICE=1
export OF_DEFAULT_KEYMASTER_VERSION=4.1
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
export OF_MAINTAINER="TegarXLu"
export FOX_VARIANT="A13+"
export OF_FLASHLIGHT_ENABLE=0
export OF_ALLOW_DISABLE_NAVBAR=0

export FOX_USE_BASH_SHELL=1
export FOX_ASH_IS_BASH=1
export FOX_USE_NANO_EDITOR=0
export FOX_REMOVE_AAPT=1
export OF_DEVICE_WITHOUT_PERSIST=1
export FOX_EXCLUDE_NANO_EDITOR=1
export OF_NO_REFLASH_CURRENT_ORANGEFOX=1
export OF_NO_ADDITIONAL_MIUI_PROPS_CHECK=1
#export FOX_USE_TAR_BINARY=1
#export FOX_USE_SED_BINARY=1
export FOX_USE_XZ_UTILS=0
export OF_ENABLE_LPTOOLS=0
export FOX_DELETE_MAGISK_ADDON=1
export FOX_DELETE_AROMAFM=1
export FOX_ENABLE_APP_MANAGER=1
#export OF_SUPPORT_VBMETA_AVB2_PATCHING=1

#export FOX_USE_DATA_RECOVERY_FOR_SETTINGS=1

export OF_LOOP_DEVICE_ERRORS_TO_LOG=1

#export OF_USE_LZ4_COMPRESSION=true

export OF_SCREEN_H=2400
export OF_STATUS_H=95
export OF_STATUS_INDENT_LEFT=48
export OF_STATUS_INDENT_RIGHT=48
export OF_ALLOW_DISABLE_NAVBAR=0
export OF_CLOCK_POS=1

export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
export CCACHE_MAXSIZE="5G"
export CCACHE_DIR="~/ccache"

if [ ! -d ${CCACHE_DIR} ];
then
  echo "CCACHE Directory/Partition is not mounted at \"${CCACHE_DIR}\""
  echo "Please edit the CCACHE_DIR build variable or mount the directory."
fi

export LC_ALL="C"

# Clone to fix build on minimal manifest
git clone https://android.googlesource.com/platform/external/gflags/ -b android-12.1.0_r4 external/gflags

# Patches
# RET=0
# cd bootable/recovery
# git apply ../../device/transsion/mt6789-common/patches/0001-twrp.cpp-Always-unmap-super-devices-on-fastbootd-mod.patch > /dev/null 2>&1 || RET=$?
# git apply ../../device/transsion/mt6789-common/patches/0002-Change-haptics-activation-file-path.patch > /dev/null 2>&1 || RET=$?
# cd ../../
# if [ $RET -ne 0 ];then
#     echo "ERROR: Patch is not applied! Maybe it's already patched?"
# else
#     echo "OK: All patched"
# fi


