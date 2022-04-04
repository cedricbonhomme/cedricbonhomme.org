---
title: Planifier des tâches sur Heroku
slug: planifier-des-taches-sur-heroku
author: Cédric Bonhomme
type: post
date: 2014-05-29T09:49:15+00:00
tags:
  - python
  - Heroku
  - pyAggr3g470r
  - newspipe

---
Voici comment utiliser l'extension [Heroku Scheduler][1].

![Heroku Scheduler](/images/blog/2014/05/Heroku-Scheduler.png)

Comme le montre la capture, il vous suffit de l'activer
(`heroku addons:add scheduler:standard`), puis de spécifier ce que vous voulez
exécuter (ici, `python fetch.py`) et la fréquence.
Et voilà! pyAggr3g470r [récupèrera][2] vos flux automatiquement toutes les heures.

Si ça vous intéresse, voici une capture du tableau de bord de pyAggr3g470r sur Heroku.

![Heroku pyAggr3g470r Dashboard](/images/blog/2014/05/Heroku-pyAggr3g470r-Dashboard.png)

Comme vous pouvez le constater je ne dépense rien, en général les extensions
peuvent être utilisées gratuitement (avec certaines limites).

 [1]: https://devcenter.heroku.com/articles/scheduler
 [2]: https://pyaggr3g470r.herokuapp.com/
