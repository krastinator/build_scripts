rm -rf .repo/local_manifests && \
rm -rf {device,vendor,kernel,hardware}/xiaomi && \
rm -rf vendor/lineage-priv/keys && \
rm -rf packages/apps/ViPER4AndroidFX && \
repo init --depth=1 --no-repo-verify -u https://github.com/RisingOS-Revived/android -b qpr2 --git-lfs -g default,-mips,-darwin,-notdefault && \
/opt/crave/resync.sh && \
git clone https://github.com/krastinator/android_device_xiaomi_apollo -b rising device/xiaomi/apollo && \
git clone https://github.com/krastinator/android_vendor_xiaomi_apollo -b main vendor/xiaomi/apollo && \
git clone https://github.com/krastinator/android_kernel_xiaomi_apollo -b main kernel/xiaomi/apollo && \
git clone https://github.com/krastinator/hardware_xiaomi -b fifteen hardware/xiaomi && \
git clone https://github.com/AxionAOSP/android_packages_apps_ViPER4AndroidFX -b v4a packages/apps/ViPER4AndroidFX && \
. build/envsetup.sh && \
riseup apollo user && \
make installclean && \
rise b
rm -rf out/target/product/core && rm -rf out/target/product/gapps; \
cd out/target/product && mv apollo core && cd ../../..; \
# Gapps Build
cd device/xiaomi/apollo && rm lineage_apollo.mk && mv gapps.txt lineage_apollo.mk && cd ../../..; \
. build/envsetup.sh; \
riseup apollo user && make installclean && rise b; \
cd out/target/product && mv apollo gapps && cd ../../..; \
