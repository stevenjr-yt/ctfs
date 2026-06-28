# RSA Coppersmith Challenge
# ========================
# The flag was encrypted using RSA with a dangerously small public exponent.
# Your job: recover the original flag from the given ciphertext.

from Crypto.Util.number import getPrime, bytes_to_long, long_to_bytes

# This is how the encryption was done (server-side, you don't have the flag):
# 
#   flag = b"DCSC{...}"         <-- REDACTED, this is what you need to find!
#   p = getPrime(512)
#   q = getPrime(512)
#   n = p * q
#   e = 3                       <-- Very small e!
#   m = bytes_to_long(flag)
#   c = pow(m, e, n)            <-- Ciphertext in output.txt
#
# The values of n, e, c are in output.txt
# 
# HINT: When e=3 and the plaintext is small relative to n,
#       you can recover m without factoring n!
#       What mathematical operation is the inverse of "pow(m, 3, n)" when m^3 < n ?

# Your solve script here:
from Crypto.Util.number import long_to_bytes
import gmpy2

# Load from output.txt
n = ...
e = 3
c = ...

# TODO: Take cube root of c (integer cube root, NOT modular)
# m, _ = gmpy2.iroot(c, 3)
# flag = long_to_bytes(m)
# print(flag)
