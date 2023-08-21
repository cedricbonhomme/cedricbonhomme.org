---
title: 'pyAggr3g470r 3.4: stockage distant des articles avec MongoDB'
slug: pyaggr3g470r-3-4-stockage-distant-des-articles-avec-mongodb
author: Cédric Bonhomme
type: post
date: 2012-05-03T20:22:01+00:00
categories:
  - Programming
tags:
  - python
  - pyAggr3g470r
  - newspipe

---
![pyAggr3g470r MongoDB](/images/blog/2012/05/pyAggr3g470r-MongoDB.png)

Je viens de tester la connexion authentifiée [MongoDB][1] distante avec un peu
plus de 800 articles (version de la capture). La base MongoDB se situe sur les
serveurs dAlwaysData et l'interface [CherryPy][2] sur mon ordinateur. Je peux
vous donner temporairement un accès en lecture seule si vous désirez tester
pyAggr3g470r (en &#8220;_lecture seule_&#8220;). Ce qui peut être bien pratique
dans certains cas.

Afin de configurer la connexion il suffit déditer les quelques lignes de la
section **MongoDB** du [fichier de configuration][3].

Lavantage est que vos articles sont synchronisés avec leurs états (lus/non lus,
favoris, etc.) et disponibles depuis n'importe quel endroit avec une connexion.
Un peu comme Google Reader.  
Évidemment les performances sont bien meilleures en localhost et on perd
l'avantage d'avoir les articles disponibles hors connexion. Je n'imagine même
pas envoyer ma base de 35.000 articles sur AlwaysData.

Il faudrait unifier les deux solutions, à savoir base locale et distante, pour
conserver uniquement les avantages (synchronisation et performance). Pour cela
je vais commencer par explorer [cette solution][4].

 [1]: https://www.mongodb.org
 [2]: https://cherrypy.dev
 [3]: https://git.sr.ht/~cedric/pyAggr3g470r/tree/master/item/conf/conf.cfg-sample
 [4]: https://docs.mongodb.com/manual/replication/