-- 60 Hard Challenges for DCSC-CTF (Just adding, no deletes)


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Advanced Ret2libc',
    'Bypass ASLR and NX.',
    'Pwn',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/pwn/pwn_1.zip\",\"name\":\"pwn_1.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{pwn_r3t2l1bc_4dv}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Tcache Poisoning',
    'Heap exploitation on modern glibc.',
    'Pwn',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/pwn/pwn_2.zip\",\"name\":\"pwn_2.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{pwn_tc4ch3_p01s0n}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Format String Arbitrary Write',
    'GOT overwrite via printf.',
    'Pwn',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/pwn/pwn_3.zip\",\"name\":\"pwn_3.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{pwn_f0rm4t_str1ng_w}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'House of Spirit',
    'Advanced heap manipulation.',
    'Pwn',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/pwn/pwn_4.zip\",\"name\":\"pwn_4.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{pwn_h0us3_0f_sp1r1t}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Integer Overflow to Heap',
    'Bypassing size checks.',
    'Pwn',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/pwn/pwn_5.zip\",\"name\":\"pwn_5.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{pwn_1nt_0v3rfl0w}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Stack Pivoting',
    'ROP chain with limited stack space.',
    'Pwn',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/pwn/pwn_6.zip\",\"name\":\"pwn_6.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{pwn_st4ck_p1v0t}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Use-After-Free',
    'Dangling pointers in a menu-driven app.',
    'Pwn',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/pwn/pwn_7.zip\",\"name\":\"pwn_7.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{pwn_us3_4ft3r_fr33}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Blind ROP',
    'Exploiting without the binary.',
    'Pwn',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/pwn/pwn_8.zip\",\"name\":\"pwn_8.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{pwn_bl1nd_r0p}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Kernel ROP',
    'Basic linux kernel exploit module.',
    'Pwn',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/pwn/pwn_9.zip\",\"name\":\"pwn_9.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{pwn_k3rn3l_r0p}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'House of Force',
    'Top chunk manipulation.',
    'Pwn',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/pwn/pwn_10.zip\",\"name\":\"pwn_10.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{pwn_h0us3_0f_f0rc3}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Rust Obfuscation',
    'Stripped Rust binary.',
    'Rev',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/rev/rev_1.zip\",\"name\":\"rev_1.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{r3v_rust_0bfusc4t10n}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Go Crypto',
    'Custom encryption in a stripped Go binary.',
    'Rev',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/rev/rev_2.zip\",\"name\":\"rev_2.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{r3v_g0_crypt0}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'C++ VTable Chaos',
    'Heavy use of virtual functions.',
    'Rev',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/rev/rev_3.zip\",\"name\":\"rev_3.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{r3v_cpp_vt4bl3}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    '.NET Anti-Decompilation',
    'Heavily obfuscated C# binary.',
    'Rev',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/rev/rev_4.zip\",\"name\":\"rev_4.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{r3v_d0tn3t_4nt1}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Custom VM Architecture',
    'Reverse a bytecode interpreter.',
    'Rev',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/rev/rev_5.zip\",\"name\":\"rev_5.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{r3v_cust0m_vm}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Self-Modifying Code (SMC)',
    'Code that decrypts itself at runtime.',
    'Rev',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/rev/rev_6.zip\",\"name\":\"rev_6.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{r3v_smc_c0d3}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Python Bytecode',
    '.pyc reversing with custom opcodes.',
    'Rev',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/rev/rev_7.zip\",\"name\":\"rev_7.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{r3v_pyth0n_byt3c0d3}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'WASM Reversing',
    'WebAssembly binary logic.',
    'Rev',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/rev/rev_8.zip\",\"name\":\"rev_8.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{r3v_w4sm_w3b}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'JNI Android Reversing',
    'Native C code in an APK.',
    'Rev',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/rev/rev_9.zip\",\"name\":\"rev_9.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{r3v_jn1_4ndr01d}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Anti-Debug Vault',
    'Advanced ptrace and timing checks.',
    'Rev',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/rev/rev_10.zip\",\"name\":\"rev_10.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{r3v_4nt1_d3bug_v4ult}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Volatility RAM Dump',
    'Deep memory analysis.',
    'Forensic',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/forensic/forensic_1.zip\",\"name\":\"forensic_1.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{v0l4t1l1ty_r4m}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Network PCAP (TLS)',
    'Decrypting TLS traffic.',
    'Forensic',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/forensic/forensic_2.zip\",\"name\":\"forensic_2.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{t1s_pc4p_d3crypt}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Audio Steganography',
    'LSB encoding in a .wav file.',
    'Forensic',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/forensic/forensic_3.zip\",\"name\":\"forensic_3.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{4ud10_st3g0_lsb}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Disk Image Recovery',
    'Extracting deleted files.',
    'Forensic',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/forensic/forensic_4.zip\",\"name\":\"forensic_4.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{d1sk_1m4g3_r3c0v3ry}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'USB Traffic PCAP',
    'Reconstructing keystrokes.',
    'Forensic',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/forensic/forensic_5.zip\",\"name\":\"forensic_5.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{usb_pc4p_k3y5}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'PDF Malware Analysis',
    'Analyzing malicious JavaScript.',
    'Forensic',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/forensic/forensic_6.zip\",\"name\":\"forensic_6.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{pdf_m4lw4r3_js}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Git Repository Forensics',
    'Digging through corrupted git objects.',
    'Forensic',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/forensic/forensic_7.zip\",\"name\":\"forensic_7.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{g1t_f0r3ns1cs}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Video Steganography',
    'Hidden frames and QR codes.',
    'Forensic',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/forensic/forensic_8.zip\",\"name\":\"forensic_8.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{v1d30_st3g0_qr}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Registry Hive Analysis',
    'Extracting persistence mechanisms.',
    'Forensic',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/forensic/forensic_9.zip\",\"name\":\"forensic_9.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{r3g1stry_h1v3_f0r3ns1cs}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Obscure File Format',
    'Custom binary format parsing.',
    'Forensic',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/forensic/forensic_10.zip\",\"name\":\"forensic_10.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{0bscur3_f1l3_f0rm4t}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'RSA Coppersmith',
    'Small public exponent e=3.',
    'Crypto',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/crypto/crypto_1.zip\",\"name\":\"crypto_1.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{rs4_c0pp3rsm1th}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'AES CBC Padding Oracle',
    'Padding oracle attack.',
    'Crypto',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/crypto/crypto_2.zip\",\"name\":\"crypto_2.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{43s_cbc_p4dd1ng}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Diffie-Hellman MITM',
    'Parameter injection.',
    'Crypto',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/crypto/crypto_3.zip\",\"name\":\"crypto_3.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{dh_m1tm_4tt4ck}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Hash Length Extension',
    'Exploiting MD5 MAC.',
    'Crypto',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/crypto/crypto_4.zip\",\"name\":\"crypto_4.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{h4sh_l3ngth_3xt}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Elliptic Curve (ECC)',
    'Invalid curve attack.',
    'Crypto',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/crypto/crypto_5.zip\",\"name\":\"crypto_5.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{3cc_1nv4l1d_curv3}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Shamir''s Secret Sharing',
    'Reconstructing without enough shares.',
    'Crypto',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/crypto/crypto_6.zip\",\"name\":\"crypto_6.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{sh4m1r_s3cr3t}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Custom Feistel Cipher',
    'Differential cryptanalysis.',
    'Crypto',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/crypto/crypto_7.zip\",\"name\":\"crypto_7.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{f31st3l_c1ph3r}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'LCG Predictor',
    'Breaking a custom RNG.',
    'Crypto',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/crypto/crypto_8.zip\",\"name\":\"crypto_8.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{lcg_pr3d1ct0r}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'RSA Broadcast (Hastad)',
    'Same message sent to multiple moduli.',
    'Crypto',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/crypto/crypto_9.zip\",\"name\":\"crypto_9.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{rs4_h4st4d}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'AES ECB Penguin',
    'Bitmap encryption vulnerability.',
    'Crypto',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/crypto/crypto_10.zip\",\"name\":\"crypto_10.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{43s_3cb_p3ngu1n}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Geo-Location Expert',
    'Find the coordinates of this obscure location.',
    'Osint',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/osint/osint_1.zip\",\"name\":\"osint_1.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{g30_l0c4t10n_m4st3r}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Flight Tracking',
    'Which flight was overhead at 12:00 PM UTC?',
    'Osint',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/osint/osint_2.zip\",\"name\":\"osint_2.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{fl1ght_tr4ck3r_99}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Blockchain Trace',
    'Trace the stolen funds to the final wallet.',
    'Osint',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/osint/osint_3.zip\",\"name\":\"osint_3.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{bl0ckch41n_tr4c3r}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Corporate Recon',
    'Find the internal subdomain of the target.',
    'Osint',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/osint/osint_4.zip\",\"name\":\"osint_4.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{c0rp0r4t3_r3c0n}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Shodan Safari',
    'Find the exposed industrial control system.',
    'Osint',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/osint/osint_5.zip\",\"name\":\"osint_5.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{sh0d4n_s4f4r1}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Metadata Correlation',
    'Who authored the leaked document?',
    'Osint',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/osint/osint_6.zip\",\"name\":\"osint_6.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{m3t4d4t4_l34k}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Exposed Cloud Bucket',
    'Find the hidden AWS S3 bucket.',
    'Osint',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/osint/osint_7.zip\",\"name\":\"osint_7.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{s3_buck3t_l34k}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Darkweb Mirrors',
    'Trace the onion link to its surface web IP.',
    'Osint',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/osint/osint_8.zip\",\"name\":\"osint_8.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{d4rkw3b_m1rr0r}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Deleted History',
    'Find the redacted post on the Wayback Machine.',
    'Osint',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/osint/osint_9.zip\",\"name\":\"osint_9.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{w4yb4ck_m4ch1n3}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'BGP Hijacking Trace',
    'Identify the ASN responsible for the route leak.',
    'Osint',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    '[{\"url\":\"https://file.cysecdarmajaya.space/osint/osint_10.zip\",\"name\":\"osint_10.zip\",\"type\":\"file\"}]'::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{bgp_h1j4ck_4sn}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Advanced Blind SQLi',
    'Time-based extraction with WAF bypass.',
    'Web',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    []::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{w3b_bl1nd_sql1}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Insecure Deserialization',
    'PHP Object Injection leading to RCE.',
    'Web',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    []::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{w3b_d3s3r14l1z4t10n}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'SSRF to Cloud Metadata',
    'Bypassing internal IP filters.',
    'Web',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    []::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{w3b_ssrf_m3t4d4t4}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'XSS with CSP Bypass',
    'Stealing cookies despite strict CSP.',
    'Web',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    []::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{w3b_xss_csp_byp4ss}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'SSTI',
    'Server-Side Template Injection (Jinja2) to RCE.',
    'Web',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    []::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{w3b_sst1_j1nj42}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'XXE OOB',
    'Out-of-band XML External Entity injection.',
    'Web',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    []::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{w3b_xx3_00b_f4k3}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Prototype Pollution',
    'NodeJS vulnerability leading to auth bypass.',
    'Web',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    []::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{w3b_pr0t0typ3_p0llut10n}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'Race Condition (TOCTOU)',
    'Coupon redemption exploit.',
    'Web',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    []::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{w3b_r4c3_c0nd1t10n}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'GraphQL Introspection',
    'Finding hidden mutations.',
    'Web',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    []::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{w3b_gr4phql_1ntr0sp3ct10n}'
FROM ins;


WITH ins AS (
  INSERT INTO public.challenges (
    title, description, category, points, max_points, hint, difficulty, attachments, is_dynamic, min_points, decay_per_solve, event_id, is_active, services, flag_placeholder
  )
  VALUES (
    'JWT Algorithm Confusion',
    'Changing RS256 to HS256.',
    'Web',
    1000,
    1000,
    '[]'::jsonb,
    'Hard',
    []::jsonb,
    true,
    250,
    10,
    NULL,
    true,
    ARRAY[]::TEXT[],
    false
  )
  RETURNING id
)
INSERT INTO public.challenge_flags (challenge_id, flag)
SELECT id, 'DCSC{w3b_jwt_4lg0_c0nfus10n}'
FROM ins;

