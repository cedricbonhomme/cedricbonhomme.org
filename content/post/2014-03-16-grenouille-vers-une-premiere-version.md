---
title: 'Grenouille: vers une première version'
slug: grenouille-vers-une-premiere-version
author: Cédric Bonhomme
type: post
date: 2014-03-16T08:57:54+00:00
tags:
  - python
  - grenouille
  - weather
  - weather_station

---
La première version bêta approche rapidement. Les fonctionnalités de base sont disponibles. Maintenant il reste surtout à rendre le service plus robuste et faire des tests.

Il est ainsi dorénavant possible denvoyer via une requête HTTP POST les données de votre station météo au format JSON. Un exemple est disponible dans le [README][1]. Ces données seront consultables publiquement [ici][2], par exemple.

L'authentification est effectuée en HTTPS et la clé pour l'API est envoyée dans les données (JSON). Il faut également envoyer l'identifiant de la station (chaque personne peut avoir plusieurs stations) et évidemment les données météorologiques.

 [1]: https://bitbucket.org/cedricbonhomme/grenouille/src/2879dcf021f7bb5b0ac32112b17b0d62efea8e17/README.rst?at=master#rst-header-send-measures
 [2]: https://petite-grenouille.herokuapp.com/station/1/
