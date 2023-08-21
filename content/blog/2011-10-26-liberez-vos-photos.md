---
title: Libérez vos photos
slug: liberez-vos-photos
author: Cédric Bonhomme
type: post
date: 2011-10-26T20:56:47+00:00
categories:
  - photography
tags:
  - floss
  - liberty
  - openphoto
  - photography

---
Voici [un site OpenPhoto][1] hébergeant déjà plus de 70.000 photos. Et [toutes taggées][2]. On peut croire que c'est un énorme boulot. En fait pas tellement que ça, car OpenPhoto [peut importer][3] les tags inclus dans les photos. De plus ce site utilise Amazon S3 (payant certes, mais flexible). Même le thème par défaut a été personnalisé.

Cela démontre la souplesse dOpenPhoto. Je ne connais pas de meilleur outil de ce type pour partager ces photos sur Internet tout en en gardant le contrôle. Qui de plus est bidouillable. Des réseaux comme Flickr et Zooomr ne vérifient aucunement:

  * la liberté de choix pour le stockage des photos et de la base de données. Choix technologique et géographique;
  * installation sur différents types de serveur (dédié, partagé, privé, hébergé sur OpenPhoto.me). Grâce à [Stéphane][4] je peux vous dire que OpenPhoto fonctionne également avec un serveur PHP [Nginx][5] sur FreeBSD ;-);
  * bidouillabilité, notamment des thèmes. Même moi si je le voulais je pourrai personnaliser un thème (de là à en créer un esthétique… faut pas exagérer);
  * le code accessible et l[API][6];
  * et pour finir, [libre][7].

Ce qui manque à OpenPhoto, c'est un aspect plus social (si cela vous intéresse). Qui pourrai être exploité comme le fais StatusNet (ou Diaspora). Mis à part cela je ne vois qun défaut: PHP 😉

Tout ça me fait abandonner Flickr et Zooomr. Un jour peut-être j'aurai un serveur et je n'aurai plus besoin d'un hébergeur… Peut-être… En tout cas ce jour venu, je pourrai exporter ma base de données et mes photos en ligne de commande (avec des outils GNU).

Vous pouvez voir [ma galerie][8] qui contient maintenant un peu plus de photos. Pour le moment il n'y a pas possibilité de générer des albums. Mais en fait c'est inutile car [les tags][9] sont déjà bien suffisants.

 [1]: http://photos.2cv01.com
 [2]: http://photos.2cv01.com/tags/list
 [3]: http://twitter.com/#!/hfiguiere/status/128897740359999488
 [4]: https://plus.google.com/112890185254359373976/posts
 [5]: http://nginx.org
 [6]: https://github.com/openphoto/frontend/tree/master/documentation/api
 [7]: https://github.com/openphoto/frontend/blob/master/LICENSE
 [8]: http://photos.cedricbonhomme.org
 [9]: http://photos.cedricbonhomme.org/photos/tags-sanga/list
