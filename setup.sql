-- Rode no Supabase: SQL Editor > New query > Run
create table public.estado (
  user_id uuid primary key default auth.uid() references auth.users(id) on delete cascade,
  dados jsonb not null default '{}'::jsonb,
  atualizado timestamptz not null default now()
);
alter table public.estado enable row level security;
create policy "ler o proprio" on public.estado for select using (auth.uid() = user_id);
create policy "criar o proprio" on public.estado for insert with check (auth.uid() = user_id);
create policy "editar o proprio" on public.estado for update using (auth.uid() = user_id) with check (auth.uid() = user_id);
create policy "apagar o proprio" on public.estado for delete using (auth.uid() = user_id);
