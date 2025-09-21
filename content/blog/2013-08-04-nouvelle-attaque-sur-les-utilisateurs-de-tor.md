---
title: Nouvelle attaque sur les utilisateurs de Tor
author: Cédric Bonhomme
type: post
date: 2013-08-04T08:35:05+00:00
categories:
  - Liberty
  - Privacy
  - Security
tags:
  - Browser
  - Firefox
  - Security
  - Tor

---
Une attaque, [une injection JavaScript][1], affecte les utilisateurs de Tor utilisant Windows et Firefox (version 17 et antérieure).

Je pense que la porté de cette attaque est limité car la plupart des utilisateurs de Tor devraient utiliser un Firefox à jour avec lextension [NoScript][2]. Avec du recul je constate que le fait de désactiver JavaScript par défaut permet déviter de nombreuses attaques. D'autres extensions, certainement aussi utilisées par les utilisateurs de Tor, vous aideront à garder l'anonymat et naviguer en sécurité. Vous pouvez lire mes recommandations sur ce [billet][3]. J'ajouterai juste que depuis quelques semaines je n'utilise plus Ghostery.

En plus des extensions Firefox à utiliser, il est important de vérifier la configuration de votre navigateur. Y compris pour les autres navigateurs, par exemple [Rekonq][4] que j'aime bien. La capture suivante présente mes configurations en ce qui concerne la gestion des _cookies_:

[<img width="100%" title="Cookies Firefox" src="/images/blog/2013/08/cookies-firefox.png" alt="Cookies Firefox" />][5]

Cela peut paraître un peu restrictif mais une fois que vous aurez listé vos sites de confiance la qualité de la navigation ne sera pas dégradée. Ma configuration est identique pour Rekonq qui passe également par Privoxy/Tor puisque tout mon bureau KDE est connecté à Internet via Tor (y compris [Blogilo][6] utilisé pour poster ce billet). J'avais évoqué la démarche à suivre, très simple, sur ce [billet][7]. Par la même occasion vous pourrez aussi désactiver Java.

 [1]: https://news.ycombinator.com/item?id=6154246
 [2]: https://addons.mozilla.org/fr/firefox/addon/noscript/
 [3]: https://www.cedricbonhomme.org/2013/02/19/naviguer-sur-le-web-avec-un-minimum-danonymat/
 [4]: http://rekonq.kde.org/
 [5]: /images/blog/2013/08/cookies-firefox.png
 [6]: http://www.kde.org/applications/internet/blogilo/
 [7]: https://www.cedricbonhomme.org/2013/06/12/utiliser-tor-de-maniere-transparente/
