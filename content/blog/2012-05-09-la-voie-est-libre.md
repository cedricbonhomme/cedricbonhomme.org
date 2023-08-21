---
title: La voie est libre
author: Cédric Bonhomme
type: post
date: 2012-05-08T22:39:09+00:00
categories:
  - Programming
  - Python
tags:
  - python
  - dijkstra
  - map
  - OpenStreetMap
  - osm

---
<div align="center">
  <a href="/images/blog/2012/05/pyitinerary-1.png"><img src="/images/blog/2012/05/pyitinerary-1.png" alt="" title="pyitinerary-1" width="100%" /></a>
</div>

<div align="center">
  <a href="/images/blog/2012/05/pyitinerary-2.png"><img src="/images/blog/2012/05/pyitinerary-2.png" alt="" title="pyitinerary-2" width="100%" /></a>
</div>

Voilà, plus besoin de Google Maps pour tracer mes itinéraires. Il faudrait plus qu'un service web et une application Android libre.

Ingrédients:

  * un [fichier OSM][1];
  * un [bon parseur de fichiers OSM][2];
  * une [structure de graphe][3] et un peu de code Python;
  * une petite implémentation de [Dijkstra][4] en Python;
  * un petit [serveur Web CherryPy][5] avec vraiment un peu de JavaScript ([OpenLayers][6]).

 [1]: http://planet.osm.org/
 [2]: http://blog.cedricbonhomme.org/2012/03/15/imposm-parser/
 [3]: http://www.python.org/doc/essays/graphs.html
 [4]: http://www-m3.ma.tum.de/twiki/pub/MN0506/WebHome/dijkstra.pdf
 [5]: http://cherrypy.org/
 [6]: http://openlayers.org/