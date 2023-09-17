BCC.EXE -mm -B -c -v -j1 black3.c
BCC.EXE -mm -B -c -v -j1 black4.c
BCC.EXE -mm -B -c -v -j1 black5.c

BCC.EXE -mm -B -v -j1 voxel.c black3.obj black4.obj black5.obj
BCC.EXE -mm -B -v -j1 voxopt.c black3.obj black4.obj black5.obj
BCC.EXE -mm -B -v -j1 voxtile.c black3.obj black4.obj black5.obj


