---
title: LaTeX Encodings, Fonts und so
tags: LaTeX
---
Wer kennt das nicht das Problem mit Umlauten im Umgang mit LaTeX?

Input-Encoding
Output-Encoding

{% highlight latex linenos %}
\usepackage{ucs}

\usepackage[ucs]{selinput}
\SelectInputMappings{
	adieresis={ä},
	germandbls={ß},
	Euro={€},
}
{% endhighlight %}

## Systemschriften in LaTeX
Ein weiterer Vorteil von XeTeX ist die Möglichkeit Systemschriftarten einzubinden.

{% highlight latex linenos %}
\usepackage{xltxtra}
\defaultfontfeatures{Ligatures=TeX}
\newfontfamily{\listing}{Consolas}
{% endhighlight %}
