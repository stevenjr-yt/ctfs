-- Update Web descriptions to include Source Code attachments

UPDATE public.challenges 
SET description = description || E'\n\nAttachment: https://file.cysecdarmajaya.space/web/web_2.zip'
WHERE title = 'Insecure Deserialization' AND category = 'Webex-webex' AND description NOT LIKE '%web_2.zip%';

UPDATE public.challenges 
SET description = description || E'\n\nAttachment: https://file.cysecdarmajaya.space/web/web_5.zip'
WHERE title = 'SSTI' AND category = 'Webex-webex' AND description NOT LIKE '%web_5.zip%';

UPDATE public.challenges 
SET description = description || E'\n\nAttachment: https://file.cysecdarmajaya.space/web/web_7.zip'
WHERE title = 'Prototype Pollution' AND category = 'Webex-webex' AND description NOT LIKE '%web_7.zip%';

UPDATE public.challenges 
SET description = description || E'\n\nAttachment: https://file.cysecdarmajaya.space/web/web_8.zip'
WHERE title = 'Race Condition (TOCTOU)' AND category = 'Webex-webex' AND description NOT LIKE '%web_8.zip%';

UPDATE public.challenges 
SET description = description || E'\n\nAttachment: https://file.cysecdarmajaya.space/web/web_10.zip'
WHERE title = 'JWT Algorithm Confusion' AND category = 'Webex-webex' AND description NOT LIKE '%web_10.zip%';
