---
title: Programmierwettbewerbe
tags: coding 
---
Wer hält sich nicht gerne die Finger gelenkig und genießt kleine Denkaufgaben?   
Heute möchte ich euch [CodeWars][cw] und [CodeEval][ce] vorstellen, zwei der zahlreichen Seiten auf denen man Programmieraufgaben lösen kann und sich [damit][cw-jo] [brüsten][ce-jo] darf.   

Grundsätzlich sind die Rahmenbedingungen gleich: In einer Aufgabenstellung wird das Problem beschrieben und man kann seine Lösung (in verschiedenen Programmiersprachen) abgeben.
Diese durchläuft ein paar Tests und das Ergebnis steht fest.   
Natürlich gibt es ein paar Unterschiede.


## Programm vs Methode
Bei CodeEval muss ein Programm abgegeben werden, das die Eingabe (via `stdin`) annimmt und parst und die Ausgabe (die Lösung) auf `stdout` ausgibt. Parsen der Eingabe ist also *immer* ein Bestandteil des Programmes.  
CodeWars hingegen ruft eine Methode auf. Die Signatur ist dabei vorgegeben und muss eingehalten werden. Alles andere ist dem Entwickler selbst überlassen.

## Tests
CodeEval liefert eine Testeingabe und -ausgabe; die Programmkorrektheit ist also leicht per `diff` prüfbar. Schummeln, d.h. nur die geforderte Ausgabe erzeugen, reicht aber nicht (oder zumindest nicht für die volle Punktzahl): es gibt versteckte Tests.   
Bei CodeWars stellen die Aufgabensteller *meist* Testsuiten bereit. Es kann jedoch aus passieren, dass man diese selbst erstellen muss.

## UI
Ganz klar: CodeWars ist sexier. Es sieht und fühlt sich wie eine IDE aus. Bei CodeEval ist's eher wirklich ein Abgabesystem: Code schreiben, hochladen und auf die Prüfverarbeitung warten.

## Rankings
Bei CodeEval bearbeitet man Aufgaben (verschiedener Schwere), erhält dafür Punkte und steigt im Ranking auf.   
CodeWars organisiert die Aufgaben in Katas und der Entwickler erlangt verschiedene Grade (kyu). Das ist irgendwie süß.

## Community
Die Community ist bei CodeWars viel mehr ausgeprägt. Aufgaben (und Lösungen) werden diskutiert und bewertet (_best practise_ und _clever_) werden. Ebenso lässt sich eine fremde Lösung mit der Eigenen vergleichen.   
Bei CodeEval ist man eher ein Einzelkämpfer und sieht höchstens, dass der Code _unique_ ist. Und CodeEval zeigt mir RAM-Verbrauch und Laufzeit an. Das ist nett.

## Unterstützte Programmiersprachen
CodeWars unterstützt derzeit Clojure, CoffeeScript, C#, Haskell, Java, JavaScript, Python und Ruby.   
CodeEval unterstützt derzeit Bash (4.2.24), C (4.8.1), C# (4.0), C++ (4.8.1), Clojure (1.5.1), Go (1.2), Haskell (7.4.1), Java (1.7), JavaScript (1.8.5), Lua (5.1.4), Objective-C (2.0), Perl (5.14.2), PHP (5.3.10), Python 2 (2.7.3), Python 3 (3.2.3), R (3.1.2), Ruby (1.9.3), Scala (2.10.3), Tcl (8.5), Visual Basic.NET (4.0).

## Fazit
Auf beiden Plattformen macht es Spaß, Denkaufgaben zu lösen. CodeWars ist schöner gestaltet und bietet mit der Diskussionsmöglichkeit von Lösungen einen echten Mehrwert.
Außerdem lernt man hier gleich *test-driven-development*. 
Aber *leider* funktioniert bei mir der Editor nicht korrekt und ich kann kein `=` tippen.[^1]    
Wegen diesem Editorproblemen bin ich derzeit aber eher bei CodeEval unterwegs.

(Siehe auch meine Profile bei [CodeWars][cw-jo] und bei [CodeEval][ce-jo].)


[cw]: http://www.codewars.com
[cw-jo]: http://www.codewars.com/users/hehejo
[ce]: http://www.codeeval.com
[ce-jo]: https://www.codeeval.com/public/4e829d94a7374570ad477dc2e471ef6f0ad8a281/
[^1]: Das könnte auch an meinem Tastaturlayout [neo-layout](http://www.neo-layout.org) liegen.
