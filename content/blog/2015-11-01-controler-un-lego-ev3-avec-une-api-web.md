---
title: Contrôler un Lego EV3 avec une API Web
slug: controler-un-lego-ev3-avec-une-api-web
author: Cédric Bonhomme
type: post
date: 2015-11-01T22:10:53+00:00
tags:
  - python
  - ev3
  - http
  - lego
  - mindstorms

---
{{< peertube peertube.co.uk 9scYmk6ReuqHZJzuU4xvX3 >}}

Vous aussi vous voudriez commander votre robot avec une simple API Web? Par
exemple pour embêter le chat ou surveiller votre domicile à distance (avec une
arme sur son épaule il pourrait impressionner un cambrioleur et ressemblerait
même à [Johnny 5][1]).  
Dans ce cas, vous devez tester [ceci][2] et me dire ce que vous en pensez.

Il s'agit d'un micro serveur Web destiné à être installé sur un Lego Mindstorms
EV3 avec le système [ev3dev][3] (basé sur Debian). J'ai simplement utilisé Flask
afin de définir quelques _endpoints_ correspondants aux différentes actions
(avancer, reculer, tourner à droite, tourner à gauche et stopper).

Le [README][2] explique les quelques étapes nécessaires pour l'installation
ainsi que l'utilisation. C'est vraiment simple. L'exemple ci-dessous ordonnera
au robot d'avancer indéfiniment.

```bash
$ GET http://192.168.1.16:5000/move/forward
{"message": "OK", "direction": "forward", "action": "move"}
```

Le robot se stoppera dès qu'il recevra une requête `GET` sur l_endpoint_
`/move/stop`. Évidemment [d'autres paramètres][4] sont fournis par ev3dev.
Je vais essayer de les rendre accessibles _via_ l'API de manière simple. Par
exemple demander au robot de se déplacer sur une distance ou de faire une
rotation de _x_ degrés. Il faudra prendre en compte la nature du sol ainsi que
le niveau de charge de la batterie.

Je vais également ajouter au serveur une petite page Web avec du JavaScript qui
permettra de contrôler le robot avec des boutons directionnels. Ce sera pratique
pour commander le robot depuis un _smartphone_.

 [1]: https://fr.wikipedia.org/wiki/Johnny_5_(Short_Circuit)
 [2]: https://git.sr.ht/~cedric/EV3WebController
 [3]: http://www.ev3dev.org
 [4]: https://github.com/topikachu/python-ev3/wiki/Using-Motors
