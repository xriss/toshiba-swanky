
# general update and upgrade the system

sudo DEBIAN_FRONTEND=noninteractive apt -y update
sudo DEBIAN_FRONTEND=noninteractive apt -y upgrade
sudo DEBIAN_FRONTEND=noninteractive apt -y autoremove

sudo DEBIAN_FRONTEND=noninteractive apt -y install exfat-fuse exfat-utils
sudo DEBIAN_FRONTEND=noninteractive apt -y install net-tools
sudo DEBIAN_FRONTEND=noninteractive apt -y install curl

# randomise the mac address
sudo DEBIAN_FRONTEND=noninteractive apt -y install macchanger
