Windows Registry Hive Analysis Challenge
==========================================
A Windows NTUSER.DAT hive was extracted from a compromised system.
Analyze the registry for persistence mechanisms and find the hidden artifact.

Tools: regripper, Registry Explorer, python-registry, strings, hexdump

Hint:
- The Run key typically contains startup programs
- Path: HKCU\Software\Microsoft\Windows\CurrentVersion\Run
- A suspicious startup entry was found - analyze its value data
- Tools: 
  python -c "import sys; data=open('NTUSER.DAT','rb').read(); print(data[data.find(b'flag='):data.find(b'flag=')+50])"
  OR use Registry Explorer / regripper

Quick solve:
  strings NTUSER.DAT | grep -i "flag\|DCSC\|startup"
