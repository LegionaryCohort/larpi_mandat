#import "util/weblink.typ": weblink
#import "util/todo.typ": todo

#set par(justify: true)
#set page(margin: 2.5cm)
#set text(lang: "de")

#set heading(numbering: none)
#show heading.where(level: 1): it => {
  set text(size: 28pt)
  set align(center)
  pagebreak()

  grid(columns: (30pt, 5fr, 30pt), align: (left + horizon, center + horizon), {
    let num = counter(heading).display("1")
    if num != "0" {
      counter(heading).display("1")
    } else []
  }, it.body, none)
  v(10pt)
};
#show heading.where(level: 2): set text(size: 22pt)
#show heading.where(level: 3): set text(size: 16pt)
#show heading.where(level: 4): it => {
  set text(size: 14pt)
  it.body
  linebreak()
}

#set enum(numbering: (..n) => {
  n = n.pos()
  if n.len() == 1 {
    // level 1
    numbering("1)", ..n)
  } else {
    numbering("a)", ..n.slice(1))
  }
}, full: true, indent: 15pt, spacing: 10pt)
#set list(indent: 15pt, spacing: 10pt)

#let stv = [
  #weblink(
    display: "Single Transferable Vote",
    url: "https://de.wikipedia.org/wiki/%C3%9Cbertragbare_Einzelstimmgebung",
  ) (STV)
]

/******************
 * BEGIN DOCUMENT *
 ******************/

#{
  set align(center + horizon)
  text(weight: "bold", size: 40pt)[
    Mandat der\ Regelhütenden
  ]
  v(0pt)
  text(size: 20pt)[Helene G., Mario T. & Max V.]
}

#outline(title: "Inhaltsverzeichnis", depth: 3)

#counter(page).update(0)
#set page(numbering: "1")

= Änderungstabelle

#todo("Vollständigen Diff mit Link einfügen")

