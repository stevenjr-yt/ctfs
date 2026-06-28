from flask import Flask, request, render_template_string
import time
import threading

app = Flask(__name__)
balance = 100
lock = threading.Lock()

@app.route('/', methods=['GET', 'POST'])
def index():
    global balance
    msg = ""
    if request.method == 'POST':
        # VULNERABLE: No lock during check and deduct, and added artificial delay
        if balance >= 1000:
            msg = "You bought the flag! DCSC{w3b_r4c3_c0nd1t10n}"
            balance -= 1000
        else:
            current_bal = balance
            time.sleep(0.5) # The race window
            if current_bal >= 10:
                balance -= 10
                msg = "Bought a regular item for 10 coins."
            else:
                msg = "Not enough coins."

    template = f'''
    <!DOCTYPE html><html><head><style>
:root {{
    --primary: #00ff00;
    --bg-color: #0a0a0a;
    --grid-color: rgba(0, 255, 0, 0.1);
}}
body {{
    background-color: var(--bg-color);
    color: var(--primary);
    font-family: 'Courier New', Courier, monospace;
    margin: 0;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    min-height: 100vh;
    background-image: linear-gradient(var(--grid-color) 1px, transparent 1px),
                      linear-gradient(90deg, var(--grid-color) 1px, transparent 1px);
    background-size: 30px 30px;
}}
.container {{
    background: rgba(10, 10, 10, 0.9);
    padding: 2rem;
    border: 1px solid var(--primary);
    box-shadow: 0 0 20px rgba(0, 255, 0, 0.2);
    border-radius: 5px;
    width: 80%;
    max-width: 600px;
}}
h1 {{ text-align: center; text-shadow: 0 0 10px var(--primary); }}
input, button, textarea {{
    background: #000;
    color: var(--primary);
    border: 1px solid var(--primary);
    padding: 10px;
    margin-top: 10px;
    width: 100%;
    box-sizing: border-box;
    font-family: 'Courier New', Courier, monospace;
}}
button {{ cursor: pointer; transition: 0.3s; }}
button:hover {{ background: var(--primary); color: #000; }}
.glitch {{ animation: glitch 1s linear infinite; }}
@keyframes glitch {{
    2%, 64% {{ transform: translate(2px,0) skew(0deg); }}
    4%, 60% {{ transform: translate(-2px,0) skew(0deg); }}
    62% {{ transform: translate(0,0) skew(5deg); }}
}}
</style></head>
    <body><div class="container">
    <h1 class="glitch">BLACK MARKET</h1>
    <p>Balance: {balance} coins</p>
    <form method="POST">
    <button type="submit" name="buy" value="item">Buy Item (10)</button>
    <button type="submit" name="buy" value="flag">Buy Flag (1000)</button>
    </form>
    <p>{msg}</p>
    </div></body></html>
    '''
    return render_template_string(template, balance=balance, msg=msg)
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=9000, threaded=True)
