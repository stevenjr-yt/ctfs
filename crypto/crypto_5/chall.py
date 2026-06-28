# Elliptic Curve Invalid Curve Attack Challenge
# ================================================
# Alice uses ECC for key exchange. An attacker sends her points
# that are NOT on the real curve (invalid curve attack).
# Alice unknowingly multiplies these by her secret key d and returns results.
# Using CRT on small subgroup orders, recover d mod small_primes, then CRT to full d.
#
# Real curve: y^2 = x^3 + x + 2 mod p
#   p = 1017771746274092701192801452292723653133614041797
#
# Attacker chose invalid curves with small group orders:
# Each invalid curve response leaks: d mod (curve_order)
# With enough leaks, CRT gives you d!
#
# The flag was then computed as: ciphertext = plaintext XOR d_low_bits
# where d_low_bits is the lower 48 bits of d
#
# Given in output.txt: p, intercept responses, ciphertext

import struct

# Load from output.txt
p = ...
ciphertext_hex = "..."
key_hint = 0x1337DEADBEEF  # d XOR mask (recovered via CRT from output.txt responses)

# Decrypt:
ct = int(ciphertext_hex, 16)
flag_int = ct ^ key_hint
flag = flag_int.to_bytes((flag_int.bit_length() + 7) // 8, 'big')
print(flag)
