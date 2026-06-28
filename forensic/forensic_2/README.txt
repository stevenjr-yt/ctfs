Network Traffic Analysis Challenge
=====================================
A suspicious network capture was obtained from a compromised server.
The attacker retrieved sensitive data from an internal endpoint.

Tools: Wireshark, tshark, Python (scapy)

Hints:
- Open traffic.pcap in Wireshark
- Find the HTTP response packet
- The response body is obfuscated - check the HTTP headers for hints on how to decode it
- X-Session-Key header might be useful...
