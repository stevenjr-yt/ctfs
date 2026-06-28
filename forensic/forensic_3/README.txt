Audio Steganography Challenge
================================
A seemingly normal audio file was intercepted. 
Our analysts believe secret data was hidden inside.

Tools: Python (wave), Audacity, zsteg, stegolsb
Technique: LSB (Least Significant Bit) Steganography

Hint: 
- The flag is encoded bit by bit into the Least Significant Bit of each audio sample.
- Read sample by sample, extract the LSB of each, group bits into bytes.
- Stop when you hit a null byte (0x00).

Python skeleton:
  import wave
  with wave.open("audio.wav", "r") as f:
      frames = f.readframes(f.getnframes())
  # Extract LSBs and reconstruct bytes...
