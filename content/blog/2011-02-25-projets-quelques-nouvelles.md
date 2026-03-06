---
title: Projets – Quelques nouvelles
slug: projets-quelques-nouvelles
author: Cédric Bonhomme
type: post
date: 2011-02-25T15:38:32+00:00
tags:
  - python
  - gps
  - pyaggr3g470r
  - newspipe
  - tracking
categories:
  - Programming

---
Quelques nouvelles à propos de deux projets, dont un nouveau 😉

## pyAggr3g470r

[pyAggr3g470r][1] évolue toujours avec une nouvelle page dédiée spécifiquement aux flux.
Le but de cette page est d'afficher quelques informations relatives à un flux en
particulier (nombre d'articles, favoris, nuage de tags des mots les plus fréquents, etc.).
Cette page va également bientôt permettre de changer l'adresse du flux d'un site en
mettant à jour toute la base de données. En effet certains sites (comme DLFP récemment)
ont la fâcheuse tendance de changer d'URL de flux de temps en temps.

Pour récapituler voici les pages disponibles:

- http://127.0.0.1:12556/, la page daccueil;
- http://127.0.0.1:12556/feed/id-feed, la nouvelle page d'informations pour les flux;
- http://127.0.0.1:12556/articles/id-feed, liste de tous les articles d'un flux;
- http://127.0.0.1:12556/article/id-feed:id-article, un article;
- http://127.0.0.1:12556/favorites, la page des favoris;
- http://127.0.0.1:12556/unread[/id-feed], la page des non lus;
- http://127.0.0.1:12556/history, la page de l'historique;
- http://127.0.0.1:12556/notifications, la page listant les abonnements par e-mail aux flux;
- http://127.0.0.1:12556/management, la page de gestion (ajout/suppression de flux, etc.);

### Démo de la nouvelle fonctionalité

Je trouve intéressant de voir le nuage de tags de chaque flux ainsi que la proportion
d'articles favoris par flux. Voyons avec deux blogs.

#### [Weblogue de bnj][2]

![demo-feed-2](/images/blog/2011/02/demo-feed-2.png)

Le terme "photo" revient le plus fréquement (19 fois).

#### [Armed and Dangerous][3]

![demo-feed-1](/images/blog/2011/02/demo-feed-1.png)

Le terme "android" revient le plus fréquement (243 fois).


## bPlog

Le nouveau projet [bPlog][5] pour _Backpackers Log_, inspiré de mes dernières aventures
avec les GPS.
Le but est d'avoir quelque chose de [ce genre][6], un petit Google Latitude.
Vous pouvez voir que la page a déjà un peu changé: https://where-is.cedricbonhomme.org.
Le module [pygeocoder][7] me permet de trouver un lieu avec pleins d'informations à
partir des coordonnées géographiques. Il va falloir sécuriser les transactions et
l'authentification. Pour le fun je vais peut être utiliser [pyEnigma][8].
Il faudra écrire d'autres clients (pour le moment seulement Android) et aussi un
_trigger_ XMPP pour identi.ca.


 [1]: https://git.sr.ht/~cedric/pyAggr3g470r
 [2]: https://bnjgat.fr/weblog/
 [3]: https://esr.ibiblio.org
 [5]: https://hg.sr.ht/~cedric/bplog
 [6]: http://spaz.ca/aaron/gallery/hiking.html
 [7]: https://pypi.org/project/pygeocoder/
 [8]: https://sr.ht/~cedric/pyenigma
