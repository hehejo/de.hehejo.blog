---
title: Fußnoten mit Markdown
tags: technik quickie
---
Mit Kramdown kann man Fußnoten setzen. Ähnlich zu einem Link fügt man an der gewünschten Stelle einen Marker `[^NAME]` ein und wieder holt diesen später mit dem Fußnotentext.

<pre>
<code class="markdown">Ich bin Text.[^1]

[^1]: Und ich bin die Fußnote dazu.
</code>
</pre>

## Auszeichnung
Kramdown gibt die Fußmarken dann innerhalb eines `<div class="footnotes">` aus und setzt auch Sprungmarken im restlichen HTML-Dokument.   
Zuerst wollte ich eine Überschrift für die Fußnoten haben und dies mit JavaScript lösen.
Aber dann habe ich mich doch für eine subtilere Auszeichnung mit einer dünnen Linie entschieden. 

<pre>
<code class="javascript">var elem = document.getElementsByClassName('footnotes')[0];
elem.insertAdjacentHTML('afterbegin', '&lt;h4&gt;Fußnoten&lt;/h4&gt;');</code>
</pre>

