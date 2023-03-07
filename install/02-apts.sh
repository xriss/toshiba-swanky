
# general update and upgrade the system

sudo DEBIAN_FRONTEND=noninteractive apt -y update
sudo DEBIAN_FRONTEND=noninteractive apt -y upgrade
sudo DEBIAN_FRONTEND=noninteractive apt -y --fix-broken install
sudo DEBIAN_FRONTEND=noninteractive apt -y autoremove

sudo DEBIAN_FRONTEND=noninteractive apt -y install exfat-fuse exfat-utils
sudo DEBIAN_FRONTEND=noninteractive apt -y install net-tools
sudo DEBIAN_FRONTEND=noninteractive apt -y install curl

# randomise the mac address
sudo DEBIAN_FRONTEND=noninteractive apt -y install macchanger

# make git less complainy
sudo DEBIAN_FRONTEND=noninteractive apt -y install git
git config --global user.email "$USER@itwrong.space"
git config --global user.name "$USER"

