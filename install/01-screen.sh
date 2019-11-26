
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


# set boot options 
# acpi=off fails to boot...

sudo sed -i '/^GRUB_CMDLINE_LINUX_DEFAULT=/d' /etc/default/grub
cat <<EOT | sudo tee -a /etc/default/grub
GRUB_CMDLINE_LINUX_DEFAULT=""
EOT

sudo update-grub

