#! /bin/bash

rm -rf .repo/local_manifests; \
repo init --depth=1 --no-repo-verify -u https://github.com/VoltageOS/manifest -b 15-qp2 --git-lfs -g default,-mips,-darwin,-notdefault && \
/opt/crave/resync.sh && \
rm -rf device/xiaomi; \
git clone https://github.com/MurtazaKolachi/android_device_xiaomi_apollo -b voltage device/xiaomi/apollo && \
rm -rf vendor/xiaomi; \
git clone https://github.com/MurtazaKolachi/android_vendor_xiaomi_apollo -b main vendor/xiaomi/apollo && \
rm -rf kernel/xiaomi; \
git clone https://github.com/MurtazaKolachi/kernel_xiaomi_apollo -b main kernel/xiaomi/apollo && \
rm -rf hardware/xiaomi; \
git clone https://github.com/Evolution-X-Devices/hardware_xiaomi -b bka hardware/xiaomi && \
rm -rf hardware/dolby
git clone https://github.com/MurtazaKolachi/hardware_dolby -b sony-1.3 hardware/dolby && \
rm -rf packages/apps/ViPER4AndroidFX && \
git clone https://github.com/AxionAOSP/android_packages_apps_ViPER4AndroidFX -b v4a packages/apps/ViPER4AndroidFX && \
. build/envsetup.sh && \
breakfast apollo user && make installclean && mka bacon
