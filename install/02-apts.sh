
export DEBIAN_FRONTEND=noninteractive

# general update and upgrade the system

sudo apt -y update
sudo apt -y upgrade
sudo apt -y autoremove

sudo apt -y install exfat-fuse exfat-utils
sudo apt -y install net-tools
