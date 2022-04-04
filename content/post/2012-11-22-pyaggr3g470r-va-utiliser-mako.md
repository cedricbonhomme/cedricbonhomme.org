---
title: pyAggr3g470r va utiliser Mako
author: Cédric Bonhomme
type: post
date: 2012-11-22T22:36:20+00:00
tags:
  - python
  - mako
  - pyAggr3g470r
  - newspipe

---
Je suis et ai toujours été mauvais en développement Web, même si en ce moment
j'utilise plutôt beaucoup [Flask][1] et [CherryPy][2] pour [pyAggr3g470r][3].
Résultat, je développe un peu un mode _quick and dirty_. Je fais donc du Dirty
Web Development, d'autres font du [Dirty Operationg System][4] vous me direz.
J'ai pensé à usiter [Tkinter][5], c'est pour dire.

Après presque trois années de développement j'ai enfin décidé de
remédier à ce problème en utilisant [Mako][6], un moteur de template écrit
en [Python][7]. En gros, ça va me permettre de séparer le code Python du HTML
grâce à des templates. Je veux faire ça car pyAggr3g470r à trois ans 
[plus de 500 _commits_][8]) et fonctionne plutôt bien pour mes besoins.

Je pense que le code va grandement gagner en lisibilité ([un exemple][9])
mais aussi que cette branche sera l'occasion daméliorer certaines choses qui
devraient l'être depuis longtemps. La prochaine fois, je commencerai à utiliser
un _framework_ de ce type au début du projet.

 [1]: https://github.com/pallets/flask
 [2]: https://cherrypy.dev
 [3]: https://git.sr.ht/~cedric/pyAggr3g470r
 [4]: http://fr.wikipedia.org/wiki/DOS
 [5]: http://wiki.python.org/moin/TkInter
 [6]: http://www.makotemplates.org
 [7]: http://www.python.org
 [8]: http://www.ohloh.net/p/pyAggr3g470r/commits/summary
 [9]: https://bitbucket.org/cedricbonhomme/pyaggr3g470r/changeset/69d80bb1fd23acd549b9055fee3dc72eb53e7f24