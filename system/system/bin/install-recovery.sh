#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:cd8330123a16ad4b2fd26ef2ee8a3eda3fd1a935; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:33554432:163eae82a6a128b224fc3c3d1918c8396a20af00 EMMC:/dev/block/platform/bootdevice/by-name/recovery cd8330123a16ad4b2fd26ef2ee8a3eda3fd1a935 33554432 163eae82a6a128b224fc3c3d1918c8396a20af00:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
