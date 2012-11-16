cm10-tenderloin-camera-build
===========================

Scripts and other stuff to patch the CM10 sources to enable camera support


BUILD INSTRUCTIONS:
-----

1. Download and configure the CM10 sources according to the following guide:
```
http://goo.gl/Zpht8
```
Stop before launching "brunch tenderloin" command.

If you have already downloaded the CM10 repo make sure you run make clean
to cleanup the sources before proceeding.


2. Download this repository to ~/android:
```
cd ~/android
git clone git://github.com/Dorregaray/cm10-tenderloin-camera-build.git
```


3. Enter the ~/android/system/kernel/hp directory and replace the kernel sources:
```
cd ~/android/system/kernel/hp
mv tenderloin tenderloin.orig
git clone -b ics git://github.com/Dorregaray/hp-kernel-tenderloin.git tenderloin
```
(yes, we use ics branch)


4. Apply the required camera patches:
```
cd ~/android/system
sh ~/android/cm10-tenderloin-camera-build/apply-camera_patches.sh
```


5. Now you can start the build:
```
cd ~/android/system
brunch tenderloin
```

6. Load the build onto the device as usual and you're done

