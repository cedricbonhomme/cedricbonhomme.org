---
title: Refonte de pyAggr3g470r
author: Cédric Bonhomme
type: post
date: 2013-11-01T21:00:56+00:00
categories:
  - Programming
  - Python
tags:
  - python
  - pyAggr3g470r
  - newspipe

---
[pyAggr3g470r][1] évolue de manière quasiment continue depuis [janvier 2010][2]
avec lapparition de [nouvelles fonctionnalités][3] (utiles, ou pas) ou
améliorations. Développé pour mes besoins. Doù son interface pas très _sexy_ et
un peu statique. Après plus de trois années d'utilisation et près de 70.000
articles récupérés, je trouve son utilisation toujours aussi satisfaisante.

Au départ [CherryPy][4] était utilisé avec une base SQLite et un petit fichier
de configuration pour la liste des flux à surveiller. Rapidement il a fallut
utiliser un autre système de base de données, j'avais choisi MongoDB
(avec pymongo). Parallèlement j'ai testé diverses fonctionnalités (pas forcément
à valeur ajouté) comme la détection de langue, l'export des articles vers
différents formats, _proxy_, notifications par email, recherche indexée, etc.
Bref, je me suis bien amusé avec un programme très certainement seulement utile
pour moi.

En dépit de tout ceci, lidée d'une refonte plus profonde (voir un _fork_) me
reste à l'esprit depuis un certains temps. pyAggr3g470r me satisfait globalement
et j'ai donc pris mon temps pour réfléchir si le travail quimplique une vraie
refonte serait valorisé. Et si je recommence pyAgg3r470r il faut évidemment
utiliser des technologies plus modernes, essayer d'avoir un code beaucoup plus
propre et simple à maintenir. Et pourquoi pas une interface un peu plus actuelle.
Sur ce point ça tombe bien, dans un contexte professionnel j'ai récemment
découvert [Bootstrap][5]. Parfait pour quelqu'un comme moi qui ne veut pas se
prendre la tête avec du CSS et Javascript. Mais on ne va pas sarrêter à changer
uniquement les _templates_. On va aussi utiliser un ORM (une couche au-dessus de
pymongo), [MongoEngine][6]. À ce stade là, on peut remplacer CherryPy par
[Flask][7] qui est un peu plus à la mode. J'ai découvert Flask grâce au service
[Heroku][8] il y a quelques temps et ma de suite intéressé (surtout à cause de
son minimalisme et de toutes les extensions quoffre la communauté). Et donc je
my suis mis.

Pour le moment je suis satisfait de cette décision.

 [1]: https://git.sr.ht/~cedric/pyAggr3g470r
 [2]: https://www.ohloh.net/p/pyAggr3g470r/commits/summary
 [3]: http://freecode.com/projects/pyaggr3g470r/releases
 [4]: https://github.com/cherrypy/cherrypy
 [5]: http://getbootstrap.com
 [6]: http://mongoengine.org
 [7]: http://flask.pocoo.org
 [8]: https://www.heroku.com
