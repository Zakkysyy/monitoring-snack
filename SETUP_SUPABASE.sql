-- SALIN SEMUA KODE DI BAWAH INI LALU TEMPEL KE MENU "SQL EDITOR" DI SUPABASE, LALU KLIK "RUN"

create table if not exists public.snack_monitoring (
  id text primary key,
  data jsonb not null,
  updated_at bigint not null
);

alter table public.snack_monitoring enable row level security;

drop policy if exists "Allow public access snack_monitoring" on public.snack_monitoring;

create policy "Allow public access snack_monitoring"
on public.snack_monitoring
for all
to anon, authenticated
using (true)
with check (true);

