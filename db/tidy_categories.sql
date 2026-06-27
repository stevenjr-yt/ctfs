-- Fix duplicate categories (including trailing spaces and exact mappings)
UPDATE public.challenges SET category = TRIM(category);

UPDATE public.challenges SET category = 'PWN' 
WHERE UPPER(TRIM(category)) = 'PWN';

UPDATE public.challenges SET category = 'Keliptografi' 
WHERE LOWER(TRIM(category)) IN ('keliptografi', 'keliptogelapi', 'crypto');

UPDATE public.challenges SET category = 'Intelo dulu mas rusdi' 
WHERE LOWER(TRIM(category)) IN ('intelo dulu mas rusdi', 'osint');

UPDATE public.challenges SET category = 'Ripers Enjinering' 
WHERE LOWER(TRIM(category)) IN ('ripers enjinering', 'rev');

UPDATE public.challenges SET category = 'Webex-webex' 
WHERE LOWER(TRIM(category)) IN ('webex-webex', 'web');

UPDATE public.challenges SET category = 'Porensik Asik' 
WHERE LOWER(TRIM(category)) IN ('porensik asik', 'forensic');
