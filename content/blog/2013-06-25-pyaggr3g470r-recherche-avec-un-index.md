---
title: 'pyAggr3g470r: recherche avec un index'
slug: pyaggr3g470r-recherche-avec-un-index
author: Cédric Bonhomme
type: post
date: 2013-06-25T05:32:29+00:00
categories:
  - Programming
  - Python
tags:
  - python
  - pyAggr3g470r
  - whoosh
  - newspipe

---
![whoosh](/images/blog/2013/06/whoosh.png)

Le module [Whoosh][1] est maintenant utilisé pour indexer la base [MongoDB][2]
de [pyAggr3g470r][3] et faire des recherches sur le contenu des articles
(texte intégral). Whoosh est entièrement écrit en Python et vraiment rapide.
Avec un processeur i7 il me faut environ 3 minutes pour indexer près de 60.000
entrées et quelques dixièmes de secondes pour effectuer une recherche exhaustive.

 [1]: https://github.com/mchaput/whoosh
 [2]: https://www.mongodb.org
 [3]: https://git.sr.ht/~cedric/pyAggr3g470r