#{
  show ref: it => {
    let el = it.element
    let loc = el.location()
    let pageref = link(loc, [Seite #numbering(loc.page-numbering(), ..counter(page).at(loc))])
    numbering(loc.page-numbering())
    if el != none and el.func() == heading [
      #pageref - #it\ #link(loc, el.body)
    ]
  }

  table(
    columns: (4.5cm, 1fr),
    [@einleitung],
    "Der erste Absatz wurde für die Wahl 2026 aktualisiert.",
    [@mandat_rechte],
    "Redigierungsrecht ergänzt",
    [@mandat_RW_prozess],
    "Neuer Abschnitt hinzugefügt, um den Gesamtprozess von dem Prozess für Entwürfe abzugrenzen",
    [@mandat_prozess],
    "Benennung der konkreten Rechte hervorgehoben",
    [@wahl_durchfuehrung],
    "Anpassung, um mehrere Wahlen pro Jahr zuzulassen",
    [@wahl_wahlrecht],
    [
      Formulierung der Qualifikationsbedingungen wurde verbessert\
      Link zum Formular für Wahlregistrierungen ergänzt
    ],
    [@wahl_regelhuetis],
    "Anmerkung zur Übergabe der Regelhütendenwahl an den Verband ergänzt",
  )
}

#set heading(numbering: "1.1")

= Einleitung <einleitung>
Wir (Helene, Mario und Max) möchten uns 2026 wieder als Regelhütende zur Wahl stellen.
Unser Mandat beruht auf dem Mandat der letzten Wahlperiode.
Allerdings haben wir einige Anpassungen vorgenommen, die uns jetzt, mit einem Jahr Erfahrung als Regelhütende, sinnvoll erscheinen.

Im Folgenden legen wir dar, mit welchen Absichten und Vorstellungen wir an das gesamte Thema herantreten wollen.
Wir nehmen außerdem am Dokumentenende Stellung zu einigen Fragen, die sicherlich aufkommen werden.

#todo("Braucht es den nachfolgenden Absatz noch?")
Wir beabsichtigen das Mandat bis zu der kommenden Wahl der Regelhütenden auf Grundlage von Feedback aus der Gemeinschaft anzupassen und das FAQ aktuell zu halten.

== Definition der Begriffe “Regelidee” und “Regelentwurf” <definition_begriffe>
Vorab möchten wir einige Begriffe definieren, die wir im weiteren Text häufig verwenden werden.
Wir verzichten auf die Verwendung von _Regelvorschlag_, da dieser Begriff zur Zeit für Verschiedenstes genutzt wird.
An seiner Stelle verwenden wir die Begriffe _Regelidee_ und _Regelentwurf_.\
*Regelidee* ist ein Sammelbegriff für alle Vorschläge, Anregungen und Wünsche, die aus der Gemeinschaft zum Regelwerk kommen.
Regelideen können auch Formulierungsvorschläge für Regeltexte enthalten.
Sie sollten aber auf jeden Fall eine Form von Absicht enthalten, die deutlich macht, welches Ziel mit der Regelidee verfolgt wird.\
Ein *Regelentwurf* hingegen wird von den Regelhütenden erstellt.
Regelentwürfe bestehen aus
- einer Formulierung des Regeltextes,
- einer Absichtserklärung,
- eine Einschätzung der Regelhütenden, was die Änderung in der Spielpraxis bewirken wird.

Dabei ist davon auszugehen, dass ein oder mehrere Regelentwürfe aus einer Regelidee entwickelt werden.
Nur vollständige Regelentwürfe werden in der Regelwahl zur Abstimmung gestellt.

= Mandat <mandat>
Wir stellen uns für das folgende Mandat mit folgenden Pflichten und Rechten zur Wahl.
Unsere Pflichten, Rechte und der Prozess leiten sich aus unseren Zielen und Methoden ab, die wir weiter unten erläutern.

== Pflichten <mandat_pflichten>
+ Entgegennehmen von Regelideen
+ Moderieren des Regelforums
+ Prüfen von Formulierungsvorschlägen
+ Entwickeln von Regelentwürfen aus Regelideen
  + Verfassen einer Absichtserklärung des Regelvorschlags
  + Formulieren des Regeltextes
  + Einschätzen der Auswirkung auf die Spielpraxis
+ Durchführen der Regelwahl
  + Festlegen der Wahl-Modalitäten
  + Bekanntgeben der zur Wahl stehenden Regelentwürfe
  + Durchführen der Wahl
  + Auswerten der Wahl
+ Erstellen und Aktualisieren des Regelwerks (Dokument)

== Rechte <mandat_rechte>
- Regelideen einbringen (Vorschlagsrecht)
- Regelideen begründet priorisieren (Priorisierungsrecht)
- Regelideen begründet ablehnen (Vetorecht)
- Begründetes Entfernen von fehlerhaften Regelentwürfen aus einer Regelwahl oder das Abbrechen und Neuorganisieren einer Regelwahl (Korrekturrecht)
- Bearbeiten der Formulierungen, Formatierung und grafischen Elementen des Regelwerks ohne inhaltliche Änderungen (Redigierungsrecht)

#pagebreak()
== Entwicklungsprozess für das Regelwerk <mandat_RW_prozess>
Es gibt zwei Arten von Änderungen am Regelwerk:
+ Redigierungen
+ Regelentwürfe

Änderungen am Regelwerk werden im Anschluss an eine Regelwahl in das Regelwerk übernommen und als neue Regelwerksversion veröffentlicht.
Korrekturen von Zeichen- oder Satzfehler dürfen auch ohne Regelwahl durchgeführt und in einer Regelwerksversion veröffentlicht werden.

=== Redigierungen <redigierungen>
Redigierungen sind Anpassungen am Regelwerk ohne inhaltliche Änderungen.
Sie sind typischerweise Korrekturen, Umstellungen von Sätzen, Ändern der Formatierung oder kleinere Umformulierungen, insbesondere zum Angleichen von Formulierungen aneinander.
Redigierungen müssen nicht mit in der Regelwahl nur zur Abstimmung gestellt werden.
Wenn sich das Regelwerk durch Redigierungen signifikant verändernt, sollte diese Version in einer Regelwahl bestätigt werden.

=== Regelentwürfe <regelentwuerfe>
Regelentwürfe ändern Regeln oder Definitionen innerhalb des Regelwerks.
Sie basieren im Regelfall auf eingebrachten Regelideen.
Ändern Regelentwürfe die Spielpraxis sind sie im Regelfall zu testen, bevor sie in einer Regelwahl zur Abstimmung gestellt werden.

=== Dokumentation von Änderungen <doc_change>
Alle Änderungen werden im #weblink(display: "GitHub Repo", url: "https://github.com/JuggerGermany/Regelwerk") dokumentiert.
Es ist die Single Source of Truth.
Das heißt, das der Formulierungstext dort hinterlegt ist und im #weblink(display: "Jugger-Regelforum", url: "https://forum.jugger.org/viewforum.php?f=5") zusammen mit erläuternden Text verlinkt wird.
Wir haben uns für dieses Vorgehen entschieden, um Übertragungsfehler zu vermeiden und Zeit zu sparen, da wir die aufwendige Formatierung von Forumspost reduzieren können.

== Entwicklungsprozess für Regelentwürfe <mandat_prozess>
Der Prozess zum Entwickeln von Regelvorschlägen ist hier schematisch dargestellt und wird im weiteren erläutert.

#grid(
  columns: (5fr, 7fr),
  column-gutter: 20pt,
  align: (center + horizon, start),
)[#image("regel_prozess.svg", width: 100%)][
  Regelideen werden von der Gemeinschaft oder auch uns (*Vorschlagsrecht*) auf verschiedene Kommunikationswege eingebracht und werden im Jugger-Regelforum dokumentiert.
  Regelideen beinhalten mindestens eine Absicht, können aber auch Formulierungsvorschläge enthalten.
  #todo("Wollen wir uns weiterhin auf die Anzahl der Tagungen festlegen?")
  Im Jahr führen wir zwei bis vier Regeltagungen durch, um Regelentwürfe zu entwickeln.
  #todo("Arbeitsliste entspricht nicht der Realität")
  Die Zeitpunkte und die Arbeitsliste werden im Vorfeld bekannt gegeben.
  Wir behalten uns vor, Regelideen begründet nicht auf die Arbeitsliste zu setzen (*Priorisierungsrecht* und *Vetorecht*).\
  Auf den Tagungen versuchen wir Regelhütenden vollständige Regelentwürfe zu entwickeln.
  Sie beinhalten die Formulierung des Regeltextes, ein Absichtserklärung entsprechend der Regelidee und eine Einschätzung der Regelhütenden, was die Änderung in der Spielpraxis bewirken wird.\
  Beim Erarbeiten der Formulierungen achten wir darauf, dass sie widerspruchsfrei zu den bestehenden Formulierungen des Regelwerks sind, dem Wording des Regelwerks entsprechen und geeignet sind, um die Absicht des Entwurfs zu erfüllen.\
  Vollständige Regelentwürfe, die zur nächsten Wahl gestellt werden sollen, werden veröffentlicht.
  Sie können dann getestet werden.
  Sollten Regelentwürfe nicht ausreichend praxisgetestet sein, werden sie nicht zur Wahl zugelassen.
  Diese Einschätzung übernehmen wir auf Grundlage von Rückmeldungen der Turnierausrichtenden.\
  Die Wahl wird mit allen geeigneten Regelentwürfen vorbereitet und Ende der Saison durchgeführt.
  Sollten unerwartet während der laufenden Wahl fundamentale Fehler in den Entwürfen erkannt werden, können wir Abstimmungspunkte aus der Wahl entfernen.
  Nach einer entsprechenden Korrektur können die Entwürfe dann in der nächsten Wahl abgestimmt werden.
  Sollten mehrere derartige Fälle auftreten, kann auch die gesamte Wahl abgebrochen und verschoben werden (*Korrekturrecht*).
]

