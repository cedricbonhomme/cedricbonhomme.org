---
title: Avis aux indécis
slug: avis-aux-indecis
author: Cédric Bonhomme
type: post
date: 2014-01-25T10:30:09+00:00
categories:
  - Programming
tags:
  - python
  - flask
  - heroku

---
Sachez que lorsque vous ne savez pas où aller déjeuner, il y a
[Cédric, on mange où à midi?][1].
L'application proposera à vous et à vos chers collègues un lieu de restauration,
fonction de différents critères paramétrables (distance, jour de la semaine,
[météo][2], etc.) et si vous le souhaitez prendra en compte vos préférences
(envoyées en [POST][3] dans un fichier JSON). Lisez donc le fichier README.

En espérant que ce petit don soit utile pour la communauté (essentiellement des indécis).

 [1]: https://gitlab.com/cedric/cedric-onmange-ou
 [2]: https://gitlab.com/cedric/cedric-onmange-ou/-/blob/master/refuge/conditions.py#L32
 [3]: https://en.wikipedia.org/wiki/POST_(HTTP)