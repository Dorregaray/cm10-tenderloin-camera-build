#!/bin/sh

TOPDIR=`pwd`

echo "Applying camera patches"

echo "Patching device"
cd $TOPDIR/device/hp/tenderloin

#camera hal
echo "26085 BEGIN"
git pull http://review.cyanogenmod.org/CyanogenMod/android_device_hp_tenderloin refs/changes/85/26085/9
echo "26085 END"

cd $TOPDIR

echo "Patching done"
