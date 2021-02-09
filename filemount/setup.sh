#! bin/bash

echo "dtoverlay=dwc2" | sudo tee -a /boot/config.txt
echo "dwc2" | sudo tee -a /etc/modules

# sudo dd
# sudo formtat

mkdir ~/usb

sudo reboot