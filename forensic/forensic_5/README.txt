USB Keyboard Traffic Analysis
================================
A USB capture was taken while an insider typed confidential information.
Reconstruct what was typed from the keyboard HID packets!

Tools: Wireshark, tshark, Python, scapy

Hint:
- Open usb_capture.pcap in Wireshark
- Filter: usb.transfer_type == 0x01 (Interrupt transfers = keyboard)  
- Each HID report = 8 bytes: [modifier, 0x00, keycode, 0,0,0,0,0]
- Modifier 0x02 = Left Shift
- Use USB HID Usage Table to map keycodes to characters
- Key 0x04 = 'a', 0x05 = 'b', ..., 0x1d = 'z', 0x1e = '1', etc.

Python skeleton:
  hid_map = {0x04:'a', 0x05:'b', ...}
  # Extract HID bytes from each interrupt packet
  # Map keycode + modifier -> character