== Modalitäten der Regelwahl <mandat_wahlmodalitaeten>
=== Durchführung <wahl_durchfuehrung>
Eine Regelwahl soll zum Ende der Saison im November durch die Regelhütenden durchgeführt werden.
Dazu wird ein geeignetes Umfragetool verwendet.
Die Ergebnisse der Wahl werden im Anschluss veröffentlicht und zusätzlich unabhängig vom Forum archiviert.\
Der Ablauf der Regelwahl sieht wie folgt aus:
+ Bekanntgabe des Wahltermins
  + Start und Ende des Wahlzeitraum
  + Veröffentlichungszeitpunkt der Ergebnisse
+ Bekanntgabe der abstimmbaren Regelentwürfe vor Beginn des Wahlzeitraums
+ Durchführung der Wahl
+ Veröffentlichung der Ergebnisse
+ Veröffentlichen des neuen Regelwerks

Die Kommunikation zur Regelwahl findet im Juggerforum statt.

In Ausnahmefällen dürfen mehrere Regelwahlen innerhalb eines Jahres durchgeführt werden, oder die Regelwahl darf verschoben werden.
Die Gründe sind jeweils von den Regelhütenden spätestens zusammen mit der Wahl bekanntzugeben.

=== Wahlrecht <wahl_wahlrecht>
Um sich zu qualifizieren, muss ein Team an mindestens drei Turnieren teilgenommen haben, für die jeweils die nachfolgenden Voraussetzungen erfüllt sind.
Das Turnier muss:
- Im JTR eingetragen sein,
- Im Qualifikationszeitraum stattgefunden haben,
- Mit mehr als 8 Teams stattgefunden haben,
- In einer deutschen Jugger-Region (wie in 2.4 der Liga-Statuten beschrieben) stattgefunden haben.

Zusätzlich müssen mindestens zwei dieser drei Turniere in unterschiedlichen deutschen Jugger-Regionen stattgefunden haben.

Diese Bedingungen sollen sicherstellen, dass Teams ihre Regelbubble verlassen und im Austausch mit verschiedenen Teams stehen.

Der Beginn des Qualifikationszeitraum ist im Regelfall mindestens ein Jahr lang. Liegt das Ende des Qualifikationszeitraum der vorhergegangen Wahl länger als ein Jahr zurück, beginnt der Qualifikationszeitraum ab dort. So kann jedes Turnier in der ein oder anderen Qualifikation beachtet werden. Sollte die letzte Regelwahl weniger als ein Jahr zurückliegen, kann es sein, dass ein Turnier für mehrere Qualifikationen zählen kann.

Teams müssen sich im Vorlauf der Wahl für die Qualifizierung zur Regelwahl registrieren.
Dies dient dazu, nur Teams mit ins Quorum aufzunehmen, die ein tatsächliches Interesse an der Regelwahl haben.
Dazu ist ein Formular auf #weblink(display: "jugger.org", url: "https://www.jugger.org/regelhuetende") eingerichtet.\
Die Regelwahl ist offen für internationale Teams.
Die Kommunikation der Regelhütenden läuft exklusiv auf Deutsch, um den Aufwand zu begrenzen.

=== Abstimmungspunkte und Wahlverfahren <wahl_inhalte>
*Änderungen* entsprechen den vorher ausgearbeiteten Regelentwürfen.
Sie müssen sich immer gegen „Keine Änderung“ durchsetzen.
Über sie wird mit dem Wahlverfahren #stv abgestimmt.
Da das Wahlverfahren geeignet ist, um abgestufte Meinungen abzubilden, ist eine ⅔ Mehrheit nicht notwendig.
Erreicht ein Entwurf nicht die ⅔ - aber die Absolute Mehrheit im STV, wird die Änderung übernommen.
Das Regelthema wird für die nächste Regelwahl allerdings nicht gesperrt.

