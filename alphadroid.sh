rm -rf .repo/local_manifests; \
rm -rf {device,vendor,kernel,hardware}/xiaomi; \
repo init --depth=1 --no-repo-verify -u https://github.com/AlphaDroid-Project/manifest -b alpha-15.2 --git-lfs -g default,-mips,-darwin,-notdefault && \
/opt/crave/resync.sh; \
git clone https://github.com/MurtazaKolachi/android_device_xiaomi_apollo -b alpha device/xiaomi/apollo && \
git clone https://github.com/MurtazaKolachi/android_vendor_xiaomi_apollo -b main vendor/xiaomi/apollo && \
git clone https://github.com/MurtazaKolachi/android_kernel_xiaomi_apollo -b main kernel/xiaomi/sm8250 && \
git clone https://github.com/MurtazaKolachi/hardware_xiaomi -b fifteen hardware/xiaomi && \
# Vanilla Build
. build/envsetup.sh && \
breakfast apollo user && \
mka bacon
