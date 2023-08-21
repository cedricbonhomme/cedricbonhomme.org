---
title: Tag:junction=roundabout
slug: tag-junction-roundabout
author: Cédric Bonhomme
type: post
date: 2012-05-10T20:27:56+00:00
categories:
  - Programming
tags:
  - python
  - OpenStreetMap
  - osm

---
![OpenStreetMap - Roundabout](/images/blog/2012/05/pyitinerary-bug-roundabout.png)

Comme on peut le constater dans la fenêtre de gauche de la capture, il y avait
un léger _bug_ dans mon algorithme. Maintenant corrigé. Donc si un jour vous
bidouillez des fichiers OSM, pensez que les [chemins][1] (qui sont orientés ou
non) ne représentent pas forcément les [rond-points][2] (qui eux sont à sens
unique par défaut). Sans oublier les [&#8220;mini&#8221; rond-points][3].

Comme quoi il faut toujours prendre le temps de lire la documentation avant
d'implémenter. Afin de ne pas être [endetté][4]. J'aimerai aussi bien trouver
une méthode un peu plus scientifique (ou au moins plus _exhaustive_) pour tester
l'existence d'autres _bugs_ de ce genre.

En attendant: _[If it compiles, its correct][5]._

 [1]: http://wiki.openstreetmap.org/wiki/Way#Street_as_a_vector
 [2]: http://wiki.openstreetmap.org/wiki/Tag:junction=roundabout
 [3]: http://wiki.openstreetmap.org/wiki/Tag:highway=mini_roundabout
 [4]: http://www.bortzmeyer.org/dette-technique.html
 [5]: http://wiki.cedricbonhomme.org/important-programming-truths