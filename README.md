Kleine LaTeX Klasse für Protokolle bei den Pfadfindern.

# Aktuelle Befehle
## header
Parameter:
1. Titel (default: `Protokoll Führungsrunde`)
2. Datum
3. Anwesend
4. Abwesend
5. Protokollführung

## topic
Parameter:
1. Überschrift

Aktuell nur alias für `\section`

## subtopic
Parameter:
1. Überschrift

Aktuell nur alias für `\subsection`

## subsubtopic
Parameter:
1. Überschrift

Aktuell nur alias für `\subsubsection`

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

Gibt aktuell nur Input aus.

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

# Makefile
Funktioniert nur auf Linux. Braucht `pdflatex` installiert.