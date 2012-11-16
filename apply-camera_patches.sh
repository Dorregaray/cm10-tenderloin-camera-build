#!/bin/sh

TOPDIR=`pwd`

echo "Applying camera patches"

echo "Patching frameworks"
cd $TOPDIR/frameworks/av

#preview rotation
echo "26087 BEGIN"
git pull http://review.cyanogenmod.org/CyanogenMod/android_frameworks_av refs/changes/87/26087/1
echo "26087 END"


echo "Patching device"
cd $TOPDIR/device/hp/tenderloin

#camera permissions
echo "26083 BEGIN"
git pull http://review.cyanogenmod.org/CyanogenMod/android_device_hp_tenderloin refs/changes/83/26083/1
echo "26083 END"

#camera hal
echo "26085 BEGIN"
git pull http://review.cyanogenmod.org/CyanogenMod/android_device_hp_tenderloin refs/changes/85/26085/6
echo "26085 END"

#video encoder
echo "26086 BEGIN"
git pull http://review.cyanogenmod.org/CyanogenMod/android_device_hp_tenderloin refs/changes/86/26086/1
echo "26086 END"

cd $TOPDIR

echo "Patching done"
