---
title: 'pyAggr3g470r: version 4.5'
slug: pyaggr3g470r-4-5
author: Cédric Bonhomme
type: post
date: 2014-01-29T21:44:31+00:00
categories:
  - Programming
  - Python
tags:
  - python
  - Programming
  - pyAggr3g470r

---
La nouvelle version simplifie enfin l'installation.
Il y a même pas un an il fallait faire [ça][1].
Il suffira dorénavant d'exécuter un script, plus d'information [ici][2].
Le script utilise [virtualenv][3] principalement afin déviter les problèmes de
dépendances.  
[L'annonce][4] sur la page freecode du projet.

![pyAggr3g470r languages summary](/images/blog/2014/01/evolution-pyAggr3g470r.png" alt="evolution-pyAggr3g470r)

J'aime bien ce graphique, il résume l'évolution du projet, les changements
de technologies (SQLite -> PyMongo, CherryPy -> Flask, PyMongo -> MongoEngine).
J'ai effectivement l'impression que le code est toujours plus propre, mieux
isolé (vues et «templates») et aussi plus moderne (notamment virtualenv,
MongoEngine, WTForms).

Depuis ce temps j'ai pu conserver une base de données cohérente et je fais
régulièrement des exports HTML, en voici [un][5] assez récent.

 [1]: {{< ref "/blog/2013-04-08-installation-propre-de-pyaggr3g470r-avec-python-3-3-1.md" >}}
 [2]: https://git.sr.ht/~cedric/pyAggr3g470r/tree/master/item/documentation/deployment.rst#L79
 [3]: https://pypi.org/project/virtualenv/
 [4]: https://freecode.com/projects/pyaggr3g470r/releases/361089
 [5]: https://log.cedricbonhomme.org
