---
title: PlayOnLinux
author: Cédric Bonhomme
type: post
date: 2008-12-23T22:03:10+00:00
tags:
  - game
  - Linux

---
Je viens de découvrir aujourd'hui un logiciel fantastique : [PlayOnLinux][1].
Mon cadeau de Noël un peu en avance.

Le but de ce projet est de permettre dinstaller et d'utiliser (très) facilement
de nombreux jeux et logiciels prévus pour fonctionner exclusivement sous
Windows® de Microsoft®.

PlayOnLinux utilise le logiciel [Wine][2]. Wine (_n'est pas un [émulateur][3]_)
permet d'exécuter des applications Windows sous Linux.

Pour certaines personnes l'utilisation de Wine peut savérer un peu compliquée.
C'est là que PlayOnLinux intervient. PlayOnLinux va par défaut avec une
importante [liste de scripts][4] vous facilitant la vie pour l'installation de
vos jeux favoris. Ces scripts utilisent les langages Bash et Python.
PlayOnLinux peut ainsi fonctionner sur toutes le distributions GNU/Linux récentes.

Étape pour l'installation de Counter Strike Source :

- **urpmi playonlinux** ;
- lancement de PlayOnLinux ;
- clique sur **Installer » Jeux » Steam » Appliquer** ;
- lancer Steam et récupérer son compte ;
- installer Counter Strike via Steam.

Et voilà.

 [1]: http://www.playonlinux.com/
 [2]: http://www.winehq.org/
 [3]: https://fr.wikipedia.org/wiki/Émulation
 [4]: http://www.playonlinux.com/repository/