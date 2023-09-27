---
title: OpenPhoto
author: Cédric Bonhomme
type: post
date: 2011-09-02T15:41:08+00:00
tags:
  - cloud
  - photo-sharing
  - photography
  - sharing

---
Merci à la personne à l'origine de [ce commentaire][1].

[OpenPhoto][2] est le projet que j'attends depuis longtemps. Une sorte de Diaspora de la photo (et aussi hébergé sur github). Il s’agit d'un projet écrit en PHP (ça aurait été le summum en Python) que vous pouvez installer sur votre PC à la maison (veinard), sur votre dedibox, etc. OpenPhoto est très simple à installer ([installation sur Ubuntu][3]: 3 minutes) et permet d'héberger vos photos et commentaires soit sur votre serveur (photos et base de données pour les commentaires, soit avec [Amazon][4], soit avec [Google Storage][5] (donc en mode _cloud_).

Je vous montrerai bien ma galerie, mais j'ai quelques problèmes de configuration pour le moment. J'ai déjà envoyé un mail au responsable du projet. Regardez donc [cette galerie][6]. C'est ce que je veux. Et OpenPhoto est aussi un framework permettant de développer sa propre galerie. L'application Android est déjà disponible. Ce n'est pas une galerie PHP comme une autre car celle-ci permet vraiment de choisir comment les photos seront stockées et de récupérer les commentaires. Laspect communautaire aussi est présent car quiconque peut se connecter pour laisser un message via [Browser ID][7] de Mozilla. Exemple de [page][8] de photo hebergée [ici][9].

Pour le moment j'ai choisi de tout (le code PHP, les photos et la base de données en local) héberger sur AlwaysData. Mais pourquoi pas héberger les photos et la base de données sur Amazon ou Google Storage (avec le code sur AlwaysData)? Quen pensez vous? Il faut prendre en compte la liberté, qualité de service ainsi que la confiance. Si j’avais mon propre serveur le seul problème serai la qualité de service.

J'espère bientôt pouvoir me désinscrire de certains services Web…

 [1]: http://blog.cedricbonhomme.org/2011/08/22/changement-d'adresse/#comment-95
 [2]: https://github.com/openphoto
 [3]: https://github.com/openphoto/frontend/tree/master/documentation/guides
 [4]: http://aws.amazon.com
 [5]: http://code.google.com/intl/fr/apis/storage/
 [6]: http://current.openphoto.me
 [7]: https://browserid.org/
 [8]: http://current.openphoto.me/photo/4q
 [9]: http://opmecurrent.s3.amazonaws.com/custom/201108/1312348277-DSC_7587_960x960.jpg
