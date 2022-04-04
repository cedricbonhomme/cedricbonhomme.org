---
title: Python devient fainéant
slug: python-devient-faineant
author: Cédric Bonhomme
type: post
date: 2013-01-24T14:32:03+00:00
categories:
  - Python
tags:
  - python
  - Programming
  - trick

---
Python 3 est un peu plus fainéant. Voyez:

```python
>>> r = range(10)
>>> print(r)
range(0, 10)
>>> print(r[3])
3
```

Avec Python 2.7:

```python
>>> r = range(10)
>>> print r
[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
>>> print r[3]
3
```

C'est encore une petite chose à savoir à propos de Python.
Cela peut sembler ridicule de prime abord, mais il peut y avoir un avantage
avec un très grand _range_. Bon avec Python 2, on peut aussi utiliser les
itérateurs pour avoir ça.

Tu trouveras d'autres &laquo;astuces&raquo; Python sympa [ici][1].

Et tiens, au lieu de fainéanter je pourrai continuer d'apprendre Haskell.
Un vrai langage de paresseux.

 [1]: http://wiki.cedricbonhomme.org/cs_lang:python