*Anpassungen* des Regeltext, die syntaktische Änderungen aber keine semantischen Änderungen beinhalten, werden mit Ja / Nein Optionen gegebenenfalls gebündelt abgestimmt und mit einfacher Mehrheit entschieden.

*Korrekturen* wie Rechtschreib- und Zeichensetzungsfehler, Gendergerechte Sprachvarianten, Layoutänderung und Ähnliches werden nicht abgestimmt, aber angekündigt und dokumentiert.

Das *Quorum* für die Annahme der Regelwahl liegt bei ⅔ aller qualifizierten Teams.

Regelthemen, die abgelehnt oder mit ⅔-Mehrheit bestätigt wurden, werden für ein Jahr (im Regelfall für die folgenden Wahl) gesperrt.

== Modalitäten der Regelhütendenwahl <wahl_regelhuetis>
Zum Zeitpunkt der Erstellung dieses Mandats ist noch offen, ob die Wahl der Regelhütenden zukünftig durch den Verband durchgeführt wird.
Sollte die Jugger-Gemeinschaft sich dagegen entscheiden, liegt es weiter in der Verantwortung der Regelhütenden die Wahl der Regelhütenden durchzuführen.
Für diesen Fall gilt der unten stehende Absatz.

Die Wahl der Regelhütenden findet zusammen mit der jährlichen Regelwahl statt.
Zur Wahl stehen Gruppen oder Einzelpersonen von Regelhütenden zusammen mit ihrem Mandat.
Der Umfang und die Inhalte der Mandate sind den Bewerbenden überlassen.
Stehen nur zwei Mandate zur Wahl, gewinnt das Mandat mit einer einfachen Mehrheit.
Stehen mehr als zwei Mandate zur Wahl, wird das Wahlverfahren #stv angewendet.
Wir empfehlen, dass sich Regelhütenden-Teams aus mindestens drei Personen zusammensetzten.

= Unsere Ziele\ Was möchten wir erreichen? <ziele>
Wir verfolgen im Rahmen unserer Kandidatur mehrere Ziele, auf die wir im Folgenden näher eingehen.
Hier einmal im Überblick:
+ Ein möglichst widerspruchsfreies Regelwerk
+ Ein aktuelles Regelwerk
+ Ein zielgruppengerechtes Regelwerk
+ Einen standardisierten Prozess für die Regelbearbeitung
+ Regelentwürfe mit konstanter Qualität
+ Begeisterung für die Regelarbeit in der Gemeinschaft

== Allgemeine Methoden <ziele_methoden>
- Wissen zusammentragen
- Gesprächsräume schaffen / Gesprächsräume für die Kommunikation / über Regel- themen mit uns schaffen
- Praxistests anregen und attraktiv gestalten

Um die oben genannten Ziele zu erreichen, möchten wir im engen Austausch mit der Gemeinschaft stehen.
So soll verteiltes Wissen gebündelt und genutzt werden.
Dazu wollen wir Gesprächsräume schaffen, über die die Gemeinschaft sich mit uns zu Regelthemen austauschen kann (z.B. dedizierte Kontaktkanäle, moderierte Regeldiskussionen an Turnierabenden, etc.).

Zielspezifische Methoden werden unter den einzelnen Zielen beschrieben.

== Ziel \#1: Ein möglichst widerspruchsfreies Regelwerk <ziel_widerspruchsfrei>
Das Regelwerk soll unserer Meinung nach in sich konsistent, also möglichst frei von Widersprüchen und ähnlichen Unklarheiten sein.
Ein widerspruchsfreies Regelwerk führt zu weniger Diskussion, sorgt für eine einheitliche Spielpraxis und ist einfacher zu verstehen.

==== Methoden Ziel \#1 zu erreichen:
Um Unklarheiten vorzubeugen, werden wir neue Regelideen auf Konsistenz zum bestehenden Regelwerk prüfen und ggfs. anpassen.
Ebenso werden wir das aktuelle Regelwerk auf bestehende Inkonsistenzen prüfen und Regelentwürfe ausarbeiten, um diese zu beheben.

== Ziel \#2: Ein aktuelles Regelwerk <ziel_aktuell>
Zwar wird es immer Diskrepanzen zwischen dem starren Text und der lebendigen Praxis geben, dennoch sollen diese so gering wie möglich sein.
Das Regelwerk soll daher zeitnah an die gespielte Praxis angepasst werden.

==== Methoden Ziel \#2 zu erreichen:
Wir wollen selbstständig Veränderungen in der Spielpraxis beobachten und Turnier-Erfahrungen der Gemeinschaft sammeln.
Dafür nehmen wir an Turnieren in Deutschland teil und tauschen uns mit der Gemeinschaft aus.
Aus diesen Beobachtungen und mitgeteilten Turnier-Erfahrungen erarbeiten wir neue Regelideen, um Entwicklungen abzubilden und entsprechende Regelentwürfe zur Wahl zu stellen.

