
export DEBIAN_FRONTEND=noninteractive

# a few random tweaks that make sense for this laptop


# remove title bar when maximised (we have a small screen)
xfconf-query -c xfwm4 -p /general/titleless_maximize -s true


# turn off pointless extra gpu use
xfconf-query -c xfwm4 -p /general/use_compositing -s false


# the error reporting popup always happens on boot
# not sure why this happens but lets just purge it
sudo DEBIAN_FRONTEND=noninteractive apt -y purge apport
sudo DEBIAN_FRONTEND=noninteractive apt -y autoremove


# auto mount sdcard in home on boot with sd card plugged in
# but do not fail if no sdcard exists

sudo sed -i '/^\/dev\/mmcblk1p1/d' /etc/fstab
cat <<EOT | sudo tee -a /etc/fstab
/dev/mmcblk1p1 /sdcard    exfat    umask=000,dmask=000,fmask=000,uid=1000,gid=1000,noatime,user,auto,nofail,rw,exec
EOT

sudo mkdir -p /sdcard
ln -s /sdcard ~/


# set background image

sudo cp weirdspace.jpg /usr/share/xfce4/backdrops/weirdspace.jpg
xfconf-query --channel xfce4-desktop --property /backdrop/screen0/monitoreDP-1/workspace0/last-image --set /usr/share/xfce4/backdrops/weirdspace.jpg

# enable guest login 

sudo sed -i '/^allow-guest=/d' /usr/share/lightdm/lightdm.conf.d/50-disable-guest.conf
cat <<EOT | sudo tee -a /usr/share/lightdm/lightdm.conf.d/50-disable-guest.conf
allow-guest=true
EOT

