# toshiba-swanky
Getting linux happy on a TOSHIBA CB30-B-13


install developer mode and then RM_LEGACY so we can boot from USB

https://mrchromebox.tech/#fwscript

If you take the laptop apart and remove the restraining bolt it is nicer 
but an RW_LEGACY install is enough. It just requires a CTRL+L at every boot.


Install xubuntu 19.04 from a usb stick

https://xubuntu.org/download


Remember the following keys to boot from USB

	reboot
	CTRL+L
	ESC
	2


boot into this new install ( CTRL+L ) at chrome bios and we can patch 
problems with


	sudo apt -y install git
	mkdir git
	cd git
	git clone https://github.com/xriss/toshiba-swanky.git
	cd toshiba-swanky/install
	./00-all.sh


it will ask for sudo password to perform the magic then reboot and all 
is good...

