---
title: Plateforme météorologique
slug: plateforme-meteorologique
author: Cédric Bonhomme
type: post
date: 2014-03-15T10:33:36+00:00
tags:
  - python
  - Flask
  - grenouille
  - Heroku
  - PostgreSQL
  - weather
  - weather_station
  - Yoctopuce

---
Aujourd'hui je vous présente un [nouveau projet][1].
Il s'agit d'une plateforme permettant l’agrégation de données météorologiques.
Elle permettra aussi de consulter les données d'une station d'un contributeur dans le
monde sans avoir de compte. Je souhaite que la base de la plateforme regroupe des
données publiques et impersonnelles (donc un minimum de fonctionnalités pour une
personne identifiée sur le site), au maximum.  
Voici [l'instance de test][2].

Pour valider le système j'utiliserai une station [Yocto-Meteo][3].
Voici [comment récupérer][4] de cette puce la température, pression et l'humidité.
Évidemment les données pourront provenir d'une station quelconque tant que lutilisateur
aura un moyen denvoyer les informations via une requête HTTP POST.
Pour ceci il manque encore les spécifications, mais des services sont déjà disponibles ([un exemple][5]) car le site reposera sur ces propres services Web pour son fonctionnement.

Voici la seule interface actuellement disponible lorsque lutilisateur est connecté:

![Grenouille profile screen](/images/blog/2014/03/Grenouille-profile-screen.png)

Comme vous pouvez le constater pour envoyer des données il faudra être authentifié et
disposer d'une clé (générée automatiquement à la création de votre compte).

Aussi, il vous sera possible de déclarer plusieurs stations. Il est aussi important de
pouvoir récupérer les données envoyées par une station (certainement dans un fichier
JSON).

Pour terminer j'ajoute que je suis ouvert à toutes contributions (même idées).
Surtout si vous disposez d'autres stations, propriétaires ou _fait-maison_
(Arduino, etc.), et que vous désirez écrire des clients que l'on pourra ajouter au
projet.  
Vous pourrez utiliser le service gratuitement (mais j'accepte les [Bitcoins][6]).
Pour le moment les données se situent dans une base PostgreSQL sur Heroku, à terme j'utiliserai une base ailleurs (où j'ai bien plus de place) et le code sera certainement toujours sur Heroku.

 [1]: https://github.com/cedricbonhomme/Grenouille
 [2]: https://petite-grenouille.herokuapp.com
 [3]: http://www.yoctopuce.com/FR/products/capteurs-usb/yocto-meteo
 [4]: https://github.com/cedricbonhomme/Grenouille/blob/8664df1ba4fc8947fd57b5561c0d8ad284728943/yoctometeo/station.py
 [5]: https://petite-grenouille.herokuapp.com/stations.json
 [6]: http://wiki.cedricbonhomme.org/projects
