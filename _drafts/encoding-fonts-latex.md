---
title: LaTeX Encodings, Fonts und so
tags: LaTeX
---
Wer kennt das nicht das Problem mit Umlauten im Umgang mit LaTeX?

Input-Encoding
Output-Encoding

<pre>
<code class="tex">\usepackage{ucs}

\usepackage[ucs]{selinput}
\SelectInputMappings{
	adieresis={ä},
	germandbls={ß},
	Euro={€},
}
</code>
</pre>

## Systemschriften in LaTeX
Ein weiterer Vorteil von XeTeX ist die Möglichkeit Systemschriftarten einzubinden.

<pre>
<code class="tex">\usepackage{xltxtra}
\defaultfontfeatures{Ligatures=TeX}
\newfontfamily{\listing}{Consolas}
</code>
</pre>

