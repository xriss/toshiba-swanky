
# set boot options 
# acpi=off fails to boot...

sudo sed -i '/^GRUB_CMDLINE_LINUX_DEFAULT=/d' /etc/default/grub
cat <<EOT | sudo tee -a /etc/default/grub
GRUB_CMDLINE_LINUX_DEFAULT=""
EOT

sudo update-grub



# try and convince the screen not to blank, now and forever
cat <<EOT | tee ~/.xinitrc
sleep 10
xset -dpms
xset s off
xset s noblank
xset s noexpose
xset s 0 0
EOT

mkdir  -p ~/.config/autostart
cat <<EOT | tee ~/.config/autostart/xinitrc.desktop
[Desktop Entry]
Encoding=UTF-8
Version=0.9.4
Type=Application
Name=xinitrc
Comment=~/.config/autostart
Exec=bash /home/$USER/.xinitrc
OnlyShowIn=XFCE;
RunHook=0
StartupNotify=false
Terminal=false
Hidden=false
EOT

bash ~/.xinitrc


# disble screensaver and lock
xfconf-query -c xfce4-screensaver -p /saver/enabled --create -t bool -s false
xfconf-query -c xfce4-screensaver -p /lock/enabled --create -t bool -s false

# disable powermanagment of the screen
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/dpms-enabled --create -t bool -s false
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/blank-on-battery --create -t int -s 0
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/blank-on-ac --create -t int -s 0
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/brightness-level-on-battery --create -t int -s 100
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/brightness-level-on-ac --create -t int -s 100

# suspend on lid closed ( too easy to drain the battery without this )
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/lid-action-on-battery --create -t int -s 1
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/lid-action-on-ac --create -t int -s 1

# enable suspend
sudo systemctl unmask sleep.target suspend.target hibernate.target hybrid-sleep.target


