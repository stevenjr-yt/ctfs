<?php
$conn = new mysqli("db", "root", "root", "ctf_db");
if ($conn->connect_error) { die("Connection failed: " . $conn->connect_error); }
$msg = "";
if (isset($_POST['username'])) {
    $user = $_POST['username'];
    // WAF Filter
    if (preg_match('/union|sleep|benchmark|outfile|dumpfile/i', $user)) {
        $msg = "WAF Blocked!";
    } else {
        $sql = "SELECT * FROM users WHERE username = '$user'";
        $result = $conn->query($sql);
        if ($result && $result->num_rows > 0) {
            $msg = "User exists!";
        } else {
            $msg = "User not found.";
        }
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
<h1 class="glitch">AGENT LOGIN</h1>
<form method="POST">
<input type="text" name="username" placeholder="Username" required>
<button type="submit">SEARCH USER</button>
</form>
<p><?= htmlspecialchars($msg) ?></p>
</div></body></html>