== Ziel \#3: Ein zielgruppengerechtes Regelwerk <ziel_zielgruppengerecht>
Das Regelwerk soll dazu dienen, Personen, welche die Sportart Jugger nicht kennen, die Regeln des Sports zu erklären.
Außerdem soll es einen Turnierbetrieb ermöglichen, in dem Regeln klar ausgelegt und umgesetzt werden können.
Um dies sicherzustellen, soll das Regelwerk einer Reihe von Qualitätsmerkmalen gerecht werden:
Es soll leicht verständlich formuliert sein und eine zugängliche Struktur aufweisen und keine spielentscheidenden Fragen offen lassen.
Alle verwendeten Begriffe müssen innerhalb des Regelwerkes klar definiert werden.
Für die Anwendung in der Spielpraxis ist außerdem eine praktikable Spiel- und Schiedsbarkeit unabdinglich.

==== Methoden Ziel \#3 zu erreichen:
Die zentrale Prüfung, Anpassung und Ausarbeitung von Regelideen (wie unter Ziel 1 und 2 beschrieben) soll dazu dienen die oben genannten Qualitätsmerkmale zu erfüllen.
Zusätzlich wollen wir ein Glossar mit den wichtigsten Begriffen erstellen.

== Ziel \#4: Einen standardisierten Prozess für die Regelbearbeitung <ziel_prozess>
Wir streben an den Prozess der Regelbearbeitung zu verbessern und verfolgen dabei 5 Kriterien:
+ _Zuverlässigkeit_\
  Der Prozess soll sicherstellen, dass wir regelmäßig Regelwahlen von konstanter Qualität erreichen.
  Es soll klare Richtlinien für den Umgang mit Problemen, unvorhergesehenen Schwierigkeiten o.ä. geben.
+ _Einbindung der Gemeinschaft_\
  Der Prozess soll einfach und verständlich sein, um eine Beteiligung so unkompliziert wie möglich zu machen.
  Der ganzen Gemeinschaft soll es möglich sein, Wissen einzubringen, Korrekturvorschläge zu machen und Kritik zu üben.
  Wir möchten direkte, leicht zugängliche und moderierte Beteiligungsverfahren etablieren, um sicherzustellen, dass auch die stumme Mehrheit eingebunden ist.
+ _Repräsentative Wahlen & Ergebnisse_\
  Die Ergebnisse der Regelarbeit (zur Wahl gestellte Regelentwürfe und Wahlergebnisse) sollen die Stimmung bzw. den Willen der Gemeinschaft abbilden.
+ _Reproduzierbarkeit_\
  Der Prozess soll so gestaltet sein, dass es uns und anderen möglich ist, ihn bei jeder Wahl zu wiederholen.
  Die Ergebnisse des Prozesses sollen nicht von den beteiligten Personen abhängig sein.
+ _Arbeitsfähigkeit der Regelhütenden_\
  Um ihren Aufgaben pflichtgemäß nachkommen zu können, muss der Prozess ausreichend Handlungsraum für die Regelhütenden schaffen.
  Gleichzeitig muss sichergestellt sein, dass der Gesamtaufwand für die Regelhütenden in einem umsetzbaren Rahmen bleibt.

==== Methoden Ziel \#4 zu erreichen:
Damit die Regelbearbeitung auch im Nachhinein nachvollziehbar ist, werden die einzelnen Schritte stets begründet und dokumentiert.
Wir werden Übersichten und Zusammenfassungen zur Verfügung stellen, damit es ohne großen Aufwand möglich ist, sich zu informieren und teilzuhaben.
Dies beinhaltet auch Listen aktueller Regelideen in Bearbeitung.
Um zusätzlich eine starke Einbindung der Gemeinschaft in den Prozess zu ermöglichen, wollen wir moderierte Gesprächsräume schaffen.

Damit die Regelhütenden-Arbeit im zeitlichen Rahmen von ehrenamtlich engagierten Menschen bleibt, sollen den Regelhütenden die unter Punkt “Mandat” angeführten Rechte zur Moderation der Regelideen gegeben werden.

== Ziel \#5: Gute Regelvorschläge <ziel_qualitaet>
Wir wollen sicherstellen, dass Regelentwürfe, die zur Wahl gestellt werden, den folgenden Qualitätsstandard erfüllen.
Wir verfolgen das Ziel, Inkonsistenzen und Widersprüche zu vermeiden (siehe Ziel 1 - “Ein möglichst widerspruchsfreies Regelwerk erschaffen”).
Daher sollten die Formulierungen der Regelentwürfe logisch in das restliche Regelwerk passen.
Zudem möchten wir sicherstellen, dass Änderungen, die einen erheblichen Einfluss auf die Spielpraxis haben bzw. abbilden, nur dann zur Wahl gestellt werden, wenn sie ausreichend in der Praxis getestet wurden.
Solche Regelentwürfe werden bei der Wahl markiert.
Es soll damit sichergestellt werden, dass sich alle ein klares Bild davon verschaffen können, worüber sie eigentlich genau abstimmen und welche Konsequenzen das hat.

