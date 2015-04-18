---
title: Die Technik dahinter
tags: technik
---
Heute erzähle ich ein wenig über die Technik dieses Blogs.   
Wie wird's erzeugt? Was habe ich mir beim Design gedacht?

Meine ersten Seiten waren PHP-basiert, dann nutzte ich [Rails][rails] oder auch mal Wordpress. Aktuell bin ich ein Freund von statischen Webseiten. Denn jedes noch so gute Framework kann in puncto Geschwindigkeit nicht mit statischen Webseiten mithalten, die einfach nur ausgeliefert werden müssen.[^1]
Zudem ist es — in meinen Augen — Overkill für sich selten ändernde Seiten und Inhalte ein komplettes CMS am Laufen zu halten: Installation, User-Verwaltung, Updates … und die potentiellen Angriffsrisiken.

Statische Webseiten-Generatoren gibt es wie Sand am Meer; auch wenn man sich nur auf Ruby-basierte Generatoren einschränkt.[^2] Die Auswahl fällt dementsprechend schwer.
Aktuell wird dieser Blog mit [jekyllrb][jekyll] betrieben. Eine alte Fassung lief mal mit [nanoc][nanoc].Die andere Seite meiner Medaille ([johannesheld.net][jh]) wird von [middleman][mm] erzeugt.

## Weshalb also jekyll?
Jekyll macht es Bloggern einfach. Jede Datei im Ordner `_posts`, die dem Namensschema `YYYY-MM-DD-Your-Post-Title.md` genügt, wird als Post verarbeitet. Der Text wird mit [Markdown](http://daringfireball.net/projects/markdown/) (oder auch textile) ausgezeichnet. Die Templates werden mit [liquid](https://docs.shopify.com/themes/liquid-documentation/basics) erstellt. Fertig.[^3]   
Jekyll ist zudem das System hinter [Github Pages][pages]. Schaut doch zum Spaß mal auf [hehejo.github.io](http://hehejo.github.io) vorbei.

Mit nanoc hatte ich damals gute Erfahrungen gemacht. Alles konnte genau definiert und eingestellt werden.
Die Routing- und Verarbeitungsregeln geben einem die volle Kontrolle.  
Bei jekyll gelten diverse Konventionen — die Dokumentation auf der Webseite ist sehr ausführlich;
Eine feine Kontrolle ist nur eingeschränkt möglich. Genau das, was mir für einen Blog genügt.

[middleman][mm] nutze ich für [johannesheld.net][jh], weil ich dort nicht regelmäßig neue Artikel einpflege, sondern ein/zwei/wenige feste Seiten habe.   
Middleman lässt sich sehr ausführlich konfigurieren und bietet die von Rails und Co bekannten *Auszeichnungsketten* an. `about.html.slim.erb` wird erst durch `eruby`, dann durch `slim` gejagt und das Ergebnis als HTML-Datei in den Ausgebeordner gelegt. 
Ich bin's zufrieden!


### Und Kommentare?
Nun, zugegeben: statische Webseiten und Kommentare beißen sich. Da geht kein Weg vorbei.
Glücklicherweise gibt es Lösungen, wie [disqus][disqus], die die Kommentarfunktion per Javascript nachrüsten.
Die Kommentare werden nicht in meiner eigenen Datenbank gespeichert, sondern leben in _der Cloud_. 


## Design
Beim Design war ich diesmal gar nicht erfinderisch und habe einfach das Layout übernommen, dass die Macher beim Aufruf von `jekyll new` mitliefern.
Es ist von Haus aus *responsive* und zeigt die von mir zur Zeit geschätzte Klarheit: Es ist nicht verspielt, der Inhalt steht im Vordergrund.   
Ich habe ein wenig die Farben angepasst und die Seite in der Breite eingeschränkt. Das war's!   
Natürlich sind Experimente nicht ausgeschlossen!

## Mehr mehr mehr!
Zur Zeit teste ich einige Plugins, wie [jekyll-picture-tag](https://github.com/robwierzbowski/jekyll-picture-tag) für responsive Bilder, und muss mir noch überlegen, wie ich Tags zu Artikeln allgemein handhaben möchte.   
Ich werde berichten.

[jh]: http://johannesheld.net
[disqus]: http://disqus.com
[rails]: http://rubyonrails.org/
[nanoc]: http://nanoc.ws/
[jekyll]: http://jekyllrb.com/
[pages]: http://pages.github.com/
[mm]: https://middlemanapp.com/


[^1]: Gut, dafür muss ich die Compile- und rsync-Zeit absitzen.
[^2]: Ich beherrsche Ruby und kann die entsprechenden Generatoren leichter erweitern und anpassen.
[^3]: Selbstverfreilich kann man weitere Auszeichnungsprachen etc. einbinden.
