---
title: Zeilennummern reloaded
tags: vim
---
Mit wenig Aufwand kann ich die Anzeige der Zeilennummern in VIM wie folgt anpassen:   
Für die aktuelle Zeile wird die absolute Zeilennummer angezeigt, während alle anderen Zeilen relativ von der aktuellen Zeile numeriert werden.
Dies ist sehr hilfreich um bei den zahlreichen *motion commands*[^1] die gewünschte Zeilenanzahl anzugeben.

Dazu müssen nur diese beiden Befehle in die `.vimrc` eingetragen werden:
<pre>
<code>set number
set relativenumber
</code>
</pre> 


[^1]: wie `23j` (springe 23 Zeilen nach unten)

