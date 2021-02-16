#! bin/bash

echo "dtoverlay=dwc2" | sudo tee -a /boot/config.txt
echo "dwc2" | sudo tee -a /etc/modules

sudo dd if=/dev/zero of=/piusb.bin bs=1M count=512
sudo fdisk /piusb.bin
n
p
1
2048

t
c
w

sudo losetup -o 1024k /dev/loop0 /piusb.bin
sudo mkfs.vfat /dev/loop0
sudo losetup -d /dev/loop0
sync

#sudo mkdosfs /piusb.bin #-F 32 -I

mkdir ~/usb

sudo reboot