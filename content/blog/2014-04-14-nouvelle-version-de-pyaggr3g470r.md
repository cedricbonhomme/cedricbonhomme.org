---
title: Nouvelle version de pyAggr3g470r
author: Cédric Bonhomme
type: post
date: 2014-04-14T18:42:13+00:00
categories:
  - Programming
tags:
  - python
  - Heroku
  - pyAggr3g470r

---
La version 4.8 de [pyAggr3g470r][1] est sortie hier et apporte dimportantes améliorations. Avec la [base de test][2] les performances sur mon ordinateur sont excellentes (avec deux utilisateurs et environ 100.000 articles). Évidemment sur Heroku avec mon compte limité les performances sont un peu moins bonnes.

De plus, [gevent][3] est maintenant utilisé par le module chargé de récupérer les articles. Aussi, la récupération de ces nouveaux articles est réalisée dans un processus dédié. J'étais un peu obligé afin de pouvoir télécharger 70 flux en même temps sur Heroku.

Encore quelques _finitions_ et je pourrai presque songer à prendre un petit compte Heroku [payant][4] et ouvrir pyAggr3g470r au public (en échange de Bitcoins). Mais ça, c'est une autre étape.

 [1]: https://git.sr.ht/~cedric/pyAggr3g470r
 [2]: http://log.cedricbonhomme.org/
 [3]: http://gevent.org/
 [4]: https://www.heroku.com/pricing