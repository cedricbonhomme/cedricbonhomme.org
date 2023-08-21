---
title: Find a Bike
author: Cédric Bonhomme
type: post
date: 2013-06-05T05:47:23+00:00
categories:
  - Internet
  - Life
tags:
  - API
  - bikes
  - python
  - environment
  - find-a-bike
  - open-data

---
Find a Bike, un site pour trouver un vélo en libre-service à proximité.
Il utilise l[API de JCDecaux][1] ainsi que [OpenStreetMap][2].

Exemples:

- <http://findabike.cedricbonhomme.org/?city=Luxembourg>;
- <http://findabike.cedricbonhomme.org/?city=Lyon,Toulouse>;
- <http://findabike.cedricbonhomme.org/?city=Toulouse>.

Il est possible de ne pas préciser de ville, mais votre navigateur risque de
ralentir à cause du nombre de résultats. 

[Sources du site][3].

 [1]: https://developer.jcdecaux.com/
 [2]: http://www.openstreetmap.org/
 [3]: https://bitbucket.org/cedricbonhomme/find-a-bike/