-- Update Pwn and Web descriptions


UPDATE public.challenges 
SET description = description || E'\n\nTarget: `nc 103.127.98.249 10001`' 
WHERE title = 'Advanced Ret2libc' AND category = 'PWN';

UPDATE public.challenges 
SET description = description || E'\n\nTarget: `nc 103.127.98.249 10002`' 
WHERE title = 'Tcache Poisoning' AND category = 'PWN';

UPDATE public.challenges 
SET description = description || E'\n\nTarget: `nc 103.127.98.249 10003`' 
WHERE title = 'Format String Arbitrary Write' AND category = 'PWN';

UPDATE public.challenges 
SET description = description || E'\n\nTarget: `nc 103.127.98.249 10004`' 
WHERE title = 'House of Spirit' AND category = 'PWN';

UPDATE public.challenges 
SET description = description || E'\n\nTarget: `nc 103.127.98.249 10005`' 
WHERE title = 'Integer Overflow to Heap' AND category = 'PWN';

UPDATE public.challenges 
SET description = description || E'\n\nTarget: `nc 103.127.98.249 10006`' 
WHERE title = 'Stack Pivoting' AND category = 'PWN';

UPDATE public.challenges 
SET description = description || E'\n\nTarget: `nc 103.127.98.249 10007`' 
WHERE title = 'Use-After-Free' AND category = 'PWN';

UPDATE public.challenges 
SET description = description || E'\n\nTarget: `nc 103.127.98.249 10008`' 
WHERE title = 'Blind ROP' AND category = 'PWN';

UPDATE public.challenges 
SET description = description || E'\n\nTarget: `nc 103.127.98.249 10009`' 
WHERE title = 'Kernel ROP' AND category = 'PWN';

UPDATE public.challenges 
SET description = description || E'\n\nTarget: `nc 103.127.98.249 10010`' 
WHERE title = 'House of Force' AND category = 'PWN';

UPDATE public.challenges 
SET description = description || E'\n\nLink: http://103.127.98.249:9001 \n(Subdomain pending setup)' 
WHERE title = 'Advanced Blind SQLi' AND category = 'Webex-webex';

UPDATE public.challenges 
SET description = description || E'\n\nLink: http://103.127.98.249:9002 \n(Subdomain pending setup)' 
WHERE title = 'Insecure Deserialization' AND category = 'Webex-webex';

UPDATE public.challenges 
SET description = description || E'\n\nLink: http://103.127.98.249:9003 \n(Subdomain pending setup)' 
WHERE title = 'SSRF to Cloud Metadata' AND category = 'Webex-webex';

UPDATE public.challenges 
SET description = description || E'\n\nLink: http://103.127.98.249:9004 \n(Subdomain pending setup)' 
WHERE title = 'XSS with CSP Bypass' AND category = 'Webex-webex';

UPDATE public.challenges 
SET description = description || E'\n\nLink: http://103.127.98.249:9005 \n(Subdomain pending setup)' 
WHERE title = 'SSTI' AND category = 'Webex-webex';

UPDATE public.challenges 
SET description = description || E'\n\nLink: http://103.127.98.249:9006 \n(Subdomain pending setup)' 
WHERE title = 'XXE OOB' AND category = 'Webex-webex';

UPDATE public.challenges 
SET description = description || E'\n\nLink: http://103.127.98.249:9007 \n(Subdomain pending setup)' 
WHERE title = 'Prototype Pollution' AND category = 'Webex-webex';

UPDATE public.challenges 
SET description = description || E'\n\nLink: http://103.127.98.249:9008 \n(Subdomain pending setup)' 
WHERE title = 'Race Condition (TOCTOU)' AND category = 'Webex-webex';

UPDATE public.challenges 
SET description = description || E'\n\nLink: http://103.127.98.249:9009 \n(Subdomain pending setup)' 
WHERE title = 'GraphQL Introspection' AND category = 'Webex-webex';

UPDATE public.challenges 
SET description = description || E'\n\nLink: http://103.127.98.249:9010 \n(Subdomain pending setup)' 
WHERE title = 'JWT Algorithm Confusion' AND category = 'Webex-webex';
