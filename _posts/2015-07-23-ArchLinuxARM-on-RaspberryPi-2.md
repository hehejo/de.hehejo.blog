---
title: Installation von ArchLinuxARM auf dem Raspberry Pi 2
tags: ArchLinuxARM RaspberryPi2 Technik
series:
  name: Ich und mein Raspberry Pi 2
  part: 2
---
Als erste Aufgabe für die Blog-Box stand die Installation von ArchLinux auf dem Raspberry Pi 2 auf dem Programm.
An sich kein Hexenwerk, aber es war dann doch etwas aufwändiger als gedacht…

## Installationsmethoden
Die von der Raspberry Pi Foundation favorisierte Installationsmethode ist die [Kopie eines vorgefertigten Images auf eine SD-Karte][image-install].
Früher gab es ein [ArchLinuxARM][alarm]-Image zum Download, aber wegen [Unstimmigkeiten][hate] haben sich die Verantwortlichen/Aktivisten von ArchLinuxARM dazu entschlossen nur noch eine Installation via rootfs anzubieten.
Bei diesem Ansatz wird ein Tarball des root-Filesystems angeboten und der Anwender ist selbst für eine korrekte Partitionierung, Formatierung der SD-Karte und Kopie der Dateien zuständig.
Keine Sorge, es gibt eine [*sehr* ausführliche Anleitung][alarm-install]. Es ist sogar jeder Tastendruck für die Partitionierung mit `fdisk` angegeben.

## Installation
Also alles eigentlich kein Problem — würde ich nicht mit Mac (oder Windows) arbeiten.
Zunächst ist die `fdisk` in einer anderen Variante installiert und zudem wird ext4 nicht nativ unterstützt.   
Ich konnte also weder die Partitionen wie gewünscht anlegen noch formatieren und damit schon gar nicht die Dateien auf die SD-Karte kopieren.

Ich habe ein LiveLinux in einer virtuellen Maschine gestartet und diesem den Zugriff auf die SD-Karte im USB-Kartenlesen gewährt.
Nun konnte ich die Installation wie [beschrieben][alarm-install] durchführen und mit der Konfiguration des Systems beginnen.   
Darüber schreibe ich in einem der kommenden Artikel.

Ich habe ein [Image][alarm-image] meiner SD-Karte erstellt und biete es zum [Download][alarm-image] an.

[hate]: http://archlinuxarm.org/forum/viewtopic.php?f=31&t=7966&#p43241
[alarm]: http://archlinuxarm.org
[image-install]: https://www.raspberrypi.org/documentation/installation/installing-images/
[alarm-install]: http://archlinuxarm.org/platforms/armv7/broadcom/raspberry-pi-2#qt-platform_tabs-ui-tabs2
[alarm-image]: https://drive.google.com/folderview?id=0B71Zn3XgfwRcVVhqU2kxcG90Vjg&usp=sharing
