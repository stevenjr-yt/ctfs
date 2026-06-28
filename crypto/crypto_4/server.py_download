from flask import Flask, request
import hashlib
import os

app = Flask(__name__)
SECRET = os.urandom(16)
FLAG = "DCSC{h4sh_l3ngth_3xt}"

@app.route('/')
def index():
    return "Hash Length Extension API. Send /download?file=test.txt&mac=... and /download?file=test.txt...&mac=..."

@app.route('/download')
def download():
    filename = request.args.get('file', '')
    mac = request.args.get('mac', '')
    
    expected_mac = hashlib.md5(SECRET + filename.encode('latin1')).hexdigest()
    if mac == expected_mac:
        if "flag.txt" in filename:
            return FLAG
        return f"Contents of {filename}"
    return "Invalid MAC"

@app.route('/get_mac')
def get_mac():
    filename = "test.txt"
    return f"File: {filename}, MAC: {hashlib.md5(SECRET + filename.encode()).hexdigest()}"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=9000)
