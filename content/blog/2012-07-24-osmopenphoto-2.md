---
title: OsmOpenPhoto (2)
author: Cédric Bonhomme
type: post
date: 2012-07-24T10:22:57+00:00
categories:
  - photography
tags:
  - python
  - geolocalization
  - map
  - photography

---
Les lecteurs assidus de ce blog savent que j'aime géolocaliser mes photos. Pour visualiser mes photos depuis mon enfance j'utilise deux modes: chronologique et géographique (ça claque devant les amis ou papa et maman). Ces deux modes de visualisations sont présents dans [digiKam][1]. digiKam repose sur [Marble][2] pour l'affichage des cartes mais peux aussi usiter des cartes en ligne comme [OpenStreetMap][3] et Google Maps (et bien d'autres). Malheureusement avec digiKam il n'est pas possible de voir toutes les photos sur une carte, c'est une vue par album (en tout cas je n'ai pas trouvé comment faire cela). J'utilise donc souvent Panoramio, avec [cette adresse][4]. À une époque jutilisais Flickr, mais je narrivais non plus pas à voir toutes les photos. Autre solution, plus alambiquée, consiste à installer le logiciel [Google Earth][5] et de charger [ce fichier][6].

Finalement je me rends compte que [mon petit outil OpenPhoto externe][7] répond à ce que je voulais depuis longtemps. J'ai aussi ajouté la géolocalisation HTML5 afin de centrer la carte sur l'emplacement de lutilisateur. Il manque juste l’aperçu des photos sur les marqueurs.

 [1]: http://www.digikam.org/
 [2]: http://edu.kde.org/marble/
 [3]: http://www.openstreetmap.org/
 [4]: http://www.panoramio.com/map/?user=4601764
 [5]: http://www.google.com/earth/
 [6]: http://www.panoramio.com/kml/?user=4601764
 [7]: http://maps.cedricbonhomme.org/