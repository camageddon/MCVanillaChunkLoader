# MCVanillaChunkLoader
A primitive AFK AutoHotkey script that mass loads a pre-determined chunk range in Minecraft Bedrock/Java edition.

This was born from wanting to convert my Bedrock world which originated as a Nintendo Switch world in 2018 to Java. Now the world is at a point where it is too laggy to play on my Switch, i'm ready to comitt it to Java. 

The default range is a square from 15000 to -15000 (corner to corner) however this can be sorted to your needs with the teleport.txt file.

This script is primitive and requires Minecraft to be focused on screen and isn't the fastest, the sweet spot is around 14 seconds per run. This is best done on a separate computer.

To restart the script at a certain point, trim the timings in teleport.txt to where you're up to and restart the script, back up the original teleport.txt in case your world needs a second run.


Prerequisites
=============
- Minecraft Bedrock/Java edition
- AutoHotkey v1 
- A PC that can handle Minecraft at 50+ chunk render distance
- 3-5gb of free space for your Minecraft world

Optional for verification
=========================
- Amulet or Chunker
- A world map addon

====================================================

Installation - REQUIRES ALL PRE-REQUISITES
=====================
- Download "Chunk Loader.ahk" and "teleport.txt" into the same folder, or if you like chaos, you can do separate folders for both.
- Open "Chunk Loader.ahk" in a text editor (Notepad++ is best)
- Navigate to line 9 and change the file path to where "teleport.txt" is located.


Use
======
- Open Minecraft and load the world of your choice.
- Set your chunk render distance to as high as it can go, preferably to do this in one run, it needs to generate chunks well at 50+ distance. **See line 50**
- Enable cheats
- For optimal performance, disable clouds and enter the following OPTIONAL commands
/gamerule doMobSpawning false 
/gamemode @s spectator **You will need to at least be in creative mode for this**
- Open "Chunk Loader.ahk"
- Leave AFK with Minecraft open, the script will stop when completed.
- **See below for issues and how to fix**

Hiccups
==================
- The world generation can come out a bit patchy in world viewers - this depends on your computer hardware, tweak the timings to work best for your PC in the script, may be worth giving the script 2 runs through.
- The script CAN fall over and just spam the chat with "t/tp....". Pause the script with F9, trim the timings in teleport.txt to where you're up to or where it stopped and restart the script.
- To change the timings to compensate for your computer, open "Chunk Loader.ahk" into Notepad++ and increase the timings in line 4, 10, 32, 36 and 40.
