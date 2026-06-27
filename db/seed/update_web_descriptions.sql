-- Update Web descriptions to use the new subdomains

-- 1. Replace the old IP/Port format if it exists
UPDATE public.challenges 
SET description = REGEXP_REPLACE(description, 'Link: http://103.127.98.249:[0-9]+ \n\(Subdomain pending setup\)', 'Link: https://sqli.cysecdarmajaya.space') 
WHERE title = 'Advanced Blind SQLi' AND category = 'Webex-webex' AND description LIKE '%Subdomain pending setup%';

-- 2. Or append if it doesn't have a link yet
UPDATE public.challenges 
SET description = description || E'\n\nLink: https://sqli.cysecdarmajaya.space' 
WHERE title = 'Advanced Blind SQLi' AND category = 'Webex-webex' AND description NOT LIKE '%Link: %';

-- Repeat for others:
UPDATE public.challenges SET description = REGEXP_REPLACE(description, 'Link: http://103.127.98.249:[0-9]+ \n\(Subdomain pending setup\)', 'Link: https://unserialize.cysecdarmajaya.space') WHERE title = 'Insecure Deserialization' AND category = 'Webex-webex' AND description LIKE '%Subdomain pending setup%';
UPDATE public.challenges SET description = description || E'\n\nLink: https://unserialize.cysecdarmajaya.space' WHERE title = 'Insecure Deserialization' AND category = 'Webex-webex' AND description NOT LIKE '%Link: %';

UPDATE public.challenges SET description = REGEXP_REPLACE(description, 'Link: http://103.127.98.249:[0-9]+ \n\(Subdomain pending setup\)', 'Link: https://ssrf.cysecdarmajaya.space') WHERE title = 'SSRF to Cloud Metadata' AND category = 'Webex-webex' AND description LIKE '%Subdomain pending setup%';
UPDATE public.challenges SET description = description || E'\n\nLink: https://ssrf.cysecdarmajaya.space' WHERE title = 'SSRF to Cloud Metadata' AND category = 'Webex-webex' AND description NOT LIKE '%Link: %';

UPDATE public.challenges SET description = REGEXP_REPLACE(description, 'Link: http://103.127.98.249:[0-9]+ \n\(Subdomain pending setup\)', 'Link: https://xss.cysecdarmajaya.space') WHERE title = 'XSS with CSP Bypass' AND category = 'Webex-webex' AND description LIKE '%Subdomain pending setup%';
UPDATE public.challenges SET description = description || E'\n\nLink: https://xss.cysecdarmajaya.space' WHERE title = 'XSS with CSP Bypass' AND category = 'Webex-webex' AND description NOT LIKE '%Link: %';

UPDATE public.challenges SET description = REGEXP_REPLACE(description, 'Link: http://103.127.98.249:[0-9]+ \n\(Subdomain pending setup\)', 'Link: https://ssti.cysecdarmajaya.space') WHERE title = 'SSTI' AND category = 'Webex-webex' AND description LIKE '%Subdomain pending setup%';
UPDATE public.challenges SET description = description || E'\n\nLink: https://ssti.cysecdarmajaya.space' WHERE title = 'SSTI' AND category = 'Webex-webex' AND description NOT LIKE '%Link: %';

UPDATE public.challenges SET description = REGEXP_REPLACE(description, 'Link: http://103.127.98.249:[0-9]+ \n\(Subdomain pending setup\)', 'Link: https://xxe.cysecdarmajaya.space') WHERE title = 'XXE OOB' AND category = 'Webex-webex' AND description LIKE '%Subdomain pending setup%';
UPDATE public.challenges SET description = description || E'\n\nLink: https://xxe.cysecdarmajaya.space' WHERE title = 'XXE OOB' AND category = 'Webex-webex' AND description NOT LIKE '%Link: %';

UPDATE public.challenges SET description = REGEXP_REPLACE(description, 'Link: http://103.127.98.249:[0-9]+ \n\(Subdomain pending setup\)', 'Link: https://pollution.cysecdarmajaya.space') WHERE title = 'Prototype Pollution' AND category = 'Webex-webex' AND description LIKE '%Subdomain pending setup%';
UPDATE public.challenges SET description = description || E'\n\nLink: https://pollution.cysecdarmajaya.space' WHERE title = 'Prototype Pollution' AND category = 'Webex-webex' AND description NOT LIKE '%Link: %';

UPDATE public.challenges SET description = REGEXP_REPLACE(description, 'Link: http://103.127.98.249:[0-9]+ \n\(Subdomain pending setup\)', 'Link: https://race.cysecdarmajaya.space') WHERE title = 'Race Condition (TOCTOU)' AND category = 'Webex-webex' AND description LIKE '%Subdomain pending setup%';
UPDATE public.challenges SET description = description || E'\n\nLink: https://race.cysecdarmajaya.space' WHERE title = 'Race Condition (TOCTOU)' AND category = 'Webex-webex' AND description NOT LIKE '%Link: %';

UPDATE public.challenges SET description = REGEXP_REPLACE(description, 'Link: http://103.127.98.249:[0-9]+ \n\(Subdomain pending setup\)', 'Link: https://graphql.cysecdarmajaya.space') WHERE title = 'GraphQL Introspection' AND category = 'Webex-webex' AND description LIKE '%Subdomain pending setup%';
UPDATE public.challenges SET description = description || E'\n\nLink: https://graphql.cysecdarmajaya.space' WHERE title = 'GraphQL Introspection' AND category = 'Webex-webex' AND description NOT LIKE '%Link: %';

UPDATE public.challenges SET description = REGEXP_REPLACE(description, 'Link: http://103.127.98.249:[0-9]+ \n\(Subdomain pending setup\)', 'Link: https://jwt.cysecdarmajaya.space') WHERE title = 'JWT Algorithm Confusion' AND category = 'Webex-webex' AND description LIKE '%Subdomain pending setup%';
UPDATE public.challenges SET description = description || E'\n\nLink: https://jwt.cysecdarmajaya.space' WHERE title = 'JWT Algorithm Confusion' AND category = 'Webex-webex' AND description NOT LIKE '%Link: %';
