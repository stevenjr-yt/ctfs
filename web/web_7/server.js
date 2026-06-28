
const express = require('express');
const app = express();
app.use(express.json());

function merge(target, source) {
    for (let key in source) {
        if (typeof source[key] === 'object') {
            if (!target[key]) target[key] = {};
            merge(target[key], source[key]);
        } else {
            target[key] = source[key];
        }
    }
}

let userConfig = {};

app.get('/', (req, res) => {
    res.send(`<!DOCTYPE html><html><head><style>
:root {
    --primary: #00ff00;
    --bg-color: #0a0a0a;
    --grid-color: rgba(0, 255, 0, 0.1);
}
body {
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
}
.container {
    background: rgba(10, 10, 10, 0.9);
    padding: 2rem;
    border: 1px solid var(--primary);
    box-shadow: 0 0 20px rgba(0, 255, 0, 0.2);
    border-radius: 5px;
    width: 80%;
    max-width: 600px;
}
h1 { text-align: center; text-shadow: 0 0 10px var(--primary); }
input, button, textarea {
    background: #000;
    color: var(--primary);
    border: 1px solid var(--primary);
    padding: 10px;
    margin-top: 10px;
    width: 100%;
    box-sizing: border-box;
    font-family: 'Courier New', Courier, monospace;
}
button { cursor: pointer; transition: 0.3s; }
button:hover { background: var(--primary); color: #000; }
.glitch { animation: glitch 1s linear infinite; }
@keyframes glitch {
    2%, 64% { transform: translate(2px,0) skew(0deg); }
    4%, 60% { transform: translate(-2px,0) skew(0deg); }
    62% { transform: translate(0,0) skew(5deg); }
}
</style></head><body><div class="container">
    <h1 class="glitch">SYS CONFIG</h1>
    <p>Update your settings (JSON only)</p>
    <form id="frm"><textarea id="conf" rows="5">{}</textarea><button type="button" onclick="submitConf()">Update</button></form>
    <p id="res"></p>
    <script>
    function submitConf() {
        fetch('/update', { method: 'POST', headers: {'Content-Type': 'application/json'}, body: document.getElementById('conf').value })
        .then(r=>r.text()).then(t=>document.getElementById('res').innerText = t);
    }
    </script>
    </div></body></html>`);
});

app.post('/update', (req, res) => {
    merge(userConfig, req.body);
    let session = {};
    if (session.isAdmin) {
        res.send("Admin mode activated! Flag: DCSC{w3b_pr0t0typ3_p0llut10n}");
    } else {
        res.send("Updated as guest.");
    }
});
app.listen(9000, '0.0.0.0');