Wir wollen für die Regelwahlen gute Regelentwürfe ausarbeiten.
Mit guten Regelentwürfen meinen wir solche, die sinnvoll, robust und konsistent sind.
Konkret streben wir folgende Qualitätsmerkmale an:
- _Die Formulierung eines Regelentwurfes eignet sich um, das Ziel der Regeländerung zu erfüllen._\
  Ein Regelentwurf beabsichtigt immer eine konkrete Änderung umzusetzen.
  Regelentwürfe sollen dazu geeignet sein, die angestrebten Änderungen tatsächlich auch zu erreichen.
  Ein Regelentwurf soll keine unbeabsichtigten anderen Änderungen erzeugen.
- _Ein Regelentwurf ist verständlich._\
  Alle Elemente eines Regelentwurfs (Formulierung, Absichtserklärung und Einschätzung) sollen klar und einfach formuliert sein.
  Die Änderungen an der Spielpraxis, die ein Regelentwurf beabsichtigt, sollen einfach anzuwenden sein.
  Die Auswirkungen der Änderungen sollen darüber hinaus gut einschätzbar sein.
- _Die Formulierung eines Regelentwurfs steht nicht im Widerspruch zum Rest des Regelwerks._\
  Formulierungen der Regelentwürfe sollen logisch in das rechtliche Regelwerk passen, um Inkonsistenzen und Widersprüche zu vermeiden (siehe Ziel 1 - “Ein möglichst widerspruchsfreies Regelwerk erschaffen”).
- _Ein Regelentwurf lässt sich in der Praxis umsetzen._\
  Regelentwürfe sollen so gespielt und geschiedst werden können, wie sie beabsichtigt sind.

==== Methoden Ziel \#5 zu erreichen:
Um sicherzustellen, dass Regelentwürfe diesen Qualitätsmerkmalen entsprechen, werden wir verschiedene Maßnahmen ergreifen:\
Aus Regelideen werden von uns *Formulierungen* entwickelt, die an das Wording des Regelwerks angepasst sind, damit das Regelwerk ein einheitliches und unmissverständliches Sprachbild behält.\
Wir stellen neben der reinen Formulierung zusätzliche Informationen zur Verfügung.
Dies beinhaltet eine *Absichtserklärung*, in der genauer erklärt wird, was der Regelentwurf bewirken soll.
Außerdem wird der Grund für die Änderung erläutert.\
Zusätzlich geben wir eine *Einschätzung* zu den potentiellen Auswirkungen der konkreten Formulierung ab.\
Regelentwürfe werden von uns zudem iterativ entwickelt.
Das bedeutet, dass wir unvollständige Regelentwürfe veröffentlichen und uns Feedback aus der Gemeinschaft dazu einholen.
Damit wollen wir frühzeitig mögliche Probleme von Entwürfen erkennen und darauf reagieren können.\
Um außerdem sicherzustellen, dass die bestmöglichen Formulierungen gefunden werden, werden wir Regelentwürfe in verschiedenen Varianten ausarbeiten.
Diese bewerten wir anhand diverser Kriterien (z.B. Umfang, Komplexität, Methodik, Effektivität, Schiedsbarkeit oder andere) und stellen die sinnvollsten zur Wahl.

== Ziel \#6: Begeisterung für die Regelarbeit in der Gemeinschaft <ziel_begeisterung>
Wir wollen erreichen, dass die Gemeinschaft sich an dem gesamten Prozess der Regelwahlen beteiligen kann.
Dazu wollen wir Hürden verringern, um die Beteiligung an der Regelwahl, der Regelgestaltung und dem generellen Austausch über Regelthemen zu erhöhen.\
Alle notwendigen Informationen sollen in geeigneter Form bereitgestellt werden, sodass zur Wahl informierte Entscheidungen getroffen werden können, ohne sich vorher zeitintensiv mit den Regelthemen befassen zu müssen.
Zudem wollen wir durch unsere Arbeit mehr Interesse für das Amt der Regelhütenden erzeugen.

==== Methoden Ziel \#6 zu erreichen:
Die von der Gemeinschaft eingebrachten Regelideen werden von uns aufgenommen und mit einer Einschätzung beantwortet.
Um einen geregelten (und vor allem planbaren) Prozess zu schaffen, wollen wir Termin-basiert arbeiten.
Das heißt, dass wir uns als Regelhütenden zu vorher festgelegten Terminen treffen, um aus Regelideen Entwürfe zu erarbeiten.
Zu diesen Terminen veröffentlichen wir im Vorfeld eine Arbeitsliste von Regelideen.
Damit stellen wir sicher, dass keine Regelideen untergehen und einsehbar ist, an welchen Entwürfen gearbeitet wird.\
Um die Relevanz der verschiedenen Ideen besser einzuschätzen und uns weitere Perspektiven anzueignen, werden wir Gesprächsräume schaffen.
Diese sollen den Austausch zu Regelideen und Regelentwürfen innerhalb der Gemeinschaft, sowie zwischen den Regelhütenden und der Gemeinschaft, fördern.
Wir wollen, dass das Wissen aus der Gemeinschaft mit den Regelhütenden geteilt werden kann.\
Als weitere Maßnahme werden Turnier-Orgas von uns über die aktuellen Regeltentwürfe informiert.
Das Ziel dabei ist es, noch nicht ausreichend getestete Regelentwürfe unter Turnierbedingungen testen zu können.
Auf solchen Turnieren werden wir als Regelhütenden auch moderierte Regelforen anbieten, damit sich die Gemeinschaft zeitnah über ihre Praxiserfahrungen austauschen kann.

