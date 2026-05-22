# Supabase Storage setup

1. Supabase 콘솔에서 프로젝트를 만듭니다.
2. `Project Settings` -> `API`에서 `Project URL`과 `anon public` key를 복사합니다.
3. `index.html`의 `supabaseConfig.url`, `supabaseConfig.anonKey`에 붙여넣습니다.
4. `Storage` -> `Buckets`에서 `anniversary` 버킷을 만들고 `Public bucket`으로 설정합니다.
5. SQL Editor에서 `supabase.storage.policies.sql` 내용을 실행합니다.
6. 배포 후 가운데 기념일 사진을 선택하면 `anniversary/current-main.jpg`로 업로드됩니다.

업로드된 사진은 Supabase Storage public URL로 다시 로드되므로 다른 휴대폰에서도 같은 사진이 보입니다.
