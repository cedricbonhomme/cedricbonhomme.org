---
title: Une petite alternative à Google Latitude
slug: une-petite-alternative-a-google-latitude
author: Cédric Bonhomme
type: post
date: 2011-02-23T16:22:36+00:00
tags:
  - flick-management
  - gps
  - privacy

---
![Où est Charlie?](/images/blog/2011/02/OuEstCharlie.jpg)

[Mon idée dhier][1] va certainement se concrétiser: http://where-is.cedricbonhomme.org
(les données ne sont pas à jour, c'est pour tester).

Je pense que je vais encore exploiter quelques idées (statistiques, etc.) et écrire
quelques CGI (Python, Perl et C). Les données GPS sont envoyées par Android et son
stockées sur le serveur distant dans une base SQLite. Cela fonctionne très bien.
Malgré le fait que dans mon village la qualité du réseau est mauvaise. Du coup, lorsque
Android se synchronise des _time out_ surviennent. 

Ça peut faire un petit projet libre sympa. Facilement ré-utilisable et améliorable.
Plus qu'à lui trouver un nom (_Où est Charlie?_, _Where is Brian?_ ou _Longitude_?),
sécuriser les transactions et à améliorer un peu le code.

 [1]: {{< ref "/blog/2011-02-22-gps-android-python.md" >}}