= Unsere Motivation und\ Selbstverständnis <warum_der_bums>
== Motivation <motivation>
Wir halten Jugger für eine außergewöhnliche Sportart, die maßgeblich durch ihre Herausstellungsmerkmale geprägt wird.
Die basisdemokratische Gestaltung des Regelwerks und die Möglichkeit, dass sich jede Person in der Regelgestaltungsprozess einbringen kann, wollen wir erhalten und stärken.\
Das jetzige Regelwerk ist über die vielen Jahre schon verbessert und verfeinert worden.
Der Bedarf, Jugger und sein Regelwerk weiterzuentwickeln, besteht in der Jugger-Gemeinschaft.
Wir möchten dazu beitragen, dass die Stärken des Regelwerks erhalten bleiben und gleichzeitig Entwicklungen vorantreiben.
Dazu möchten wir gängige Spielpraxis zeitnah im Regelwerk abbilden können.
Ein aktuelles Regelwerk sorgt für weniger Frust auf Turnieren und im Training und kann auch die Zugänglichkeit zu Jugger weiter verbessern.\
Uns motiviert, dass wir hoffen, klare Strukturen und einen reproduzierbaren Prozess zur Regelhüterei zu schaffen, der gute und konsistente Ergebnisse liefert.
Ein derartiger Prozess macht nicht nur die Regelhüterei für uns angenehm, sondern könnte auch als Blaupause für zukünftige Entwicklungen Anwendung finden.
Die Auseinandersetzung mit Regeln kann frustrierend sein.
Je mehr Leute sich aber dafür begeistern können, umso besser kann das Regelwerk werden, weswegen eine guter Prozess über die Regelhütenden hinaus gewinnbringend ist.\
Wir drei haben bereits in der Vergangenheit an Regelthemen und anderen Projekten zusammen gearbeitet und wissen, dass wir gemeinsam produktiv sein können und unsere individuellen Stärken nutzen können.
Wir pflegen einen respektvollen Umgang miteinander und können uns gut in ein gemeinsames Team einbringen.
Wir freuen uns darauf diese Zusammenarbeit als Regelhütende auszuweiten.

== Selbstverständnis <selbstverstaendnis>
In unseren Augen handeln die Regelhütenden im Auftrag der Jugger-Gemeinschaft.
Zu ihren organisatorischen Aufgaben gehören das Ausrichten der Regelwahl und das Veröffentlichen des Regelwerks.
Da sie sich intensiv mit den Regeln auseinandersetzen besitzen sie spezifisches Wissen mit dem sie moderativ und unterstützend im Regeldiskurs tätig sein können und sollten.
Wir erwarten von den Regelhütenden, dass sie in der Ausführung ihres Amtes die Neutralität zu den Regelthemen halten.
Ein guter Regeldiskurs kann nur gelingen, wenn die Regelhütenden hilfsbereit, offen und responsiv sind.
Sie sollten ihre Absichten früh kommunizieren und ihre Tätigkeit nachvollziehbar und einsehbar machen.\
Wir hoffen, diese Ansprüche mit unserem Mandat abbilden zu können.
Das Mandat leitet sich aus unseren Zielen ab und daran wollen wir auch gemessen werden.
Wir als Personen sehen uns nicht als festen Bestandteil des Prozesses, wir erfüllen lediglich die notwendigen Rollen, um ihn durchzuführen.
So besteht die Möglichkeit, dass in Zukunft auch andere diese Rollen übernehmen könnten.\
Dabei sind wir immer noch einzelne Menschen, die ihre Freizeit für Jugger aufwenden.
Es ist uns wichtig, durch diese Tätigkeit in keine gesundheitsschädigende Überlastung zu geraten.
Dementsprechend versuchen wir, unser Zeitpensum zu ermitteln und möglichst effektiv zur Verfügung zu stellen.
Es ist nicht auszuschließen, dass private Umstände zusätzlichen Druck auf Einzelne ausüben, dass sie sich gezwungen sehen, ihr Amt aufzugeben.
Um genau das zu vermeiden, ermitteln wir frühzeitig unsere Arbeitsbelastung durch das Regelhüten und planen unsere Arbeit entsprechend.\
Trotz aller guten Absichten werden uns sicher Fehler unterlaufen.
Auch könnte der hier skizzierte Prozess in der Praxis Hürden aufweisen, die wir jetzt noch nicht sehen.
Wir sind bereit, uns Kritik zu stellen und uns, den Prozess oder das Mandat weiter zu verbessern.
Wir versuchen schon jetzt unsere Abläufe so zu gestalten, dass sie möglichst resistent gegen Fehler sind.

= Stellungnahmen FAQ <faq>

