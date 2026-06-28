# Diffie-Hellman MITM (Parameter Injection) Challenge
# =====================================================
# Eve intercepted the DH key exchange between Alice and Bob.
# She injected B = p into Alice's message stream.
# Alice computed a shared secret and encrypted the flag with it.
# Recover the shared secret and decrypt the flag!
#
# DH Parameters:
#   p = 28073539281242031757      (prime modulus)
#   g = 5                        (generator)
#   Alice sends: A = g^a mod p   (Alice's public key)
#   Eve injects: B = p           (instead of Bob's real B)
#
# Alice computed shared_secret = B^a mod p = ???
# (Think about what p^a mod p equals for ANY value of a!)
#
# Alice then encrypted the flag:
#   key = MD5(str(shared_secret).encode())
#   cipher = AES.new(key, MODE_CBC, iv)
#   ciphertext = cipher.encrypt(pad(flag, 16))
#
# Given in output.txt: p, A, B_injected, iv, ciphertext
# 
# HINT: x^n mod x = ? for any x and n...

import hashlib
from Crypto.Cipher import AES
from Crypto.Util.Padding import unpad

# Load from output.txt
p = ...
iv_hex = "..."
ct_hex = "..."

# Step 1: Figure out the shared_secret
shared_secret = ...  # What is p^a mod p?

# Step 2: Derive AES key
key = hashlib.md5(str(shared_secret).encode()).digest()

# Step 3: Decrypt
iv = bytes.fromhex(iv_hex)
ct = bytes.fromhex(ct_hex)
flag = unpad(AES.new(key, AES.MODE_CBC, iv).decrypt(ct), 16)
print(flag)
