cd kernel/xiaomi/munch
chmod +x nextpatch.sh && bash nextpatch.sh
rm -rf KernelSU/userspace/su
cd ../../..

#!/bin/bash
base64 -d device/xiaomi/munch/configs/camera/secret > device/xiaomi/munch/configs/camera/st_license.lic

# Define a variable for the target clang directory path to make the script cleaner
CLANG_DIR="prebuilts/clang/host/linux-x86/clang-r574158"
# Check if the clang directory does NOT exist
if [ ! -d "$CLANG_DIR" ]; then
  # If the directory is not found, print a message to the user
  echo "Clang directory not found. Cloning..."
  mkdir -p "$CLANG_DIR"
  wget -qO-  "https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/+archive/508ea7dd0d8f681904d0422e98af9613aaabf180/clang-r574158.tar.gz" | tar -xzf - -C "$CLANG_DIR"

  # Print a success message
  echo "Clang has been downloaded and extracted successfully."
else
  # If the directory already exists, inform the user and skip the download
  echo "Clang directory already exists. Skipping download."
fi
