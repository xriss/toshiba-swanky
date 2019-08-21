
# install heavy applications that we often use
# using snap is prefered as it gets the latest versions
# while apt often lags far far behind

#dev tools
sudo apt -y install geany geany-plugins
sudo apt -y install nodejs npm
sudo apt -y install wine


#art tools
sudo apt -y purge gimp
sudo snap install gimp
sudo snap install inkscape
sudo snap install blender --classic


#wetgenes ( my code )
sudo snap install gamecake


#sound tools
sudo snap install audacity
sudo apt -y install lmms

