create table public.baselines (
 id uuid primary key default gen_random_uuid(),
 athlete_id uuid not null references auth.users(id) on delete cascade,
 recorded_at timestamptz not null default now(),
 goal text not null check (length(goal) between 1 and 1000),
 recent_hours numeric not null check (recent_hours between 0 and 672)
);
alter table public.baselines enable row level security;
revoke all on public.baselines from anon, authenticated;
grant select, insert on public.baselines to authenticated;
create policy baseline_read_own on public.baselines for select to authenticated using (auth.uid() = athlete_id);
create policy baseline_insert_own on public.baselines for insert to authenticated with check (auth.uid() = athlete_id);
