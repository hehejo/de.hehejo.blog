---
title: Vim Plugin (mit Vim Script)
tags: Vim LaTeX programming
---

In meiner Dissertation binde ich einige Grafiken ein.
Damit mir das leicher von der Hand geht, habe ich mir ein Vim-Plugin geschrieben.   
Ich zeig dir, wie einfach das ist.

## LaTeX-Macro
{% highlight latex linenos %}
\usepackage{twoopt}

\newcommandtwoopt{\bild}[4][1][!ht]{ %
\begin{figure}[#2]
\centering
\includegraphics[width=#1\textwidth]{#3}
\caption{#4}
\label{fig:#3}
\end{figure}
}
{% endhighlight %}

Nun kann ich das Makro `\bild` nutzen und einfach eine Grafik einbinden: `\bild[0.8]{pfad/zur/grafik}{Bildunterschrift}`.

Normalerweise binde ich eine Grafik in meinen LaTeX-Dokumenten so ein:

{% highlight latex linenos %}
\begin{figure}[htbp]
\centering
\includegraphics{path/to/grafik}
\caption{Bildunterschrift}
\label{fig:bildlabel}
\end{figure}
{% endhighlight %}

Dies habe ich in ein LaTeX-Makro `bild` verpackt.
{% highlight latex linenos %}
CODE für BILD
{% endhighlight %}

## Vim-Plugin
Ich habe nun ein Plugin geschrieben, dass mir in einer Auswahlliste alle Grafikdateien anzeigt und die ausgewählte Grafik mit dem oben beschriebenen Makro einbindet.
