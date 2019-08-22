# Get Linux happy on a TOSHIBA CB30-B-13

### Before you start
Make sure you already have a bootable Xubuntu 19.04 (Disco Dingo) usb stick

- Go to https://xubuntu.org/download  
- Scroll down to **Latest stable release: 19.04, Disco Dingo**
- Click on **64-bit systems** to download the torrent  
- Double-click the torrent file to download the Xubuntu ISO
- Follow https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-ubuntu#0

# Start

Follow these instructions to install Linux on your chromebook.  
This has only been tested with Xubuntu 19.04 on the 2014 Toshiba Skullcandy.

### Install developer mode
- Turn the chromebook off  
- Press the **esc**, **refresh (circular arrow)** and **power** buttons at the same time  
- Wait until you see *Chrome OS is missing or damaged. Please insert USB stick.*  
- Press **ctrl** and **d**  
- Press **enter** when the screen tells you to
- The chromebook will now restart and you will be in developer mode  
- Press **ctrl** and **d**
- Click on **Browse as Guest**


### Install RM_LEGACY so we can boot from USB
From https://mrchromebox.tech/#fwscript

- Press **ctrl**, **alt** and **t** to load the terminal  
- Type ```shell``` and press **enter**
- Copy and paste the following to avoid typos - *the 2nd curl parameter is a capital O, not a zero*
    - Click the touchpad with two fingers to open the right-click menu
```
cd; curl -LO https://mrchromebox.tech/firmware-util.sh && sudo bash firmware-util.sh
```
- Press **enter**
- Type **1** and press **enter**
- Press **enter** again to start installing RM_LEGACY firmware
- The chromebook will chug away for a while, make yourself a cup of tea
- Once the firmware is successfully installed, press **enter** when prompted
- Type **r** and press **enter** to Reboot your chromebook



### Install Xubuntu

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

