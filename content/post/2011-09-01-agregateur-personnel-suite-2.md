---
title: Agrégateur personnel (suite 2)
slug: agregateur-personnel-suite-2
author: Cédric Bonhomme
type: post
date: 2011-09-01T15:16:15+00:00
categories:
  - Python
  - Web
tags:
  - python
  - rss
  - twitter

---
Ce site agrège de plus en plus d'informations.
Le petit script présenté par [ce billet][1] me permet maintenant de suivre certaines
personnes sur Twitter (un gros problème de réglé). Voici [la page][2]. Il a suffit de
créer un fichier friends.lst et d'ajouter une entrée dans crontab comme expliqué sur
l'ancien billet.

Ce qui est bien c'est que ces pages sont liées à des flux:
<http://friends.cedricbonhomme.org/rss.xml>,
<http://feeds.cedricbonhomme.org/rss.xml>,
<http://firehose.cedricbonhomme.org/rss.xml>.
On peut donc les agréger avec par exemple [pyAggr3g470r][3].

 [1]: {{< ref "/post/2010-11-08-agregateur-personnel-suite.md" >}}
 [2]: https://friends.cedricbonhomme.org
 [3]: https://bitbucket.org/cedricbonhomme/pyaggr3g470r/wiki/Home
