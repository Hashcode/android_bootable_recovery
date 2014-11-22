#!/usr/bin/env bash

# target specific init.rc (blockdev-symlinks)
cp $ANDROID_BUILD_TOP/device/motorola/spyder/init.target.rc $OUT/recovery/root/

#ducati-firmware is needed for kexecd kernel
cp $ANDROID_BUILD_TOP/vendor/motorola/spyder/proprietary/etc/firmware/ducati-m3.bin $OUT/recovery/root/etc/firmware/

#kexec-files
cp $ANDROID_BUILD_TOP/device/motorola/spyder/kexec/* $OUT/install-files/etc/safestrap/kexec/

sh $ANDROID_BUILD_TOP/bootable/recovery/safestrap/devices/motorola/common-omap4/build-install-kexec.sh
sh $ANDROID_BUILD_TOP/bootable/recovery/safestrap/devices/common/build-install-finish.sh

