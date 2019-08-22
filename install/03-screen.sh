
# the lock screen is buggy ( black display )
# simplest solution is to remove it

sudo apt -y purge light-locker
sudo apt -y autoremove


xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/dpms-enabled -s false
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/blank-on-battery -s 0
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/blank-on-ac -s 0
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/brightness-level-on-battery -s 100
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/brightness-level-on-ac -s 100


