---
title: Agrégateur personnel (suite)
slug: agregateur-personnel-suite
author: Cédric Bonhomme
type: post
date: 2010-11-08T20:55:20+00:00
categories:
  - Web
tags:
  - aggregator
  - atom
  - python
  - feedparser
  - rss

---
Je viens de faire un peu évoluer le script dont je parlais hier afin qu'il fournisse
lui-même un flux RSS. Il est maintenant utilisable avec un fichier de configuration
(en fait simplement une liste de flux) passé en ligne de commande. Avec un petit script
j'ai donc maintenant deux agrégateurs en ligne:

- http://feeds.cedricbonhomme.org qui se trouve simplement être un agrégateur
  d'informations (très intéressantes). Il fournit (comme vous pouvez le voir avec
  Firefox) ce flux: http://feeds.cedricbonhomme.org/rss.xml;
- http://firehose.cedricbonhomme.org qui permet de suivre mon activité sur Internet
  (Flickr, Gitorious, delicious, identi.ca, LibraryThing, ce blog, etc.). Il fournit
  (comme vous pouvez le voir avec Firefox) ce flux:
  http://firehose.cedricbonhomme.org/rss.xml

Bref, je me suis beaucoup inspiré du célèbre [planet][1] et je suis assez content du
résultat. Le script est très court, environ 100 lignes de codes (CSS compris + CSS pour
appareils mobiles) et est paramétrable. En modifiant deux lignes de code il est
utilisable en CGI. Bon, c'est clair que je peux faire des améliorations.

Utilisation:

bash
```
$ crontab -l
# m h  dom mon dow   command
*/10 * * * * python ~/feeds/feeds.py ~/feeds/news.lst ~/www/feeds/index.html ~/www/feeds/rss.xml feeds.cedricbonhomme.org
*/10 * * * * python ~/feeds/feeds.py ~/feeds/cedricbonhomme.lst ~/www/firehose/index.html ~/www/firehose/rss.xml firehose.cedricbonhomme.org
```

Les fichiers _.lst_ contiennent simplement chacun une liste de flux. Utilisation toute
simple.  
Je pense que je vais encore ajouter quelques options. Il serait par exemple intéressant
de pouvoir donner une limite par flux (pour expiration) afin de ne pas avoir une page
HTML énorme.

 [1]: http://www.planetplanet.org
