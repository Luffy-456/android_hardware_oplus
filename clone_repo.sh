#!/bin/bash

echo " installing necessary tools"
sudo apt-get install git-core gnupg flex bison build-essential zip curl zlib1g-dev libc6-dev-i386 x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig

sleep 1

echo " done installing "

sleep 2

echo "Cloning Start"

sleep 0.5

echo "Cloning device tree LOV"
git clone https://github.com/lineageos-on-vitamin/android_device_oneplus_vitamin.git -b lineage-22.2 device/oneplus/vitamin

sleep 0.5

echo "Cloning kernel LOV-kernel"
git clone https://github.com/lineageos-on-vitamin/android_device_oneplus_vitamin-kernel.git -b lineage-22.2 device/oneplus/vitamin-kernel

sleep 0.5

echo "Cloning kernel LOV-mt6983 "
git clone https://github.com/lineageos-on-vitamin/android_kernel_oneplus_mt6983.git -b lineage-22.2 kernel/common/android12-5.10

sleep 0.5

echo "Cloning vendor LOV"
git clone https://gitlab.com/Mashopy/proprietary_vendor_oneplus_vitamin.git -b lineage-22.2 vendor/oneplus/vitamin

sleep 0.5

echo "Cloning hardware LOV-patched from mine"
git clone https://github.com/Luffy-456/android_hardware_oplus.git -b lineage-22.2 hardware/oplus

sleep 0.5

echo "Cloning hardware mkt LOS-OFFICIAL"
git clone https://github.com/LineageOS/android_hardware_mediatek.git -b lineage-22.2 hardware/mediatek

sleep 0.5

echo "Cloning sepolicy vendor LOS-OFFICIAL"
git clone https://github.com/LineageOS/android_device_mediatek_sepolicy_vndr.git -b lineage-22.2 device/mediatek/sepolicy_vndr

sleep 0.5


# echo "Cloning vendor/gsm (playtore build only)"
# 	git clone https://gitlab.com/pixelos-aosp/vendor_gms.git -b fifteen vendor/gms
# 				OR
# 	git lfs pull https://gitlab.com/pixelos-aosp/vendor_gms.git -b fifteen vendor/gms


echo "All repos cloned successfully!"
echo " LET'S DO SOME BUILDING"
source build/envsetup.sh