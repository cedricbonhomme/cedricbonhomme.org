---
title: Obtenir des URL plus élégantes
slug: obtenir-des-url-plus-elegantes
author: Cédric Bonhomme
type: post
date: 2014-01-06T21:09:50+00:00
tags:
  - python
  - tip
  - urlparse
  - web

---
Voici une astuce pour obtenir des URL plus _esthétiques_.
Prenons l'exemple avec une adresse récupérée d'un flux de nouvelles d'un blog
Blogger. Ces adresses sont généralement horribles. C'est un problème si on veut
les agréger dans une base de données pour par la suite faire des recherches.

```python
>>> import requests
>>> import feedparser
>>> from urllib import urlencode
>>> from urlparse import urlparse, parse_qs, urlunparse
>>> feed = feedparser.parse("http://blog.cryptographyengineering.com/feeds/posts/default")
>>> feed.entries[0].link
u'http://feedproxy.google.com/~r/AFewThoughtsOnCryptographicEngineering/~3/i867cINYs0w/a-few-more-notes-on-nsa-random-number.html'
>>> r = requests.get(feed.entries[0].link)
>>> r.url
u'http://blog.cryptographyengineering.com/2013/12/a-few-more-notes-on-nsa-random-number.html?utm_source=feedburner&utm_medium=feed&utm_campaign=Feed%3A+AFewThoughtsOnCryptographicEngineering+%28A+Few+Thoughts+on+Cryptographic+Engineering%29'
>>> parsed_url = urlparse(r.url)
>>> qd = parse_qs(parsed_url.query, keep_blank_values=True)
>>> filtered = {(k, v) for k, v in qd.iteritems() if not k.startswith('utm_')}
>>> nice_url = urlunparse([
...         parsed_url.scheme,
...         parsed_url.netloc,
...         parsed_url.path,
...         parsed_url.params,
...         urlencode(filtered, doseq=True),
...         parsed_url.fragment
...     ])
>>> nice_url
u'http://blog.cryptographyengineering.com/2013/12/a-few-more-notes-on-nsa-random-number.html'
```

N'est-ce pas mieux?