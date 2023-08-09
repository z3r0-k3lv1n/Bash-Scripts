#!/bash/bin

# A simple script to install the necessary drivers to run the Alfa AWUS036ACH WiFi Adapter.
# Pulled from the aircrack-ng github repo

sudo apt install dkms
sudo git clone -b v5.6.4.2 https://github.com/aircrack-ng/rtl8812au.git
cd rtl*
sudo make dkms_install
