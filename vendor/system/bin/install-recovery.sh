#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:14908716:9e1134731040566e85b0289a68b2c0b4befd8054; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:11789608:253b8fccbb11bca5c9fecfb2f0a7ec15ae9a3e34 EMMC:/dev/block/bootdevice/by-name/recovery 9e1134731040566e85b0289a68b2c0b4befd8054 14908716 253b8fccbb11bca5c9fecfb2f0a7ec15ae9a3e34:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
