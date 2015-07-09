---
title: Tags
permalink: /tag/
layout: default
---
<h1 class="page-heading">Liste der Tags</h1>

<ul>
{% for tag in site.tags %}
<li><a href="/tag/{{tag[0]}}">{{tag[0]}} ({{tag[1].size}} Artikel)<a></li>
{% endfor %}
</ul>
