cd kernel/xiaomi/munch
chmod +x nextpatch.sh && bash nextpatch.sh
rm -rf KernelSU/userspace/su
cd ../../..

base64 -d device/xiaomi/munch/configs/camera/secret > device/xiaomi/munch/configs/camera/st_license.lic
