---
title: Sécurité de la pile graphique
slug: securite-de-la-pile-graphique
author: Cédric Bonhomme
type: post
date: 2012-09-26T07:04:20+00:00
tags:
  - Qubes-OS
  - SELinux
  - wayland
  - weston
  - x
  - security

---
[Un article très intéressant][1] (en plus c'est un cadeau, car il est sensé être restreint) à propos de la sécurité de la pile graphique. On y parle évidemment du [serveur X][2] et de [Wayland][3] (qui devrait remplacer X).

L'article évoque aussi un projet intéressant, [PIGA-OS][4] ([description détaillée][5] en français), qui permet de rendre un peu plus sécurisé le serveur X avec XSELinux. Une approche différente et plus légère par rapport à [Qubes OS][6]. Avec PIGA-OS il n'y a pas besoin de machines virtuelles, les permissions des applications sont ajustés dynamiquement en fonction de lactivité de lutilisateur.

 [1]: http://lwn.net/SubscriberLink/517375/6b260ee2152b5332/
 [2]: http://www.x.org/wiki/
 [3]: http://wayland.freedesktop.org/
 [4]: http://graal.ens-lyon.fr/~jrouzaud/files/shpcs_2009.pdf
 [5]: http://renpar.irisa.fr/cfse8/cfse8_16.pdf
 [6]: http://qubes-os.org/