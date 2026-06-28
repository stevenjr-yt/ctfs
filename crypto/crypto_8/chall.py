# LCG (Linear Congruential Generator) Predictor Challenge
# =========================================================
# A custom PRNG was used to generate an encryption key.
# The PRNG is an LCG: state = (a * state + c) % m
# Parameters a, c, m are given. The seed is UNKNOWN.
# You are given outputs 1-9. Predict output 10 and decrypt the flag!
#
# LCG properties:
#   Given consecutive outputs, you can recover the internal state directly!
#   out[i+1] = (a * out[i] + c) % m
#   Just apply the formula once more to predict the next output.
#
# Encryption: flag[i] ^= (key >> (8*(i%4))) & 0xFF
#   where key = output[10] (the 10th LCG output)

# Load from output.txt
a = ...
c = ...
m = ...
outputs = [...]  # First 9 outputs

# Step 1: Predict output 10
state = outputs[-1]
next_state = (a * state + c) % m
key = next_state

# Step 2: Decrypt
ct_hex = "..."  # from output.txt
ct = bytes.fromhex(ct_hex)
flag = bytes([ct[i] ^ ((key >> (8*(i%4))) & 0xFF) for i in range(len(ct))])
print(flag.decode())
