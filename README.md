# toshiba-swanky
Getting linux happy on a TOSHIBA CB30-B-13

Notes:

install developer mode and then RM_LEGACY so we can boot from USB

https://mrchromebox.tech/#fwscript


Install xubuntu 19.04 from a usb stick

https://xubuntu.org/download


sound is borked (thanks intel)

	git clone https://github.com/plbossart/UCM.git
	sudo cp -r UCM/chtmax98090/ /usr/share/alsa/ucm/
	sudo alsaucm -c chtmax98090 set _verb HiFi set _enadev Speakers
	sudo alsactl store

Select the second card first

	sudo nano /etc/asound.conf

and fill that file with

	pcm.!default {
	  type hw
	  card 1
	}

	ctl.!default {
	  type hw
	  card 1
	}


REBOOOT NOW

this mostly fixes it but we need to open alasamixer and adjust the speaker volume if it warbles

	sudo alsamixer

Or without a GUI

	sudo amixer set Speaker 25


After suspend we get a black screen

CTRL+ALT+F6
CTRL+ALT+F7
CTRL+ALT+F8

seems to break us out of the black screen

Disable the lock screen cures this problem for good but we have no lock screen anymore...

https://askubuntu.com/questions/544818/how-do-i-disable-automatic-screen-locking-in-xubuntu



