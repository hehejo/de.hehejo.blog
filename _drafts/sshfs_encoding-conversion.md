---
title: Encoding mit sshfs
tags: hack
---
<pre>
<code class="bash">sshfs -o idmap=user,modules=iconv,from_code=UTF-8,to_code=UTF-8-MAC USER@HOST MOUNTPOINT
</code>
</pre>

