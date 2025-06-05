rm -rf .repo/local_manifests && \
rm -rf {device,vendor,kernel,hardware}/xiaomi && \
repo init --depth=1 --no-repo-verify -u https://github.com/RisingOS-Revived/android -b qpr2 -g default,-mips,-darwin,-notdefault && \
/opt/crave/resync.sh && \
git clone https://github.com/2faced-sword/device_xiaomi_apollo -b rising device/xiaomi/apollo && \
git clone https://github.com/2faced-sword/vendor_xiaomi_apollo -b main vendor/xiaomi/apollo && \
git clone https://github.com/2faced-sword/android_kernel_xiaomi_apollo -b main kernel/xiaomi/apollo && \
git clone https://github.com/2faced-sword/hardware_xiaomi -b fifteen hardware/xiaomi && \
source build/envsetup.sh && \
gk -s && \
riseup apollo user && \
rise b
