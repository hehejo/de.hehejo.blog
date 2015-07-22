---
title: Ich und mein Raspberry Pi 2
tags: RaspberryPi2
series:
  name: Ich und mein Raspberry Pi 2
  part: 1
---
Ich habe mich sehr über den Raspberry Pi 2 als Geburtstagsgeschenk gefreut.
So ein Raspberry Pi 2 ist tendenziell schon ein richtiger *großer* Rechner.   
Gleich Raspbian installiert und ein wenig Himbeerenduft geschnuppert. 
Basteln und kleine Projekte *könnten* auf dem Plan stehen — aber ich brauch keinen Wecker, keine Wetterstation, keine blinkende LED-Lichter oder gar eine Türklingel mit Wärmebildkamera.   
Nach der anfänglichen Euphorie stellte sich also etwas Ernüchterung ein: Das Ding ist ein richtiger Rechner. Was fange ich also nun damit an?

## Spielebox & Medienspieler & Fileserver
Eine Möglichkeit ist es ihn mittels [RecalBox][rbox] in eine Retro-Spielemaschine zu verwandeln. Die Installation scheint einfach zu sein und Spiele gibt es wohl wie Sand am Meer. Dennoch hatte ich dazu keine Lust.   
Eine andere Möglichkeit wäre es, den kleinen Rechner zum Fileserver respektive Medienserver umzuwandeln. Beiden übernimmt aber schon mein NAS[^1].

Kurzzeitig spielte ich mit der Idee, den Raspberry Pi 2 zum Abspielen von [DI.fm][di]-Streams zu nutzen. Aber als ich an den immensen Aufwand gedacht habe, der notwendig ist um auch nur in die Nähe der DI.fm-App für Android zu kommen, habe ich das Projekt gleich wieder beerdigt. Es ist einfach einfacher mein Handy oder das Tablet an die Musikanlage zu stöpseln.

[^1]: Bis auf den Medienserver. Das benötige ich zur Zeit wirklich nicht.
[rbox]: http://www.recalbox.com
[di]: http://www.di.fm

## Jetzt also eine Blog-Box
Grundsätzlich lebt dieser Blog ja auf dem MacBook (das mir bis zur letzten Präsentation meiner Dissertation noch zur Verfügung steht).
Im Urlaub habe ich ja viele Artikel geschrieben und auch so am Blog gefeilt.
Alle Dateien habe ich im Git-Repository auf dem NAS und kann so auch auf meinem Windowsrechner meinen Blog erstellen und auf den Webserver kopieren. Eigentlich   
Leider musste ich feststellen, dass ich den Blog zur Zeit nicht mehr auf meinem Windowsrechner erstellen kann. :-/

Aber ich könnte ja auf dem Rasberry Pi 2 ein *richtiges* Linux installieren, das Blogsystem aufsetzen und mich via ssh Artikel schreiben und/oder den Blog bauen.
Das mach ich.   
Und darüber schreibe ich in kommenden Artikeln!
