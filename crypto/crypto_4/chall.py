# Hash Length Extension Attack Challenge
# =======================================
# A server uses MD5(secret || filename) as a MAC to verify file requests.
# You know the MAC for "test.txt" but NOT the secret.
# Forge a valid MAC for a path containing "flag.txt"!
#
# Server logic (simplified):
#   SECRET = b"????????????????"   <-- 16 bytes, unknown to you!
#   mac = md5(SECRET + filename).hexdigest()
#   if request.mac == mac: serve_file(filename)
#
# You are given the MAC for filename = "test.txt"
# Target: forge a MAC that works for a filename that includes "flag.txt"
#
# Attack:
#   MD5 is a Merkle-Damgard construction - length extension attacks work!
#   With the MAC of message M, you can compute MAC of M + padding + extra
#   WITHOUT knowing the secret.
#
# Tool: hashpump (install with: apt install hashpump)
#   hashpump -s <known_mac> -d "test.txt" -a "\x00flag.txt" -k 16
#
# OR implement manually using:
#   https://github.com/bwall/HashPump (Python version)

# Load from output.txt
known_mac = "..."
known_filename = "test.txt"
secret_length = 16
target_append = "flag.txt"
