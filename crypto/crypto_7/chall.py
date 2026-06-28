# Custom Feistel Cipher Challenge
# ==================================
# A 4-round Feistel network was used to encrypt the flag.
# The round keys are hardcoded.
# Decrypt the ciphertext in output.txt!
#
# Encryption:
#   flag padded to 20 bytes, split: L = flag[:10], R = flag[10:]
#   Each round: (L, R) -> (R, L XOR (R XOR K))
#   Applied 4 times with keys = [12345, 67890, 11111, 22222]
#
# HINT: Feistel decryption is just encryption in REVERSE!
#   Reverse round: (L, R) -> (R XOR (L XOR K), L)
#   Apply rounds in reverse order: [22222, 11111, 67890, 12345]

# Load from output.txt
keys = [12345, 67890, 11111, 22222]
L_enc = ...
R_enc = ...

# Decrypt: reverse the Feistel rounds
def feistel_dec(L, R, keys):
    for K in reversed(keys):
        # Reverse of (L,R) -> (R, L^(R^K)) is:
        # new_R = L, new_L = R ^ (L ^ K) ... wait, let's think
        # Forward: new_L=R, new_R = old_L XOR (R XOR K)
        # So: old_L = new_R XOR (new_L XOR K), old_R = new_L
        R, L = L, R ^ (L ^ K)
    return L, R

L, R = feistel_dec(L_enc, R_enc, keys)
flag = L.to_bytes(10, 'big') + R.to_bytes(10, 'big')
print(flag.rstrip(b'\x00').decode())
