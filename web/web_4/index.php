<?php
// Changed to Command Injection to make it solvable without a bot
$output = "";
if (isset($_POST['ip'])) {
    $ip = $_POST['ip'];
    // Filter out some commands
    if (preg_match('/cat|ls|flag|txt|\*/i', $ip)) {
        $output = "Hacker detected!";
    } else {
        $output = shell_exec("ping -c 1 " . $ip);
    }
}
?>
<!DOCTYPE html><html><head><style>
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
<body><div class="container">
<h1 class="glitch">NETWORK UTILITY</h1>
<form method="POST">
<input type="text" name="ip" placeholder="8.8.8.8" required>
<button type="submit">PING</button>
</form>
<pre><?= htmlspecialchars((string)$output) ?></pre>
</div></body></html>
