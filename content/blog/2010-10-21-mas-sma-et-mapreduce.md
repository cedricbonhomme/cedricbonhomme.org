---
title: MAS (SMA) et MapReduce
slug: mas-sma-et-mapreduce
author: Cédric Bonhomme
type: post
date: 2010-10-21T16:08:29+00:00
tags:
  - python
  - mapreduce
  - MAS

---
Ces derniers temps je m'intéresse un peu à [MapReduce][1]
(les personnes ayant le bon goût dapprécier [OCaml][2] connaissent parfaitement le
principe;-) ). Lisez ce [papier de Google][3] par exemple.

Vous trouverez de [nombreuses implémentations][4]. En voici une en Python,
[mincemeat][5]. Regardez le petit exemple. C'est simple et ça fonctionne remarquablement
bien.

Voilà. Donc mincemeat ma donné envie d'utiliser le principe de MapReduce avec la
programmation multi-agent. Pour le moment je cherche une manière propre et originale de
faire cela. Mais je me demande surtout quel sera l'intérêt réel, puisque mincemint (par
exemple) fait cela très bien déjà.

Quen pensez vous? Dois-je marier [SPADE][6] et le principe MapReduce? J'ai peur de
développer quelque chose d'inutilement compliqué (mincemeat c'est 400 lignes de code) et
pas forcément plus utile que mincemint.

Je pense que l'avantage en faisant ça proprement serait d'avoir à la fin quelque chose
de plus "souple", plus "puissant" et plus facilement adaptable à différents problèmes.
Ça vaut peut être le coup d'essayer…

Et si vous avez des idées/conseils…

 [1]: http://en.wikipedia.org/wiki/MapReduce
 [2]: https://caml.inria.fr
 [3]: http://labs.google.com/papers/mapreduce-osdi04.pdf
 [4]: https://pinboard.in/u:cedricbonhomme/t:mapreduce/
 [5]: http://remembersaurus.com/mincemeatpy/
 [6]: https://github.com/javipalanca/spade
