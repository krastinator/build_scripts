rm -rf .repo/local_manifests; \
rm -rf {device,vendor,kernel,hardware}/xiaomi; \
repo init --depth=1 --no-repo-verify -u https://github.com/AfterlifeOS/android_manifest.git -b 14 --git-lfs -g default,-mips,-darwin,-notdefault && \
/opt/crave/resync.sh && \
git clone https://github.com/Krastinator/android_device_xiaomi_apollo_afterlife -b afterlife device/xiaomi/apollo && \
git clone https://github.com/Krastinator/android_vendor_xiaomi_apollo_afterlife -b main vendor/xiaomi/apollo && \
git clone https://github.com/Krastinator/android_kernel_xiaomi_apollo_afterlife -b main kernel/xiaomi/apollo && \
git clone https://github.com/Krastinator/hardware_xiaomi_afterlife -b fifteen hardware/xiaomi && \
. build/envsetup.sh && \
goafterlife apollo user"
