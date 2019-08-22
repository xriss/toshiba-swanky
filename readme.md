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
- Type **p** and press **enter** to turn off your chromebook


### Prepare for Xubuntu
- Insert the bootable usb stick (your chromebook should be off)
- Press the **power** button
- Press **ctrl** and **l** (the L key)
- Press **esc**
- Type **2**


### Install Xubuntu
- Click **Install Xubuntu**
- Click **Continue** (Keyboard Layout *English US*)
- Click **Continue** (Wireless *I don't want to connect to a wi-fi network right now*)
- Click **Continue** (Updates and other software *Download updates while installing Xubuntu*)
- Click **Install Now** (Installation type *Erase disk and install Xubuntu*)
- Click **Continue** (Write changes to disks?)
- Click **Continue** (Where are you? *Choose your city*)
- Fill in all empty fields and click **Continue**
- This will begin the installation - it will take a while, make another cup of tea
- Once the installation is complete, click **Restart Now** when prompted
- You should see a xubuntu logo and a circular loading bar
- Remove the bootable usb stick when prompted and press **enter**
- Press **ctrl** and **l** (the L key)
- Congratulations - you are now running Xubuntu


### Install patches
- Ignore any prompts on screen and **connect to the internet**
- Open a terminal and type the following, one line at a time
```
	sudo apt -y install git
	mkdir git
	cd git
	git clone https://github.com/xriss/toshiba-swanky.git
	cd toshiba-swanky/install
	./00-all.sh
```
- This will take a good while so take a break away from the screen
- If the chromebook goes into suspend mode and the screen turns black, do the following to wake it up
    - Press **ctrl**, **alt** and **F1 (button to the right of esc)**
    - Press **ctrl**, **alt** and **F7 (button to the left of mute)**
- When this is complete, type **reboot**


## Remember
From now on, you'll have to press **ctrl** and **l** (the L key) at every boot.  
If you take the laptop apart and remove the restraining bolt, you won't have to do this.

