---
title: OpenPhoto, au-delà de mes attentes!
slug: openphoto-au-dela-de-mes-attentes
author: Cédric Bonhomme
type: post
date: 2011-10-19T22:44:13+00:00
tags:
  - openphoto
  - photography
  - web
categories:
  - Photography
  - Web

---
Quand vous découvrez un bon projet libre, il faut le dire et faire son éloge.
Surtout si il est génial…

Quelques nouvelles à propos de ce projet bien sympathique. D'abord
[mon instance personnelle][1] fonctionne maintenant à merveille. Elle va
remplacer Flickr ainsi que Zooomr.

Bien que le projet soit en développement (très) actif, le tout est vraiment stable. Je fais un _git pull_ par jour sur mon serveur et je peux vous dire que ça code! C'est vraiment bien fait et simple à tenir à jour car après chaque _pull_ je découvre améliorations et nouvelles fonctions. Et au pire des cas si une mise à jour _casse_ tout, je ferai un petit _git reset &#8211;hard_ pour revenir à létat précédent. Ah si seulement tout fonctionnait de cette manière (jimagine la distribution versionnée).

La [version 1.2 est sortie][2] avec pleins de choses géniales:

  * introduction des Webhooks;
  * voici comment [envoyer des photos dans un dossier local en ligne de commande][3]. Cela peut être aussi fait en Python 😉
  * gestion des groupes dutilisateurs. On est identifié sur OpenPhoto avec Mozilla Browser ID et il est ainsi possible de créer des groupes de personnes avec leurs adresse afin de gérer les commentaires;
  * l'application Android est déjà disponible (ainsi que iPhone);
  * on peut maintenant choisir différents CSS. Voici [le nouveau style][4] _Beisel_ qui montre bien la souplesse de l'interface (avec les trois tailles de vignettes).

Si vous désirez tester:

  * il est possible d'essayer ici: http://signup.openphoto.me en sélectionnant S3+Dropbox à létape 2. D'ici fin novembre un premier service sera fourni (gratuit ou payant je pense, cela dépend de ce que l'on choisira lors de la configuration pour lhébergement);
  * le mieux est de linstaller sur son serveur: _git clone https://github.com/openphoto/frontend.git_, puis configuration via le navigateur (classique).

C'est donc un peu comme WordPress. On a la possibilité d’héberger sur son serveur ou d'avoir une adresse compte.openphoto.me. Mais dans les deux cas on contrôle où se trouve les données! 

Il faut aussi dire que léquipe est super. Le responsable ayant laissé son job
chez _Yahoo!_ pour se consacrer à ce projet ma beaucoup aidé au début. Merci à
lui et son équipe!

 [1]: https://photos.cedricbonhomme.org
 [2]: http://blog.theopenphotoproject.org/post/11604639151/openphoto-1-2-release
 [3]: https://gist.github.com/1274061
 [4]: http://current.openphoto.me/photos/list
