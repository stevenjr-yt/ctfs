# AES ECB Penguin - Can you see the pattern?
# The image was encrypted using AES-ECB mode.
# ECB encrypts each 16-byte block independently.
# Identical plaintext blocks produce identical ciphertext blocks!
# This means patterns in the image SURVIVE encryption!

# Given: encrypted_penguin.bmp (header is NOT encrypted)
# AES-ECB was used with an UNKNOWN key.

# Task:
# 1. Open encrypted_penguin.bmp in an image viewer - do you see a pattern?
# 2. The pattern itself IS the flag! Read the visible stripes/structure.
# 3. Or: realize the flag is embedded in the image structure - analyze the repeating blocks.
# Flag format: DCSC{...}

# Hint: The original image had alternating black/white stripes.
# After AES-ECB: identical black stripe blocks -> identical encrypted blocks
# The visual pattern of the image is preserved!
