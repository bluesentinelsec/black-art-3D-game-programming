BCC.EXE -mm -B -c -v -j1 black3.c
BCC.EXE -mm -B -c -v -j1 black4.c
BCC.EXE -mm -B -c -v -j1 black5.c
BCC.EXE -mm -B -c -v -j1 black6.c
BCC.EXE -mm -B -v -j1 digidemo.c black3.obj black4.obj black5.obj black6.obj
BCC.EXE -mm -B -v -j1 mididemo.c black3.obj black4.obj black5.obj black6.obj

REM can't figure out how to build 3digi.c, throws ASM errors
REM BCC.EXE -mm -B -v -j1 3digi.c black3.obj black6.obj
