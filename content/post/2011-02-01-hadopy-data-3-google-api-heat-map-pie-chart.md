---
title: 'HadoPy-Data #3 – Google API, heat map, pie chart'
slug: hadopy-data-3-google-api-heat-map-pie-chart
author: Cédric Bonhomme
type: post
date: 2011-02-01T17:05:11+00:00
categories:
  - Google
  - Vie privée
tags:
  - python
  - hadopi
  - heatmap
  - piechart

---
La [page consacrée aux statistiques sur HADOPI][1] est maintenant un peu plus
complète. Les graphes sont mis à jour automatiquement et une _heat map_ est
utilisée avec les codes postaux (un peu lente à safficher, je vais peut-être
plutôt utiliser les régions). En fait c'est maps.googleapi.com qui prend du
temps à répondre.

Les graphiques sont donc générés avec l'[API de Google][2]. Initialement
j'utilisais la librairie [matplotlib][3] mais elle n'est pas disponible sur le
serveur. [pyChart][4] également n'est pas disponible. Finalement ce n'est pas
plus mal comme ça. Les graphiques générés avec l'API Google sont très corrects
et l'API est simple à utiliser.

 [1]: http://hadopi-data.cedricbonhomme.org/
 [2]: http://code.google.com/apis/chart/
 [3]: http://matplotlib.sourceforge.net/
 [4]: http://home.gna.org/pychart/