==== Woher weiß ich, dass ihr das Veto-Recht nicht nutzt, um persönliche Präferenzen durchzusetzen? Muss ich damit rechnen, dass künftige Regeländerungen in Pawns-Interesse ausfallen werden?
Wir möchten ein Veto-Recht, um die Arbeitslast sinnvoll einschränken zu können und keine Ressourcen auf Vorschläge verschwenden zu müssen, die nicht umsetzbar oder zu weit von der aktuellen Spielpraxis entfernt sind (bspw. 8 Pompfende pro Team auf dem Feld und 3 davon müssen DK spielen).\
Jedes Veto soll transparent begründet werden und wenn die Begründungen nicht akzeptabel sind, kann die Jugger-Gemeinschaft uns auch wieder abwählen.

==== Welche Regeländerungen strebt ihr an?
Wir streben keine speziellen Regeländerungen an und haben keine persönliche Agenda.
Wir werden aus Regelideen Regelentwürfe erarbeiten und diese dann wie gewohnt in der Gemeinschaft zur Wahl stellen.

==== Euer Projekt klingt nach einem sehr hohen Arbeitsaufwand. Habt ihr euch überlegt, wie ihr das stemmen wollt?
Uns ist bewusst, dass unsere Vorstellungen zeitintensiv sind.
Um eine effiziente Einteilung zu ermöglichen, möchten wir so verfahren, wie unter Prozess dargestellt.
Dadurch soll die Alltagsbelastung so gering wie möglich sein und gleichmäßig über das Jahr verteilt werden.
Gleichzeitig haben wir uns in dieser Gruppe gefunden, weil wir uns aufeinander verlassen und Arbeitsteilung möglich ist.

==== Was ist, wenn ich eure Idee prinzipiell gut finde, aber einzelne Personen nicht in eurem Team sehen möchte?
Wir sind der Meinung, dass jede*r von uns wichtigen Input und Fähigkeiten mitbringt, die der Regelarbeit im vorgeschlagenen Sinne zuträglich sind.
Zusätzlich vertreten wir kontroverse Meinungen und haben Kontakt zu verschiedenen Teilen der Jugger-Gemeinschaft.
Dadurch erhoffen wir uns unter anderem leichtere Kommunikation mit den Regelhütenden.
Deshalb haben wir uns entschieden, nur gesammelt zur Wahl anzutreten.
Wenn persönliche Gründe schwerwiegend gegen einzelne Personen sprechen, gibt es immer die Möglichkeit, uns nicht zu wählen.

==== Würdet ihr auch andere Menschen in eure Gruppe aufnehmen?
Im Moment planen wir nicht, weitere Menschen in vollem Umfang an der Regelhütiarbeit zu beteiligen.
Dafür gibt es mehrere Gründe.
Vornehmlich die folgenden beiden:
- zu viele Menschen machen konstruktives Arbeiten deutlich schwieriger (jede*r der*die schonmal Gremienarbeit gemacht hat, kann ein Lied davon singen)
- Unser Plan ist mit einer hohen Arbeitslast verbunden.
  Wir kennen uns und wissen, dass wir auch bei kontroversen Themen respektvoll, kompromissorientiert und zuverlässig miteinander arbeiten.
  Eine solche Umgebung zwischen Menschen zu schaffen, erfordert zusätzliche Zeit, die wir aktuell nicht zusätzlich aufbringen können.
Das heißt nicht, dass wir nicht prinzipiell bereit sind, mit anderen Menschen zusammenzuarbeiten.
Der mittel- bis langfristige Plan ist ja auch, dieses Amt stückweise abzugeben und neue Regelhütis einzuarbeiten (sofern das System bleiben soll).
Allerdings ist eine Etablierung unseres Systems in einer Gruppe, die sich vorher detailliert damit auseinandergesetzt hat, zeiteffizienter und einfacher möglich.

==== Was wird aus dem AG-System und was ist, wenn eure Variante der Regelhütung nicht funktioniert?
Das AG-System erfordert viel Eigeninitiative der Gemeinschaft und sorgt gleichzeitig für eine Verantwortungsdiffusion, weil niemand das ganze Regelwerk im Auge haben muss.
Das hat in der Vergangenheit wiederholt zu Problemen geführt.
Unser Vorschlag würde das AG-System ablösen und eine Mitarbeit der Gemeinschaft auf andere Arten unterstützen (s. Ziel 6).\
Wir möchten uns vorerst für ein Jahr zur Wahl stellen.
Wenn wir gewählt werden und die Mehrheit der Jugger-Gemeinschaft nach dieser Zeit unzufrieden mit den Resultaten ist, sollten wir nicht wiedergewählt werden.
Im allerschlimmsten Fall kann das Regelwerk in der Form, wie es vor unserer Bearbeitung war, wieder etabliert werden.
Damit würde ein Jahr Regelbearbeitung verloren gehen, aber kein nachhaltiger Effekt spürbar werden.

==== Wie wollt ihr eure hohen Ziele messen?
Wir haben versucht, möglichst klar auszuformulieren, was unser Anspruch und unsere Ziele sind.
Natürlich werden wir uns daran orientieren, aber letztendlich obliegt es der Gemeinschaft, unsere Arbeit zu bewerten und ggf. von einer Wiederwahl abzusehen.
