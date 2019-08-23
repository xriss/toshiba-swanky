
# a few random tweaks that make sense for this laptop

# remove title bar when maximised (we have a small screen)
xfconf-query -c xfwm4 -p /general/titleless_maximize -s true

# turn off pointless extra gpu use
xfconf-query -c xfwm4 -p /general/use_compositing -s false

# the error reporting popup always happens on boot
# not sure why this happens but lets just purge it
sudo apt -y purge apport
sudo apt -y autoremove


# auto mount sdcard in home on boot with sd card plugged in
# but do not fail if no sdcard exists
sudo mkdir -p /sdcard
ln -s /sdcard ~/

sudo sed -i '/\/dev\/mmcblk1p1/d' /etc/fstab
cat <<EOT | sudo tee -a /etc/fstab
/dev/mmcblk1p1 /sdcard  ext4    auto,nofail,noatime,rw,user
EOT
