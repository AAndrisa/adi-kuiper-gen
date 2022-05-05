#!/bin/bash -e

on_chroot << EOF
[ -d "linux_image_ADI-scripts" ] || {
	git clone https://github.com/analogdevicesinc/linux_image_ADI-scripts
}

pushd linux_image_ADI-scripts
chmod +x adi_update_tools.sh
./adi_update_tools.sh 2021_R1

popd

EOF
