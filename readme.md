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
2. [Installion with write-protect ON](https://github.com/xriss/toshiba-swanky#2-install-firmware-to-boot-from-usb-rm_legacy-with-write-protect-on)  
3. [Installation with write-protect disabled](https://github.com/xriss/toshiba-swanky/blob/master/readme.md#3-install-firmware-to-boot-from-usb-full-rom-with-write-protect-disabled)  
4. [Install Xubuntu](https://github.com/xriss/toshiba-swanky#4-install-xubuntu)  
5. [Install patches](https://github.com/xriss/toshiba-swanky#5-install-patches)  
6. [Finish](https://github.com/xriss/toshiba-swanky#6-finish)  

# Start

Follow these instructions to install Linux on your chromebook.  
This has only been tested with Xubuntu 19.04 on the 2014 Toshiba Skullcandy.

### 1. Install developer mode
- **Turn the chromebook off**  
- Press the **esc**, **refresh (circular arrow)** and **power** buttons at the same time  
- Wait until you see *Chrome OS is missing or damaged. Please insert a recovery USB stick or SD card.*  
- Press **ctrl** and **d**  
- Press **enter** (To turn OS verification OFF)  
- The screen will say *OS verification is OFF*
- *QUICKLY* Press **ctrl** and **d**  
- The chromebook will now prepare for developer mode and **restart** - *this will take ~ 5 min*   
- The screen will say *OS verification is OFF*
- *QUICKLY* Press **ctrl** and **d**  
- Click on **Let's go** (Welcome!)  
- Connect to a WiFi network and click **Next**  
- Click on **Accept and continue** (Google Chrome OS terms)  
- Click on **Browse as Guest** (bottom left link)


### 2. Install firmware to boot from USB (RM_Legacy with write-protect ON)
_**!Important! Make sure the chromebook always has power, otherwise it will stop booting and you'll have to reinstall everything from scratch (including ChromeOS).**_

- Open a browser and **open this page** ```https://github.com/xriss/toshiba-swanky```  
- Copy the following to avoid typos - *the 2nd curl parameter is a capital O, not a zero*
    - Click the touchpad with two fingers to open the right-click menu
```
cd; curl -LO https://mrchromebox.tech/firmware-util.sh && sudo bash firmware-util.sh
```
- Press **ctrl**, **alt** and **t** to load the terminal  
- Type ```shell``` and press **enter**  
- Click the touchpad with two fingers to **paste** and press **enter**
- Type **1** and press **enter**
- Press **enter** again to start installing RM_LEGACY firmware
- The chromebook will chug away for a while, make yourself a cup of tea
- Once the firmware is successfully installed, press **enter** when prompted
- Type **p** and press **enter** to turn off your chromebook
- **Your chromebook should be off at this stage**
- Insert the bootable usb stick
- Press the **power** button
- The screen will say *OS verification is OFF*
- *QUICKLY* Press **ctrl** and **l** (the L key)
- The screen will turn black and display SeaBIOS
- *QUICKLY* Press **esc** for boot menu
- Type **2**
- Click **Install Xubuntu**


### 3. Install firmware to boot from USB (Full ROM with write-protect disabled)
- Open a browser and **open this page** ```https://github.com/xriss/toshiba-swanky```  
- Copy the following to avoid typos - *the 2nd curl parameter is a capital O, not a zero*
    - Click the touchpad with two fingers to open the right-click menu
```
cd; curl -LO https://mrchromebox.tech/firmware-util.sh && sudo bash firmware-util.sh
```
- Press **ctrl**, **alt** and **t** to load the terminal  
- Type ```shell``` and press **enter**  
- Click the touchpad with two fingers to **paste** and press **enter**
- Type **3** (Install/Update Full ROM Firmware) and press **enter**
- Press **y** and **enter**
- Press **Y** and **enter**
- Press **n** and **enter**
- Once the Full ROM firmware is successfully installed, press **enter** when prompted
- Type **p** and press **enter** to turn off your chromebook
- **Your chromebook should be off at this stage**
- Insert the bootable usb stick
- Press the **power** button
- Use the up/down arrow key to select **Boot Menu** and press **enter**
- Use the up/down arrow key to select the bootable usb stick and press **enter**
- Use the up/down arrow key to select **Install Xubuntu**


### 4. Install Xubuntu
- Choose a language on the Welcome page and click **Continue**
- Click **Continue** (Keyboard Layout *English US*)
- *IMPORTANT* Connect to a wireless point and click **Continue** (Wireless *Choose your connection*)
- Click **Continue** (Updates and other software *Download updates while installing Xubuntu*)
- Click **Install Now** (Installation type *Erase disk and install Xubuntu*)
- Click **Continue** (Write changes to disks?)
- Click **Continue** (Where are you? *Choose your city*)
- Fill in all empty fields, including choosing a password (_this is important_) and click **Continue**
- This will begin the installation - it will take a while and the screen might turn off
- If the screen turns off, just move your fingers on the touchpad to wake it up
- Once the installation is complete, click **Restart Now** when prompted
- You should see a xubuntu logo and a circular loading bar
- Remove the bootable usb stick when prompted and press **enter**
- If you're running with write-protect disabled, you can now log in to Xubuntu, _otherwise_
- The screen will say *OS verification is OFF*
- *QUICKLY* Press **ctrl** and **l** (the L key)
- This will launch Xubuntu but it needs some patches to update to the latest kernel and fix the audio


### 5. Install patches
- **Ignore any popups or prompts for any software updates**
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
- You'll need to type in your password (after the first line is typed)
- This will take a good while so take a break away from the screen
- *If the chromebook goes into suspend mode and the screen turns black, do the following to wake it up*
    - Press **ctrl**, **alt** and **F1 (button to the right of esc)**
    - Press **ctrl**, **alt** and **F7 (button to the left of mute)**
- When this is complete, type **reboot**


### 6. Finish
- Press **ctrl** and **l** (the L key)
- Congratulations - you are now running Xubuntu 19.04, all patched up


## Remember
_If you have write-protect ON (the original Chromebook without any hardware modifications):_  
From now on, you'll have to press **ctrl** and **l** (the L key) at **every boot to launch Xubuntu**.

If you take the laptop apart and remove the restraining bolt, you won't have to do this.

If you don't press anything at boot, the chromebook will beep twice and then display  
*Chrome OS is missing or damaged. Please insert a recovery USB stick or SD card.*  
Just press the **power** button to turn the chromebook off.

