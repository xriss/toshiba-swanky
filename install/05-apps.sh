
# install heavy applications that we often use
# using snap is prefered as it gets the latest versions
# while apt often lags far far behind

#dev tools
sudo DEBIAN_FRONTEND=noninteractive apt -y install geany geany-plugins
sudo DEBIAN_FRONTEND=noninteractive apt -y install nodejs npm
sudo DEBIAN_FRONTEND=noninteractive apt -y install wine
sudo DEBIAN_FRONTEND=noninteractive apt -y install gparted
sudo DEBIAN_FRONTEND=noninteractive apt -y install wavemon


#art tools
sudo DEBIAN_FRONTEND=noninteractive apt -y purge gimp
sudo snap install gimp
sudo snap install inkscape
sudo snap install blender --classic


#wetgenes ( my code )
sudo snap install gamecake


#sound tools
sudo snap install audacity
sudo DEBIAN_FRONTEND=noninteractive apt -y install lmms
sudo DEBIAN_FRONTEND=noninteractive apt -y install fluidsynth
sudo DEBIAN_FRONTEND=noninteractive apt -y install vmpk
sudo DEBIAN_FRONTEND=noninteractive apt -y install amsynth
sudo DEBIAN_FRONTEND=noninteractive apt -y install aconnectgui

