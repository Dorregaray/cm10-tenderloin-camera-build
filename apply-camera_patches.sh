#!/bin/sh

TOPDIR=`pwd`

echo "Applying camera patches"

echo "Patching frameworks"
cd $TOPDIR/frameworks/native

#htc camera overlay
echo "26080 BEGIN"
git pull http://review.cyanogenmod.org/CyanogenMod/android_frameworks_native refs/changes/80/26080/1
echo "26080 END"

cd $TOPDIR/frameworks/av

#camera parameters
echo "26081 BEGIN"
git pull http://review.cyanogenmod.org/CyanogenMod/android_frameworks_av refs/changes/81/26081/1
echo "26081 END"

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

#memory split
echo "26082 BEGIN"
git pull http://review.cyanogenmod.org/CyanogenMod/android_device_hp_tenderloin refs/changes/82/26082/1
echo "26082 END"

#compat binder
echo "26084 BEGIN"
git pull http://review.cyanogenmod.org/CyanogenMod/android_device_hp_tenderloin refs/changes/84/26084/1
echo "26084 END"

#camera hal
echo "26085 BEGIN"
git pull http://review.cyanogenmod.org/CyanogenMod/android_device_hp_tenderloin refs/changes/85/26085/1
echo "26085 END"

#camera.apk config overlay
#echo "19250 BEGIN"
#echo "19250 END"

#video encoder
echo "26086 BEGIN"
git pull http://review.cyanogenmod.org/CyanogenMod/android_device_hp_tenderloin refs/changes/86/26086/1
echo "26086 END"


#3:1 split nfs modules (ics branch)
echo "24725 BEGIN"
git pull http://r.cyanogenmod.com/CyanogenMod/android_device_hp_tenderloin refs/changes/25/24725/2
echo "24725 END"

#3:1 split wifi modules (ics branch)
echo "24724 BEGIN"
git pull http://r.cyanogenmod.com/CyanogenMod/android_device_hp_tenderloin refs/changes/24/24724/2
echo "24724 END"


cd $TOPDIR

echo "Patching done"
