# OrangeFox Recovery for OPPO PECM30 (OP4E49)

Device tree for building OrangeFox Recovery for OPPO A53 5G (PECM30).

## Device Specifications

| Feature | Detail |
|---------|--------|
| **Codename** | OP4E49 |
| **Model** | PECM30 |
| **Brand** | OPPO |
| **Platform** | MediaTek MT6853 (Dimensity 720) |
| **Architecture** | arm64-v8a |
| **Android** | 11 (SDK 30) |
| **Partition** | Dedicated recovery partition |
| **AVB** | Enabled |
| **A/B** | No |
| **Dynamic Partitions** | Yes |

## Building

### Using GitHub Actions (Recommended)

1. Push this repository to GitHub
2. Go to **Actions** tab
3. Select **OrangeFox Recovery Build** workflow
4. Click **Run workflow**
5. Fill in the parameters:
   - **MANIFEST_BRANCH**: `12.1`
   - **BUILD_TARGET**: `recovery`
   - **DEVICE_TREE_BRANCH**: `master`
   - **GH_RELEASE**: `true`
6. Click **Run workflow**

### Building Locally

```bash
# Sync OrangeFox source
mkdir ~/OrangeFox_sync && cd ~/OrangeFox_sync
git clone https://gitlab.com/OrangeFox/sync.git
cd sync
./orangefox_sync.sh --branch 12.1 --path ~/fox_12.1

# Clone device tree
cd ~/fox_12.1
git clone https://github.com/YOUR_USERNAME/oppo_OP4E49.git device/oppo/OP4E49

# Build
cd ~/fox_12.1
source build/envsetup.sh
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
export OF_FORCE_PREBUILT_KERNEL=1
export TARGET_ARCH=arm64
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL="C"
lunch fox_OP4E49-eng
mka recoveryimage
```

## Output

- `out/target/product/OP4E49/recovery.img` - Recovery image
- `out/target/product/OP4E49/OrangeFox-*.zip` - Installer zip

## Flashing

```bash
fastboot flash recovery recovery.img
# or
fastboot boot recovery.img  # for testing
```

## Files Provided

- `boot.img` - Stock boot image (kernel extracted from)
- `recovery.img` - Stock recovery image (ramdisk/fstab extracted from)
- `dtbo` - Device Tree Blob Overlay

## Credits

- [OrangeFox Recovery Project](https://orangefox.tech/)
- [UWU-TEAM/UWU-OrangeFox-Builder](https://github.com/UWU-TEAM/UWU-OrangeFox-Builder)
