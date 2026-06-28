Volatility RAM Dump Challenge
================================
A memory dump was captured from a compromised machine.
The attacker left an artifact in one of the process's environment variables.

Tools: volatility3, strings, grep
Hint: Look for environment variables in memory. One variable contains a suspicious value.

Commands to try:
  strings memory.raw | grep -E "DCSC|KEY|TOKEN"
  volatility3 -f memory.raw windows.envars
