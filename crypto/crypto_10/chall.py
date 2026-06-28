# AES ECB Penguin Challenge
# ===========================
# An image was encrypted using AES in ECB mode.
# ECB encrypts each 16-byte block INDEPENDENTLY.
# This means identical plaintext blocks -> identical ciphertext blocks.
# VISUAL PATTERNS in the original image are PRESERVED after encryption!
#
# The flag is hidden in the image pattern itself.
#
# Task:
#   1. Open encrypted_penguin.bmp in any image viewer
#   2. Do you see repeating visual patterns / stripes?
#   3. The PATTERN itself encodes information!
#   4. Count the stripe pattern and decode it, OR
#   5. Analyze which 16-byte ciphertext blocks repeat (same original pixel row)
#      and which don't (transition rows where flag bits are encoded)
#
# Advanced: The image has alternating black/white stripes.
#   Rows where the pattern "breaks" or changes correspond to flag bits.
#   Map: BLACK stripe = 0, WHITE stripe = 1 -> decode binary to ASCII
#
# The flag is: DCSC{...} - analyze the image pattern to extract it!

# Helper: Check which blocks repeat
with open("encrypted_penguin.bmp", "rb") as f:
    header = f.read(54)  # BMP header (unencrypted)
    data = f.read()

# Split into 16-byte blocks
blocks = [data[i:i+16] for i in range(0, len(data), 16)]
print(f"Total blocks: {len(blocks)}")
print(f"Unique blocks: {len(set(blocks))}")

# Blocks that appear only once indicate "different" rows (pattern breaks)
from collections import Counter
block_counts = Counter(blocks)
for i, block in enumerate(blocks[:50]):
    print(f"Block {i}: {'REPEAT' if block_counts[block] > 1 else 'UNIQUE'}")
