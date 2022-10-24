Kleine LaTeX Klasse für Protokolle bei den Pfadfindern.

# todo
https://www.ctan.org/pkg/xparse könnte sich für die Befehle anbieten.

# Aktuelle Befehle
## header
Parameter:
1. Titel (default: `Protokoll Führungsrunde`)
2. Datum
3. Abwesend
4. Protokollführung

## topic
Parameter:
1. Überschrift

## subtopic
Parameter:
1. Überschrift

## subsubtopic
Parameter:
1. Überschrift

## notes
Parameter:
1. Listenitems

## nt
Listenitem.
Parameter:
1. Itemtext

## voting
Parameter:
1. Abstimmungsname
2. Anzahl ja
3. Anzahl nein
4. Anzahl Enthaltung

Kann aktuell nur ja-nein-neutral-Abstimmungen

## termin
Parameter:
1. Datum/Zeitraum

## comment
Parameter:
1. Kommentar/Einwurf ohne Relevanz

## ra
Kurzer Pfeil nach rechts.

## la
Kurzer Pfeil nach links.

## Ra
Kurzer Doppelpfeil nach rechts.

## La
Kurzer Doppelpfeil nach links.

## t
Tabs, aktuell umgesetzt mit \looparrowright

# Makefile
work in progress
Funktioniert nur auf Linux. Braucht `pdflatex` installiert.