# Kviz arena

Kviz za učionicu – svi tipovi pitanja su otključani i besplatni.

**Igraj:** https://programsedu.github.io/kviz/

Nastavnik pokreće igru na velikom ekranu, a učenici ulaze sa telefona unošenjem PIN-a (ili skeniranjem QR koda).

## Tipovi pitanja
Kviz (2–6 odgovora) · Više tačnih · Tačno/Netačno · Ukucaj odgovor · Klizač · Slagalica (redosled) · Pribadača na slici · Anketa · Oblak reči · Otvoreni odgovor · Slajd

## Mogućnosti
- slike u pitanjima, vreme 5 s – 4 min, dupli bodovi ili bez bodova
- bonus za niz tačnih odgovora, mešanje pitanja i odgovora
- rang lista, pobedničko postolje, rezultati u CSV-u
- režim „Vežbaj sam”, uvoz/izvoz kvizova (JSON)
- jezici: srpski, makedonski, bugarski, rumunski, engleski

Nastavnik se može prijaviti (e-mail i lozinka) i tada se kvizovi automatski čuvaju u oblaku (Supabase) i dostupni su na svakom računaru. Bez prijave kvizovi ostaju u pregledaču.
Igra se odvija preko Supabase Realtime kanala (rezerva: PeerJS). Šema baze je u `supabase.sql`.
