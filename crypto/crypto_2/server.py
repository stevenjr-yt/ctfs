import socket
import threading
from Crypto.Cipher import AES
from Crypto.Util.Padding import pad, unpad
import os

KEY = os.urandom(16)
FLAG = b"DCSC{43s_cbc_p4dd1ng}"

def handle(client):
    try:
        iv = os.urandom(16)
        cipher = AES.new(KEY, AES.MODE_CBC, iv)
        ct = cipher.encrypt(pad(FLAG, 16))
        client.sendall(f"Encrypted Flag (hex): {(iv+ct).hex()}\n".encode())
        
        while True:
            client.sendall(b"Enter ciphertext (hex): ")
            data = client.recv(1024).strip().decode()
            if not data: break
            try:
                enc = bytes.fromhex(data)
                if len(enc) < 32 or len(enc) % 16 != 0:
                    client.sendall(b"Invalid length\n")
                    continue
                test_iv = enc[:16]
                test_ct = enc[16:]
                test_cipher = AES.new(KEY, AES.MODE_CBC, test_iv)
                pt = unpad(test_cipher.decrypt(test_ct), 16)
                client.sendall(b"Valid padding!\n")
            except ValueError:
                client.sendall(b"Invalid padding!\n")
            except Exception:
                client.sendall(b"Error\n")
    except:
        pass
    client.close()

server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server.bind(("0.0.0.0", 9000))
server.listen(5)
print("Listening on 9000")
while True:
    client, addr = server.accept()
    threading.Thread(target=handle, args=(client,)).start()
