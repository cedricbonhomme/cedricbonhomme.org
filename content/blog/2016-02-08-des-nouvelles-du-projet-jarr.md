---
title: Des nouvelles du projet JARR
author: Cédric Bonhomme
type: post
date: 2016-02-08T22:30:26+00:00
tags:
  - python
  - JARR
  - pyAggr3g470r
  - newspipe
  - react

---
Alors, quoi de neuf ?

L’interface graphique de JARR a beaucoup évoluée ces derniers temps !
L’ensemble est plus dynamique et plus moderne. Il y a encore un peu plus de JavaScript
(avec [React][2]) grâce à [jaesivsm][2]. Un des avantages est qu’il est possible de lire
les articles sans quitter la page principale (j’admets que j’aurais pu faire ça depuis
longtemps). En tout cas avec React et compagnie, j’ai pas mal de choses à apprendre.
Et comme vous le savez, moi et les interfaces…

Aussi, il est maintenant possible de catégoriser les flux.
Enfin ! Beaucoup l’ont demandé. Et même si je ne fais pas un grand usage de cette
fonctionnalité, je dois avouer que ceci permet d’avoir un menu plus clair et simple à
lire.

Il y a également un certain nombre d’améliorations et corrections sous le capot.
Notamment au niveau du _crawler_ qui utilise dorénavant [la syntaxe _await_][3] des
coroutines.

Enfin bref. Préparez-vous bien, car voici un aperçu de la nouvelle interface:

![JARR new UI](/images/blog/2016/02/JARR-new-UI.jpg)

Je vous invite à [tester][4] et me faire quelques retours.
Vous pouvez aussi l’installer localement.
Je pense que JARR est resté assez simple à déployer sur un serveur personnel.
Y compris sur Heroku.
Pour information, sur Heroku la version 3.5.1 de Python est utilisée.

Il y a 6 ans je n’aurais jamais pensé que ce projet arriverait à ce stade.
Pour mémoire, voici la [première version][5].

 [1]: https://facebook.github.io/react
 [2]: https://github.com/jaesivsm
 [3]: https://www.python.org/dev/peps/pep-0492/
 [4]: https://jarr.herokuapp.com/signup
 [5]: https://www.cedricbonhomme.org/2010/01/29/pyaggr3g470r/
