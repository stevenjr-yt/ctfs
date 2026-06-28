# Shamir's Secret Sharing Challenge
# ====================================
# A secret (the flag) was split using a (3,3) threshold scheme.
# f(x) = secret + a1*x + a2*x^2 mod PRIME  (degree-2 polynomial)
# You are given 3 evaluation points (shares).
# Recover f(0) using Lagrange Interpolation!
#
# Algorithm:
#   Given shares (x1,y1), (x2,y2), (x3,y3):
#   f(0) = sum[ yi * product[(0-xj)/(xi-xj) for j!=i] ] mod PRIME
#
# Then convert the integer result to bytes to get the flag.

# Load from shares.txt
PRIME = ...
shares = [(1, ...), (2, ...), (3, ...)]

def lagrange_interpolate(x, points, mod):
    result = 0
    for i, (xi, yi) in enumerate(points):
        num = yi
        den = 1
        for j, (xj, _) in enumerate(points):
            if i != j:
                num = num * (x - xj) % mod
                den = den * (xi - xj) % mod
        result = (result + num * pow(den, -1, mod)) % mod
    return result

secret = lagrange_interpolate(0, shares, PRIME)
flag = secret.to_bytes((secret.bit_length() + 7) // 8, 'big')
print(flag)
