Video Steganography Challenge
================================
A suspicious video file was intercepted. It uses a custom format.
Analyze the file structure and find the hidden flag in one of the frames!

File Format (.vidx):
  - Magic: "VIDX" (4 bytes)
  - Frame count: uint32_le
  - Each frame:
    - Frame number: uint16_le
    - Data length: uint32_le
    - Frame data: <length> bytes

Hint: Most frames contain random noise. One special frame is different.
Parse all frames and look for ASCII-readable content!

Python skeleton:
  with open("suspicious_video.vidx", "rb") as f:
      magic = f.read(4)
      num_frames = struct.unpack("<I", f.read(4))[0]
      for _ in range(num_frames):
          fnum = struct.unpack("<H", f.read(2))[0]
          flen = struct.unpack("<I", f.read(4))[0]
          data = f.read(flen)
          print(fnum, data)
