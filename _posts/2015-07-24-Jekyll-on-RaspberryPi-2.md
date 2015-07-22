---
title: Jekyll auf dem Raspberry Pi 2 
tags: RaspberryPi2 Technik
series:
  name: Ich und mein Raspberry Pi 2
  part: 3
---
Nun ist es geschafft: Ich kann mich per ssh auf dem Raspberry Pi 2 anmelden und meinen Blog per Jekyll erzeugen lassen.
Es gibt für mich nun zwei mögliche Szenarien: Die Nutzung als ssh-Schreibmaschine oder als Build-Server.


## Einrichtung von Jekyll und Co
Auf meinem MacBook ist alles eingerichtet und so habe ich gar nicht mehr an die ganzen nötigen Abhängigkeiten gedacht.

* Ruby, weil ich es als Nutzer verwalten will, habe ich per [rbenv][1] und [ruby-build][2] installiert.
ruby-build benötigt zur Kompilierung natürlich make und gcc. `pacman -S gcc make`
* Der Quellcode meiner Webseite liegt in einem Git-Repository auf dem NAS. Um die entsprechende Freigabe zu mounten, benötige ich also samba (bzw. cifs). Und natürlich [git][3]. `pacmen -S git cifs-ulits`
* Jekyll nutz im Build-Prozess ExecJs und es fehlte eine nutzbare Installation von JavaScript. `pacman -S nodejs` 
* Zur Verarbeitung der Bilder benötige ich noch [ImageMagick][4]. `pacman -S imagemagick`
* Der Arbeitspeicher lang nicht: Ich muss ein swapfile anlegen
* Die Komprimierung der erzeugten Dateien erfolgt im Endeffekt mit dem [YUI-compresser][5] und das benötigt ein JRE. `pacman -S jre8-openjdk-headless`
* Die erzeugten Datein werden mit `rsync` auf den Webserver kopiert. `pacman -S rsync`
* Und zu guter Letzt gab es noch ein Problem mit Encodings. Ein beherztes `localectl set-locale LANG=en_US.UTF-8` löste dieses Problem.

Also viele kleine Abhängigkeiten, die ich so gar nicht mehr bedacht habe.[^1]   
`pacman -S cifs-utils gcc git imagemagick jre8-openjdk-headless makc nodejs rsync`

[1]: https://github.com/sstephenson/rbenv#readme
[2]: https://github.com/sstephenson/ruby-build#readme
[3]: http://git-scm.com/
[4]: http://imagemagick.org
[5]: https://yui.github.io/yuicompressor/

[^1]: Tatsächlich nutze ich nun `jekyll-press` das die Komprimierung ohne den YUI-compressor durchführt. Ohne die Startup-Zeit von Java ist der Buildprozess nun auch schneller. Zudem kam es öfters vor, dass der YUI-compressor einfach hing.


## Anwendungsszenarien
Wie in der Einleitung kurz beschrieben, gibt es für mich zwei mögliche Anwendungsszenarien. Einmal als ssh-Schreibmaschine und einmal als Build-Server.

### ssh-Schreibmaschine
Ich logge mich per ssh auf dem Raspberry Pi 2 ein und schreibe dort direkt meine Artikel, erzeuge die Webseite und kopiere sie auf meinen Webserver.
Das funktioniert im Ansatz recht gut; der Build-Prozess dauert mir mit etwas über fünf Minuten zu lang.

### Build-Server
Ich kann aber auch einen cronjob anlegen, der einmal täglich das Git-Repository auscheckt, die Webseite erzeugt und auf den Webserver kopiert. Ich würde meine Artikel also auf einem anderen Rechner schreiben und diese mit dem Master-Repository (z.B. auf [Github][github]) synchronisieren.   
Aus Spaß an der Freude könnte ich das mit einem Jenkins überwachen und mich bei Fehlern benachrichtigen lassen.

Bei diesem Ansatz müsste ich auf eine schnelle Aktualisierung meines Blogs verzichten. Ein neuer Artikel erscheint erst am nächsten Tag.
Der lange Build-Prozess ist dann nicht mehr so tragisch.
Allerdings müsste dazu der Raspberry Pi 2 durchgehend an sein und ein klein wenig muss ich da auch an den Stromverbrauch denken.

Ganz abgefahren: Ich könnte auch das Master-Repository auf den Raspberry Pi 2 legen und ihn aus den Internet für mich zugreifbar machen.
Synchronisiere ich das Repository, würde ein `post-receive`-hook den Build-Prozess und das Deployment anstoßen.   
Das müsste ich dann noch mit wake-on-lan und einem shutdown nach erfolgtem Deployment kombinieren.

Nun ja, ich muss mal sehen wie ich das machen werde.

[github]: https://github.com/hehejo/de.hehejo.blog
