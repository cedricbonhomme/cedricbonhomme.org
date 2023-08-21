---
title: Avancées du projet Stegano
slug: avancees-du-projet-stegano
author: Cédric Bonhomme
type: post
date: 2016-05-23T06:12:09+00:00
tags:
  - python
  - stegano
  - steganography

---
[Stegano][1], le module Python de stéganographie, a beaucoup évolué ces derniers jours. J’ai principalement été motivé par quelques commentaires de personnes. Cela faisait aussi quelque temps que je voulais mieux structurer le code.

L’organisation du module est entièrement revue. Le découpage en sous-modules en fonction des différentes techniques est plus logique.  
Les performances sont meilleures lors de l’utilisation de la technique [LSB][2].  
Il est maintenant possible de donner directement une fonction (pour générer les ensembles de pixels) aux fonctions _lsb.hide()_ et _lsb.reveal()_.  
L’ensemble des changements est détaillé dans les [notes de versions][1].

[Le tutoriel][3] a aussi été amélioré et est plus clair. Voici un bon [exemple][4]. Les nouveaux [tests unitaires][5] permettent également de mieux comprendre l’usage du module.

Si vous avez des commentaires ou idées, n’hésitez pas !

 [1]: https://github.com/cedricbonhomme/Stegano/releases
 [2]: https://en.wikipedia.org/wiki/Least_significant_bit
 [3]: http://stegano.readthedocs.io
 [4]: http://stegano.readthedocs.io/en/latest/module/#lsb-method-with-sets
 [5]: https://github.com/cedricbonhomme/Stegano/tree/master/tests
