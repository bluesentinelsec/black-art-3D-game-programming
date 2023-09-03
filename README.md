# black-art-3D-game-programming

Source files and build scripts for André LaMothe's Black Art of 3D Game Programming.

This is a great resource if you want to learn how to make a 3D game engine from scratch.


## How to Build Source Files

0. Open this repo in DosBox

```
cd black-art-3D-game-programming

dosbox ./
```

1. From DosBox, set path to Borland compiler

```
./ENV.BAT
```

2. Build projects by chapter

```
CD SRC/CH3

TYPE BUILD.BAT

BUILD.BAT
```

If the build succeeded, you should have .EXE files in the current directory.


## Remote Debugging with Borland Turbo Debugger

1. Open two terminals.

2. In each terminal, invoke dosbox with the black-art-3D directory mounted:

```
# in each terminal, run:
cd black-art-3D-game-programming

dosbox ./

ENV.BAT
```

3. Setup serial ports

```
# in first dosbox terminal
serial1 nullmodem port:5000

# in second dosbox terminal
serial1 nullmodem server:127.0.0.1 port:5000
```

4. In second terminal, run:

```
tdremote -rp1 -rs2
```

5. In first terminal, run:

```
td -r -rp1 -rs3
```

6. Wait about 60 seconds; the Turbo Debugger UI will appear on screen when finished.

7. From Turbo Debugger, open the executable you would like to debug; be patient, everything is super slow.

8. Open the EXE you want to debug:

- press F10 > File > Open

9. Enjoy debugging like its 1990
