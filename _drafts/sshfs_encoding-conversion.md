---
title: Encoding mit sshfs
tags: hack
---

{% highlight bash %}
sshfs -o idmap=user,modules=iconv,from_code=UTF-8,to_code=UTF-8-MAC USER@HOST MOUNTPOINT
{% endhighlight %}
