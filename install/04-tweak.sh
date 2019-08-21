xfconf-query -c xfwm4 -p /general/titleless_maximize -s true
xfconf-query -c xfwm4 -p /general/use_compositing -s false

#kill the error reporting popup on boot
sudo apt -y purge apport
