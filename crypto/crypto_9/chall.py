# RSA Broadcast Attack - Hastad's Attack Challenge
# ==================================================
# The same plaintext (flag) was encrypted to 3 different recipients
# each with their own modulus n, but ALL using e=3.
# Use the Chinese Remainder Theorem + cube root to recover the flag!
#
# Math:
#   c1 = m^3 mod n1
#   c2 = m^3 mod n2
#   c3 = m^3 mod n3
#
# CRT gives: x = m^3 mod (n1*n2*n3)
# Since m < ni for all i, we have m^3 < n1*n2*n3
# Therefore: m = integer_cube_root(x)
#
# Steps:
#   1. CRT to find m^3
#   2. Integer cube root
#   3. Convert to bytes

from Crypto.Util.number import long_to_bytes
import gmpy2

# Load from output.txt
e = 3
n1, c1 = ..., ...
n2, c2 = ..., ...
n3, c3 = ..., ...

# Step 1: CRT
def crt(remainders, moduli):
    M = 1
    for m in moduli: M *= m
    x = 0
    for r, m in zip(remainders, moduli):
        Mi = M // m
        x += r * Mi * pow(Mi, -1, m)
    return x % M

m_cubed = crt([c1, c2, c3], [n1, n2, n3])

# Step 2: Integer cube root
m, exact = gmpy2.iroot(m_cubed, 3)

# Step 3: Recover flag
flag = long_to_bytes(m)
print(flag)
