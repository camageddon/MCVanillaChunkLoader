# MCVanillaChunkLoader
A primitive AFK AutoHotkey script that mass loads a pre-determined chunk range in Minecraft Bedrock/Java edition.

This was born from wanting to convert my Bedrock world which originated as a Nintendo Switch world in 2018 to Java. Now the world is at a point where it is too laggy to play on my Switch, i'm ready to comitt it to Java. 

The default range is a square from 15000 to -15000 (corner to corner) however this can be sorted to your needs with the teleport.txt file.

This script is primitive and requires Minecraft to be focused on screen and isn't the fastest, the sweet spot is around 14 seconds per run. 
This is best done on a separate computer. I haven't tested this on a HDD based PC, but even on a high end SSD with good PC specs overall this still takes **a while**.

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
  
- /gamerule doMobSpawning false 
- /gamemode @s spectator

- **You will need to at least be in creative mode for this**
  
- Open "Chunk Loader.ahk"
- Leave AFK with Minecraft open, the script will stop when completed.
- **See below for limitations and how to fix**

Hiccups
==================
- The world generation can come out a bit patchy in world viewers - this depends on your computer hardware, tweak the timings to work best for your PC in the script, may be worth giving the script 2 runs through.
- To change the timings to compensate for your computer, open "Chunk Loader.ahk" into Notepad++ and increase the timings in line 4, 10, 32, 36 and 40.
- On Bedrock, the game will eventually start to struggle loading chunks and you'll get errors in chat, pause the script and reload the world.

Editing the range of the explorer
===================================
If you don't want to have a full 15000x15000 range for the script or want more you can open "teleport.txt" and do the following;

- To reduce; simply delete from the bottom upwards.
- To increase; each teleport is in a 256 block increment, so increase the numbers by 256 for each command, spreadsheet software helped me achieve the initial co-ordinate list without the use of AI
