PDF Malware Analysis Challenge
================================
A suspicious PDF invoice was submitted to our mail gateway.
Analyze the PDF for embedded malicious code and extract the hidden payload.

Tools: pdf-parser, pdfextract, peepdf, strings, python

Hint:
- PDFs can embed JavaScript via /Action /JavaScript objects
- Run: python pdf-parser.py --search=JavaScript invoice.pdf
- Or: strings invoice.pdf | grep -A5 "JavaScript"
- The JavaScript is OBFUSCATED - analyze what it does!
- Look at character code arrays: String.fromCharCode()
- Reconstruct the string manually or execute the JS logic

Python helper:
  char_codes = [...]  # extract from JS
  print(''.join(chr(c) for c in char_codes))
