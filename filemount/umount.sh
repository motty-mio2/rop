sudo sync

sudo modprobe -r g_mass_storage


sudo mount -t vfat -o loop,offset=1024k,uid=$(id -u),gid=$(id -g),username=$(logname) /piusb.bin ~/usb

sudo mount -t vfat /piusb.bin ~/usb
    # /piusb.bin ~/usb
    # -o user \