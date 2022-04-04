---
title: 'pyAggr3g470r: transition vers MongoDB'
author: Cédric Bonhomme
type: post
date: 2012-03-19T23:01:11+00:00
categories:
  - MongoDB
  - Python
tags:
  - python
  - MongoDB
  - pyAggr3g470r

---
Depuis [l'annonce][1] du passage de [pyAggr3g470r][2] à MongoDB je n'ai pas malheureusement pas vraiment pu beaucoup avancer. Toutefois les fonctionalités de base sont déjà opérationnelles. J'utilise quotidiennement la nouvelle version tout en continuant à tenir la base de données SQLite de lancienne version à jour. Cela n'est maintenant plus nécessaire.

Je viens donc d'écrire [un petit script][3] permettant dimporter lancienne base utilisant SQLite vers la nouvelle base MongoDB. Pas de quoi fouetter un chat. Cependant cet exercice fût très intéressant pour tester le code que j'ai déjà écrit ainsi que les performances de MongoDB. La différence avec SQLite est édifiante: avec une base d'environ 30.000 articles je peux marquer environ 250 articles &#8220;comme lus&#8221; de manière quasi instantannée. Et ma classe de gestion de la base MongoDB est forcément améliorable.  
Côté code, rien à signaler. La transition ne pose aucun problème, les articles et métadonnées sont bien importés.

À savoir: si un jour vous utilisez MongoDB avec beaucoup de données, faites attention au problème: [too much data for sort() with no index error][4]. Ce problème apparaît en utilisant la méthode _sort()_ sur un curseur, comme [ici][5]. La solution consiste simplement à [créer un index][6].

Et voilà, un peu plus de 30.000 articles dans une base MongoDB toute neuve!

 [1]: http://blog.cedricbonhomme.org/2012/03/04/pyaggr3g470r-stockage-distant-des-articles-avec-mongodb/
 [2]: https://git.sr.ht/~cedric/pyAggr3g470r
 [3]: https://bitbucket.org/cedricbonhomme/pyaggr3g470r/src/d5511a960ba5/sqlite2mongo.py
 [4]: http://stackoverflow.com/questions/4399068/mongodb-too-much-data-for-sort-with-no-index-error
 [5]: https://bitbucket.org/cedricbonhomme/pyaggr3g470r/src/d5511a960ba5/mongodb.py#cl-108
 [6]: https://bitbucket.org/cedricbonhomme/pyaggr3g470r/src/d5511a960ba5/mongodb.py#cl-40