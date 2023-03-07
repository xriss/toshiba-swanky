
# install heavy applications that we often use
# using snap takes up more space which is a problem on this tiny laptop



# minimal install does not include firefox
sudo DEBIAN_FRONTEND=noninteractive apt -y install firefox



# dev tools
sudo DEBIAN_FRONTEND=noninteractive apt -y install geany
sudo DEBIAN_FRONTEND=noninteractive apt -y install geany-plugins
sudo DEBIAN_FRONTEND=noninteractive apt -y install nodejs
sudo DEBIAN_FRONTEND=noninteractive apt -y install npm
sudo DEBIAN_FRONTEND=noninteractive apt -y install gparted
sudo DEBIAN_FRONTEND=noninteractive apt -y install wavemon



# art tools
sudo DEBIAN_FRONTEND=noninteractive apt -y install gimp
sudo DEBIAN_FRONTEND=noninteractive apt -y install inkscape



# wetgenes ( my code )
sudo snap install gamecake



# sound tools
sudo DEBIAN_FRONTEND=noninteractive apt -y install audacity
sudo DEBIAN_FRONTEND=noninteractive apt -y install lmms



# not installed
#sudo DEBIAN_FRONTEND=noninteractive apt -y install wine
#sudo DEBIAN_FRONTEND=noninteractive apt -y install blender
#sudo DEBIAN_FRONTEND=noninteractive apt -y install fluidsynth
#sudo DEBIAN_FRONTEND=noninteractive apt -y install vmpk
#sudo DEBIAN_FRONTEND=noninteractive apt -y install amsynth
#sudo DEBIAN_FRONTEND=noninteractive apt -y install aconnectgui

