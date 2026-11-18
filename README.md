# Kviz arena

Kviz za učionicu po uzoru na Kahoot – svi tipovi pitanja su otključani i besplatni.

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

Kvizovi se čuvaju u pregledaču (localStorage) – povremeno ih izvezi kao rezervnu kopiju.
Igrači se povezuju direktno (WebRTC, PeerJS), bez sopstvenog servera.
