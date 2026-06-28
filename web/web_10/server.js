
const express = require('express');
const jwt = require('jsonwebtoken');
const cookieParser = require('cookie-parser');
const fs = require('fs');

const app = express();
app.use(cookieParser());

const publicKey = `-----BEGIN PUBLIC KEY-----
MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAJ+W1gI5R+G/w/J6T1hV9Qy1mH+Y7j/x
...
-----END PUBLIC KEY-----`;

app.get('/', (req, res) => {
    const token = jwt.sign({ user: 'guest' }, 'secret', { algorithm: 'HS256' });
    res.cookie('token', token);
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
</style></head>
    <body><div class="container"><h1 class="glitch">JWT PORTAL</h1>
    <p>You are a guest.</p><a href="/flag" style="color:#0f0">Access Flag</a>
    </div></body></html>`);
});

app.get('/flag', (req, res) => {
    try {
        const token = req.cookies.token;
        const decoded = jwt.verify(token, publicKey); // VULNERABLE: accepts HS256 with publicKey as string
        if (decoded.user === 'admin') res.send("DCSC{w3b_jwt_4lg0_c0nfus10n}");
        else res.send("Only admin can see the flag.");
    } catch(e) {
        res.send("Invalid token");
    }
});
app.listen(9000, '0.0.0.0');
