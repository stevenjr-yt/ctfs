-- Add missing columns for user profiles
ALTER TABLE public.users ADD COLUMN IF NOT EXISTS github_id VARCHAR(255);
ALTER TABLE public.users ADD COLUMN IF NOT EXISTS avatar_url TEXT;
ALTER TABLE public.users ADD COLUMN IF NOT EXISTS bio TEXT;
ALTER TABLE public.users ADD COLUMN IF NOT EXISTS website VARCHAR(255);
ALTER TABLE public.users ADD COLUMN IF NOT EXISTS linkedin_url VARCHAR(255);
ALTER TABLE public.users ADD COLUMN IF NOT EXISTS university VARCHAR(255);
ALTER TABLE public.users ADD COLUMN IF NOT EXISTS phone VARCHAR(50);
ALTER TABLE public.users ADD COLUMN IF NOT EXISTS instagram_url VARCHAR(255);
ALTER TABLE public.users ADD COLUMN IF NOT EXISTS fullname VARCHAR(255);

-- Ensure anon and authenticated can select from users
GRANT SELECT ON public.users TO anon;
GRANT SELECT ON public.users TO authenticated;

-- Reload PostgREST schema cache
NOTIFY pgrst, 'reload schema';
