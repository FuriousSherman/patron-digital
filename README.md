# PATRON Endurance — Build 001
A development scaffold, not a production-ready release. No real athlete data bundled.

## Setup
1. Use Node 22. Run `npm install` and commit the generated lockfile after review.
2. Create a development Supabase project. Run `supabase/001.sql` once in its SQL editor.
3. Copy `.env.example` to `.env.local` and enter the project URL and public anon key. Never use a service-role key in client code.
4. Enable email authentication and allow the local redirect URL `http://localhost:3000` in Supabase Auth settings.
5. Run `npm run dev`, visit localhost:3000. Sign in by email, then enter a baseline.
6. Run `npm run build` before deployment. Create a private GitHub repository, import into Vercel, configure environment variables and allowed auth redirect URLs. Keep staging and production databases separate.

## Scope
Responsive public site, methodology, knowledge placeholder, email OTP link and append-only baseline insertion with owner-only database policies. Authentication session, cross-user isolation and database behavior require integration testing. No coach access, assessment calculations, billing or device integrations yet.

## Release gates
Review dependencies and lockfile; verify auth callbacks and sign-out UX; implement account deletion/export and consent; validate RLS using two test accounts; add automated tests, error handling, rate limiting, monitoring, backup and restore procedures; complete independent security and Australian privacy review before collecting real athlete information. Do not deploy publicly with real data until these gates pass.
