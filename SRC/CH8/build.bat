BCC.EXE -mm -B -c -v -j1 black3.c
BCC.EXE -mm -B -c -v -j1 black4.c
BCC.EXE -mm -B -c -v -j1 black5.c
BCC.EXE -mm -B -c -v -j1 black6.c
BCC.EXE -mm -B -c -v -j1 black8.c
BCC.EXE -mm -B -v -j1 jelly.c black3.obj black4.obj black5.obj black6.obj black8.obj
BCC.EXE -mm -B -v -j1 timer.c black3.obj black4.obj black5.obj black6.obj black8.obj
BCC.EXE -mm -B -v -j1 vblank.c black3.obj black4.obj black5.obj black6.obj black8.obj
BCC.EXE -mm -B -v -j1 volcano.c black3.obj black4.obj black5.obj black6.obj black8.obj

