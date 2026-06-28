Custom File Format Reversing Challenge
=======================================
You found an unknown binary file with extension .dcxf.
Reverse engineer the file format and extract the hidden content!

Step 1: Identify the magic bytes (first 4 bytes)
Step 2: Parse the header structure
Step 3: Extract and decode the data

Clues in the file:
- Bytes 0-3: Magic identifier (ASCII)
- Bytes 4-5: Version number (uint16 little-endian)
- Byte 6: Encryption parameter (uint8)
- Bytes 7-10: Data length (uint32 little-endian)
- Bytes 11+: Encrypted data

Hint: The data is first compressed, then XOR-encrypted with the key in byte 6.
To decode: XOR each byte with key, then decompress (zlib.decompress in Python)

Python skeleton:
  import zlib, struct
  with open("unknown.dcxf", "rb") as f:
      data = f.read()
  magic = data[:4]
  ver = struct.unpack("<H", data[4:6])[0]
  key = data[6]
  dlen = struct.unpack("<I", data[7:11])[0]
  encrypted = data[11:11+dlen]
  decrypted = bytes([b ^ key for b in encrypted])
  flag = zlib.decompress(decrypted)
  print(flag.decode())
