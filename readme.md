# Get Linux happy on a TOSHIBA CB30-B-13

### Before you start
Make sure you already have a bootable Xubuntu 19.04 (Disco Dingo) usb stick

- Go to https://xubuntu.org/download  
- Scroll down to **Latest stable release: 19.04, Disco Dingo**
- Click on **64-bit systems** to download the torrent  
- Double-click the torrent file to download the Xubuntu ISO
- Follow https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-ubuntu#0

## Table of contents
1. [Install developer mode](https://github.com/xriss/toshiba-swanky#1-install-developer-mode)  
2. [Install RM_LEGACY so we can boot from USB](https://github.com/xriss/toshiba-swanky#2-install-rm_legacy-so-we-can-boot-from-usb)  
3. [Prepare for Xubuntu](https://github.com/xriss/toshiba-swanky#3-prepare-for-xubuntu)  
4. [Install Xubuntu](https://github.com/xriss/toshiba-swanky#4-install-xubuntu)  
5. [Install patches](https://github.com/xriss/toshiba-swanky#5-install-patches)  
6. [Finish](https://github.com/xriss/toshiba-swanky#6-finish)  

# Start

Follow these instructions to install Linux on your chromebook.  
This has only been tested with Xubuntu 19.04 on the 2014 Toshiba Skullcandy.

### 1. Install developer mode
- Turn the chromebook off  
- Press the **esc**, **refresh (circular arrow)** and **power** buttons at the same time  
- Wait until you see *Chrome OS is missing or damaged. Please insert a recovery USB stick or SD card.*  
- Press **ctrl** and **d**  
- Press **enter** when the screen tells you to
- The chromebook will now restart and you will be in developer mode  
- Press **ctrl** and **d**
- Click on **Browse as Guest**


### 2. Install RM_LEGACY so we can boot from USB
- Connect to the internet and open this page in your browser
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


### 3. Prepare for Xubuntu
- **Your chromebook should be off at this stage**
- Insert the bootable usb stick
- Press the **power** button
- The screen will say *OS verification is OFF*
- *QUICKLY* Press **ctrl** and **l** (the L key)
- The screen will turn black and display SeaBIOS
- *QUICKLY* Press **esc** for boot menu
- Type **2**


### 4. Install Xubuntu
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
- The screen will say *OS verification is OFF*
- *QUICKLY* Press **ctrl** and **l** (the L key)
- This will launch Xubuntu but it needs some patches to update to the latest kernel and fix the audio


### 5. Install patches
- Ignore any prompts on screen and **connect to the internet**
- Click on the Xubuntu icon on the top left and click on **Terminal Emulator**
- Type the following, one line at a time
```
	sudo apt -y install git
	mkdir git
	cd git
	git clone https://github.com/xriss/toshiba-swanky.git
	cd toshiba-swanky/install
	./00-all.sh
```
- This will take a good while so take a break away from the screen
- *If the chromebook goes into suspend mode and the screen turns black, do the following to wake it up*
    - Press **ctrl**, **alt** and **F1 (button to the right of esc)**
    - Press **ctrl**, **alt** and **F7 (button to the left of mute)**
- When this is complete, type **reboot**


### 6. Finish
- Press **ctrl** and **l** (the L key)
- Congratulations - you are now running Xubuntu 19.04, all patched up


## Remember
From now on, you'll have to press **ctrl** and **l** (the L key) at **every boot to launch Xubuntu**.  
If you take the laptop apart and remove the restraining bolt, you won't have to do this.

If you don't press anything at boot, the chromebook will beep twice and then display  
*Chrome OS is missing or damaged. Please insert a recovery USB stick or SD card.*  
Just press the **power** button to turn the chromebook off.

