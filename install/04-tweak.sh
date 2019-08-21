
# a few random tweaks that make sense for this laptop

# remove title bar when maximised (we have a small screen)
xfconf-query -c xfwm4 -p /general/titleless_maximize -s true

# turn off pointless extra gpu use
xfconf-query -c xfwm4 -p /general/use_compositing -s false

# the error reporting popup always happens on boot
# not sure why this happens but lets just purge it
sudo apt -y purge apport
sudo apt -y autoremove
