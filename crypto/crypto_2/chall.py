# AES CBC Padding Oracle Challenge
# ==================================
# The flag was encrypted with AES-CBC. A service exists that will tell you
# whether a given ciphertext has valid PKCS#7 padding after decryption.
# Use this oracle to decrypt the flag byte by byte!
#
# How the encryption worked (server-side):
#
#   key = os.urandom(16)         <-- Unknown! Never given to you.
#   iv = <random>                <-- Given in output.txt (prepended to ciphertext)
#   flag = b"DCSC{...}"         <-- This is what you need to recover!
#   cipher = AES.new(key, AES.MODE_CBC, iv)
#   ciphertext = cipher.encrypt(pad(flag, 16))
#
# Given in output.txt: iv + ciphertext (hex)
#
# ATTACK:
# For each byte position, XOR the previous ciphertext block
# and observe padding oracle response: "VALID" or "INVALID"
# This leaks the intermediate decryption value byte by byte.
#
# Reference: https://en.wikipedia.org/wiki/Padding_oracle_attack
#
# Your solve script:
# - Implement padding oracle attack manually, OR
# - Use tool: python paddingoracle.py / padoracle / padbuster

# Load values from output.txt
iv_hex = "..."
ct_hex = "..."
