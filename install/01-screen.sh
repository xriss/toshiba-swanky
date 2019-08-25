
# the lock screen is buggy ( black display )
# simplest solution is to remove it

sudo apt -y purge light-locker
sudo apt -y autoremove


xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/dpms-enabled -s false
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/blank-on-battery -s 0
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/blank-on-ac -s 0
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/brightness-level-on-battery -s 100
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/brightness-level-on-ac -s 100

# suspend on lid closed ( too easy to drain the battery without this )
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/lid-action-on-battery -s 1
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/lid-action-on-ac -s 1



# suspend ?

# disable
#sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target

# enable
sudo systemctl unmask sleep.target suspend.target hibernate.target hybrid-sleep.target



# set boot options 
# acpi=off fails to boot...

sudo sed -i '/^GRUB_CMDLINE_LINUX_DEFAULT=/d' /etc/default/grub
cat <<EOT | sudo tee -a /etc/default/grub
GRUB_CMDLINE_LINUX_DEFAULT=""
EOT

sudo update-grub

