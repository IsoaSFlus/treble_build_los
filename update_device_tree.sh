#!/bin/bash

cd device/phh/treble
git clean -fdx
bash generate.sh lineage
git revert 82b15278bad816632dcaeaed623b569978e9840d --no-edit #Update lineage.mk for LineageOS 16.0
git am ../../../0001-Remove-fsck-SELinux-labels.patch
git am ../../../0001-treble-Don-t-specify-config_wallpaperCropperPackage.patch
git am ../../../0001-Increase-system-partition-size-for-arm_ab.patch
git am ../../../0001-TEMP-treble-Fix-init.treble-environ.rc-hardcode-for-.patch
