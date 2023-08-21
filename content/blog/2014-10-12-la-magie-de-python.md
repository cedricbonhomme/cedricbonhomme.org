---
title: La magie de Python
slug: la-magie-de-python
author: Cédric Bonhomme
type: post
date: 2014-10-12T21:54:24+00:00
categories:
  - Programming
tags:
  - python

---
Python est un langage de très haut niveau et nous avons souvent tendance à
l'utiliser sans vraiment comprendre ce qu'il se passe derrière la scène.
Je suis daccord avec ça, après tout comme on le dit Python est un langage pour
adultes consentants. Il n'y a pas de mal à vouloir utiliser juste pour
_faire le travail_.

Cependant si vous voulez aller au-delà et comprendre les rouages du
fonctionnement de Python voici quelques blogs intéressants:

- [Pythonic Perambulations][1]
- [Armin Ronacher][2]
- [The History of Python][3]
- [Allison Kaptur][4]

Vous pouvez utiliser les commentaires pour compléter la liste de liens.
J'aime beaucoup l'article _[The story of None, True and False (and an explanation of literals, keywords and builtins thrown in)][5]_
qui vous fera comprendre pourquoi il est possible de faire:

```python
>>> int = float
>>> def parse_string(s):
...     return int(s)
... 
>>> print(parse_string('42'))
42.0
```

Il peut paraître absurde d'écrire ceci, mais j'aime connaître les _[tricks][6]_
de Python. Comme le célèbre exemple illustrant les différentes façons de
sélectionner des valeurs:

```python
>>> test = True
>>> result = 'Test is True' if test else 'Test is False'
>>> print(result)
Test is True
>>> 
>>> result = [test and 'Test is True' or 'Test is False'][0]
>>> print(result)
Test is True
>>> 
>>> result = ['Test is False','Test is True'][test]
>>> print(result)
Test is True
```

Voilà, hormis ces folies, je trouve surtout qu'il est important d'écrire du
[code][7] [Python][8] [idiomatique][9]. Dune vous ferez la différence avec les
débutants et de deux votre code sera plus lisible et rapide à appréhender pour
un plus grand nombre.

 [1]: https://jakevdp.github.io
 [2]: http://lucumr.pocoo.org
 [3]: http://python-history.blogspot.com
 [4]: https://akaptur.github.io/blog/categories/python-internals
 [5]: http://python-history.blogspot.fr/2013/11/story-of-none-true-false.html
 [6]: https://wiki.cedricbonhomme.org/cs_lang:python:things-to-know
 [7]: http://intermediate-and-advanced-software-carpentry.readthedocs.org
 [8]: http://python.net/~goodger/projects/pycon/2007/idiomatic
 [9]: http://www.mindviewinc.com/Books/Python3Patterns/Index.php
