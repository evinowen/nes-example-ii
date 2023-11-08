# Homebrew NES: Part II - Scaffolding
This is an example repository that contains tooling configuration for
Homebrew NES ROM development, described in **Homebrew NES: Part II - Scaffolding**,
found here:

https://evinowen.medium.com/homebrew-nes-part-ii-scaffolding-008168bae525

## Makefile
At this juncture in the guide not all segments have been defined for the .NES ROM
file generation process. Specifically, LAYOUT and GRAPHICS segments have not yet
been added to the source - the expected output of `make` is as follows:

```
ca65 -g -l ./project.lnk -t none src/main.asm -o ./project.o
ld65 -Ln ./project.lbl -m ./project.map -vm --dbgfile ./project.dbg -o ./project.nes -C ./nes.cfg ./project.o none.lib
ld65: Warning: ./nes.cfg(16): Segment 'LAYOUT' does not exist
ld65: Warning: ./nes.cfg(16): Segment 'GRAPHICS' does not exist
```
