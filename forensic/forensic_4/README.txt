Disk Image Recovery Challenge
================================
A suspicious disk image was obtained. Important files were deleted.
Your job is to recover the deleted file and find the flag.

Tools: testdisk, autopsy, foremost, python, hexdump

Hint:
- Open disk.img in a hex editor or use 'strings disk.img'
- Look for the FAT12 directory structure
- A file was deleted (entry starts with 0xE5 = deleted marker)
- But the file data is still in the clusters!
- Tools: 'testdisk disk.img' -> Advanced -> Undelete
- Or manually: find the cluster offset and read the data there
