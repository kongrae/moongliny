-- Run this in Supabase SQL Editor after creating a public bucket named `anniversary`.

create policy "Public read anniversary photo"
on storage.objects
for select
to anon, authenticated
using (bucket_id = 'anniversary');

create policy "Upload anniversary photo"
on storage.objects
for insert
to anon, authenticated
with check (
  bucket_id = 'anniversary'
  and name = 'current-main.jpg'
);

create policy "Replace anniversary photo"
on storage.objects
for update
to anon, authenticated
using (
  bucket_id = 'anniversary'
  and name = 'current-main.jpg'
)
with check (
  bucket_id = 'anniversary'
  and name = 'current-main.jpg'
);
