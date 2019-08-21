
#enable the chtmax98090 audio device

# modified from https://github.com/plbossart/UCM
# the volume has been increased as the default low volume
# makes the sound warble on this laptop

# line 75 of HiFi.conf controls this volume

sudo cp -r chtmax98090/ /usr/share/alsa/ucm/


# disable suspend since the newer kernels break it and I never trust it anyhow

sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target


# update to latest kernel, hopefully this fixes more than it breaks
# seems to help with sound issuses for now

./ubuntu-mainline-kernel.sh



