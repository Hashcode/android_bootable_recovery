#!/usr/bin/env bash
#sh $ANDROID_BUILD_TOP/bootable/recovery/safestrap/devices/common/build-install.sh
cd $OUT
rm $OUT/APP/install-files.zip
rm $OUT/install-files/etc/safestrap/2nd-init.zip
rm $OUT/install-files/etc/safestrap/ramdisk-recovery.img
zip -9rj install-files/etc/safestrap/2nd-init 2nd-init-files/*

cd $OUT/recovery/root
# copy correct bbx and fixboot.sh
cp $ANDROID_BUILD_TOP/bootable/recovery/safestrap/bbx ./sbin/bbx
cp $ANDROID_BUILD_TOP/bootable/recovery/safestrap/devices/common/2nd-init-files/fixboot.sh ./sbin/fixboot.sh
cp $ANDROID_BUILD_TOP/bootable/recovery/safestrap/devices/motorola/common-omap4/init.rc ./init.rc

#kexec-files
cp $ANDROID_BUILD_TOP/device/motorola/omap4-common/kexec/* $OUT/install-files/etc/safestrap/kexec/

#kernel
cp $OUT/kernel $OUT/install-files/etc/safestrap/kexec/kernel
