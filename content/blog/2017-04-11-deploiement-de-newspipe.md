---
title: Déploiement de Newspipe
slug: deploiement-de-newspipe
author: Cédric Bonhomme
type: post
date: 2017-04-11T20:38:45+00:00
tags:
  - python
  - heroku
  - newspipe
  - vagrant

---
J’ai récemment fait quelques efforts pour faciliter le déploiement de Newspipe.
Vous pouvez utiliser le bouton disponible à
[cette page](https://elements.heroku.com/buttons/newspipe/newspipe) pour le
déploiement sur Heroku. C’est la méthode la plus facile. Pour les personnes qui
ne souhaitent pas utiliser Heroku, l’installation via Vagrant est également
simple. Pour le moment, l’instance principale n’accepte plus la création de
nouveaux comptes (je paye…).
[Cette page](https://newspipe.readthedocs.io/en/latest/deployment.html) fournit
plus de détails à propos du déploiement.

Python 3.6 sera utilisé par défaut sur une installation Heroku ou Vagrant.
Cette version de Python est aussi conseillée pour «l’installation manuelle».
Une [nouvelle page](https://www.newspipe.org/about/more) permet de vérifier la
version de Python utilisée.