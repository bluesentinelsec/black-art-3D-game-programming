BCC.EXE -mm -B -c -v -j1 black3.c
BCC.EXE -mm -B -c -v -j1 black4.c
BCC.EXE -mm -B -c -v -j1 black5.c

BCC.EXE -mm -B -v -j1 joytest.c black3.obj black4.obj black5.obj
BCC.EXE -mm -B -v -j1 keytest.c black3.obj black4.obj black5.obj
BCC.EXE -mm -B -v -j1 mousetst.c black3.obj black4.obj black5.obj
