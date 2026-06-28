
const express = require('express');
const axios = require('axios');
const app = express();
app.use(express.urlencoded({ extended: true }));

app.get('/', (req, res) => {
    res.send(`<!DOCTYPE html><html><head><style>
    :root { --primary: #00ff00; --bg-color: #0a0a0a; } body { background-color: var(--bg-color); color: var(--primary); font-family: monospace; display: flex; justify-content: center; align-items: center; height: 100vh; }
    .container { border: 1px solid #00ff00; padding: 2rem; } input, button { background: #000; color: #00ff00; border: 1px solid #00ff00; padding: 5px; }
    </style></head><body><div class="container"><h1>Webhook Tester</h1>
    <form action="/fetch" method="POST"><input type="text" name="url" placeholder="http://example.com" size="50"><button type="submit">Fetch</button></form>
    </div></body></html>`);
});

app.post('/fetch', async (req, res) => {
    const url = req.body.url;
    if (!url || typeof url !== 'string') return res.send("Invalid URL");
    if (url.includes('169.254.169.254') || url.includes('localhost') || url.includes('127.0.0.1')) {
        return res.send("Security violation detected!");
    }
    try {
        const response = await axios.get(url, { timeout: 3000 });
        res.send(`<pre>${response.data}</pre>`);
    } catch (e) {
        res.send("Error fetching URL");
    }
});

// Mock cloud metadata server on port 8080
const metadata = express();
metadata.get('/latest/meta-data/', (req, res) => {
    res.send("iam/security-credentials/admin");
});
metadata.get('/latest/meta-data/iam/security-credentials/admin', (req, res) => {
    res.send("DCSC{w3b_ssrf_m3t4d4t4}");
});
metadata.listen(8080, '127.0.0.1');

app.listen(9000, '0.0.0.0');
