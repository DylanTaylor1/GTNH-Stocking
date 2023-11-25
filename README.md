# Introduction
These Open Computers (OC) scripts will automatically set all available AE2 level-maintainers based on your requests in a file called stockList. The purpose of saving all information to an external file is to eliminate the volatility of level-maintainers. That is, they lose all of their information upon breaking which makes them incredibly annoying to move. An external file is also incredibly easy to share with other people or across worlds.

# Bare Minimum Components
Obtaining these components will require access to EV circuits and epoxid (late HV). This is because you need an internet card to pull the scripts from GitHub (it is possible to create all the files manually and then copy and paste the code from GitHub, but that is not recommended). 

The tier of CPU or APU influences how many components (and therefore level-maintainers) you can connect. For example, a Tier 2 CPU supports 12 components which means you can only connect 2 level-maintainers because the required components take up 10 slots by default. A tier 3 CPU support 16 components for 6 level-maintainers and a creative APU supports 1024 components for 1014 level-maintainers. A single APU functions as both the CPU and graphics card so you do not need either of those components if using an APU.

- Tier 3 Computer Case
- Tier 3 Hard Disk Drive
- Tier 2 CPU (MINIMUM)
- Tier 2 Memory
- Tier 1 Graphics Card
- Tier 1 Screen (MINIMUM)
- Tier 1 Database Upgrade
- Inventory Controller Upgrade
- Keyboard
- Internet Card
- EEPROM (Lua BIOS)
- OpenOS Floppy Disk

![Computer Components](media/Comp_Components.png?)

Lastly, you will need adapters to connect the level-maintainers and buffer chest to your computer. How many depends on how many level-maintainers you want (see below).

# Building
1. Place the computer case down and power it using any GT cable. Place the keyboard on top and the screen behind it. The screen will need to be connected with a single cable in the back.
2. Shift-click all of the components into the computer case except the database upgrade and inventory controller upgrade.
3. Turn the computer on and follow the commands on screen "install" --> "Y" --> "Y" (Note: The OpenOS floppy disk is no longer needed in the robot afterwards).
4. Install the required scripts by copying this line of code into the computer (middle-click to paste).

        wget https://raw.githubusercontent.com/DylanTaylor1/GTNH-Stocking/main/setup.lua && setup

5. Connect an adapter with the inventory controller upgrade inside and place a chest on top. This is your scanner for when you want to read the details of an item. This is not absolutely necessary and can be added whenever.
6. Place all of your level-maintainers with an adapter directly adjacent to each one. The OC cable only needs to connect to one adapter so long as they're all touching. Ensure all of the level-maintainers are also connected to your AE2 network.
7. Place the database upgrade in any adapter.

![Setup](media/setup.png?)

Once complete, it should look something like this. The exact locations of everything are not important so long as the computer can access everything via adapters.

# Running the Programs
The first thing you will want to do is edit the stockList based on what you would like to request and how many level-maintainers you have available. This can be done in-game by typing edit stockList.lua or out of game in your favorite IDE (VSCode). If you would like to copy and paste a lot of changes all at once, it may be helpful to simply remove the old stockList by typing rm stockList.lua before creating a brand new file by again typing edit stockList.lua (middle-click to paste). You will likely need to copy everything over in 2 batches since the file (by default) is too long for a single copy-paste.

It is not necessary to delete lines that you do not want (simply comment them out by typing '--' before the entry). For most IDE, you can comment/uncomment many lines at once by pressing 'ctrl' + '/' together. Changing anything in stockList requires restarting the computer.

        edit stockList.lua

The second thing you may want to do is add item(s) that are not already in stockList. To do this, place the item(s) in the buffer chest and run the following command. This will tell you all of the information you need for each item. Label isn't actually necessary, but will help you identify items. Unfortunately, there isn't really an easy way to copy and paste the output of this program so you will have to type it into stockList.lua manually.

        scan

The main program is autoStock which will set all of the level-maintainers based on your requests in stockList. It will also tell you how many requests you can take and if any requests are dropped because of a lack of level-maintainers. As long as the level-maintainers are connected to your AE2 network this is all that needs to be done. Running autoStock again will overwrite all requests in the level-maintainers.

        autoStock

If for some reason you made it this far, but still want to remove these scripts from your computer, simply run:

        uninstall
