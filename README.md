# Docker image to make self-extracting 7zip archives (multi-platform)

## How to use it ?

### For a 64-bit Windows

	docker run --rm -v $(pwd):/pwd nicolasalbert/7zip a -sfx7zConWin64.sfx myarchive-win64.exe myarchive

### For a 32/64-bit Windows

	docker run --rm -v $(pwd):/pwd nicolasalbert/7zip a -sfx7zConWin32.sfx myarchive-win32.exe myarchive

### For a 64-bit Linux

	docker run --rm -v $(pwd):/pwd nicolasalbert/7zip a -sfx7zConLin64.sfx myarchive-lin64.bin myarchive
