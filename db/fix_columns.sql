-- ==============================================
-- Auto-generated fix_columns.sql
-- Run this in Supabase SQL Editor to add missing columns to your old database!
-- ==============================================

-- Add missing columns to users
ALTER TABLE public.users ADD COLUMN IF NOT EXISTS is_admin BOOLEAN DEFAULT false NOT NULL;
ALTER TABLE public.users ADD COLUMN IF NOT EXISTS bio VARCHAR(255) DEFAULT '';
ALTER TABLE public.users ADD COLUMN IF NOT EXISTS sosmed JSONB DEFAULT '{}'::jsonb;
ALTER TABLE public.users ADD COLUMN IF NOT EXISTS profile_picture_url VARCHAR(2048) DEFAULT NULL;
ALTER TABLE public.users ADD COLUMN IF NOT EXISTS banned_until TIMESTAMP WITH TIME ZONE DEFAULT NULL;
ALTER TABLE public.users ADD COLUMN IF NOT EXISTS ban_reason VARCHAR(255) DEFAULT NULL;

-- Add missing columns to challenges
ALTER TABLE public.challenges ADD COLUMN IF NOT EXISTS event_id UUID REFERENCES public.events(id) ON DELETE SET NULL;
ALTER TABLE public.challenges ADD COLUMN IF NOT EXISTS max_points INTEGER DEFAULT NULL;
ALTER TABLE public.challenges ADD COLUMN IF NOT EXISTS hint JSONB DEFAULT NULL;
ALTER TABLE public.challenges ADD COLUMN IF NOT EXISTS attachments JSONB DEFAULT '[]'::jsonb;
ALTER TABLE public.challenges ADD COLUMN IF NOT EXISTS services TEXT[] DEFAULT ARRAY[]::TEXT[];
ALTER TABLE public.challenges ADD COLUMN IF NOT EXISTS is_maintenance BOOLEAN DEFAULT false;
ALTER TABLE public.challenges ADD COLUMN IF NOT EXISTS is_dynamic BOOLEAN DEFAULT false;
ALTER TABLE public.challenges ADD COLUMN IF NOT EXISTS min_points INTEGER DEFAULT 0;
ALTER TABLE public.challenges ADD COLUMN IF NOT EXISTS decay_per_solve INTEGER DEFAULT 0;
ALTER TABLE public.challenges ADD COLUMN IF NOT EXISTS total_solves INTEGER DEFAULT 0;
ALTER TABLE public.challenges ADD COLUMN IF NOT EXISTS flag_placeholder BOOLEAN DEFAULT false;

-- Add missing columns to teams
ALTER TABLE public.teams ADD COLUMN IF NOT EXISTS picture_url VARCHAR(2048) DEFAULT NULL;

-- Fix the sync challenge solves function (if it broke earlier)
CREATE OR REPLACE FUNCTION public.sync_challenge_solves()
RETURNS void AS $$
BEGIN
  UPDATE public.challenges c
  SET total_solves = (
    SELECT COUNT(*)::integer FROM public.solves s WHERE s.challenge_id = c.id
  );
END;
$$ LANGUAGE plpgsql
SECURITY DEFINER SET search_path = public, auth, extensions;
GRANT EXECUTE ON FUNCTION public.sync_challenge_solves() TO authenticated;
SELECT public.sync_challenge_solves();
