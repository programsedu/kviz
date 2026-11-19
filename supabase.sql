-- Kviz arena: tabela za kvizove nastavnika (svako vidi i menja samo svoje kvizove)
create table if not exists public.kvizovi (
  id uuid primary key default gen_random_uuid(),
  owner uuid not null default auth.uid() references auth.users(id) on delete cascade,
  title text not null default '',
  data jsonb not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);
create index if not exists kvizovi_owner_idx on public.kvizovi(owner);
alter table public.kvizovi enable row level security;
revoke all on public.kvizovi from anon;
grant select, insert, update, delete on public.kvizovi to authenticated;
drop policy if exists "kvizovi_select" on public.kvizovi;
drop policy if exists "kvizovi_insert" on public.kvizovi;
drop policy if exists "kvizovi_update" on public.kvizovi;
drop policy if exists "kvizovi_delete" on public.kvizovi;
create policy "kvizovi_select" on public.kvizovi for select to authenticated using ((select auth.uid()) = owner);
create policy "kvizovi_insert" on public.kvizovi for insert to authenticated with check ((select auth.uid()) = owner);
create policy "kvizovi_update" on public.kvizovi for update to authenticated using ((select auth.uid()) = owner) with check ((select auth.uid()) = owner);
create policy "kvizovi_delete" on public.kvizovi for delete to authenticated using ((select auth.uid()) = owner);
