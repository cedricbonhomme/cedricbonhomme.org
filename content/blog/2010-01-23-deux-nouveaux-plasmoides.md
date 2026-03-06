---
title: Deux nouveaux plasmoïdes
slug: deux-nouveaux-plasmoides
author: Cédric Bonhomme
type: post
date: 2010-01-23T10:34:23+00:00
tags:
  - kde
  - linux
  - python
categories:
  - Programming
  - Linux

---
![Plasmoid KDE](/images/blog/2013/12/plasmo-gmail.png)

Encore un billet…
Pour me faire un peu la main je viens de réaliser deux petits plasmoïdes
(très rudimentaires):

- [plasmo-gmail][1];
- [plasmo-aggregator][2].

Pour comprendre un peu le fonctionnement voir le [billet d'avant][3] 😉

Et pour tester _plasmo-gmail_ il vous faudra configurer le fichier
._/plasmo-gmail/contents/code/plasmo-gmail.cfg_.
Afin de donner votre nom dutilisateur Gmail ainsi que votre mot de passe.
La connection est en HTTPS (et je ne menvoie pas vos identifiants 😉 ).
Le plasmoïde affichera pour chaque nouveaux mails le sujet, la date ainsi qu'un
extrait du mail. En absence de nouveaux messages vous verrez [cela][4].

 [1]: /files/blog/2013/12/plasmo-gmail.zip
 [2]: /files/blog/2013/12/plasmo-aggregator.zip
 [3]: {{< ref "/blog/2010-01-23-plasmoide-pour-kde4-avec-python.md" >}}
 [4]: /images/blog/2013/12/plasmo-gmail1.png
