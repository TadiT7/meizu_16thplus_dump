#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:2a140133458e0154d80cfa9421a668b3d046f505; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:67108864:621f2a87d7507a9a9ba754a5a32dabc867c038be EMMC:/dev/block/bootdevice/by-name/recovery 2a140133458e0154d80cfa9421a668b3d046f505 67108864 621f2a87d7507a9a9ba754a5a32dabc867c038be:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
