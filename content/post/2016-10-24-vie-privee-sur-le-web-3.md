---
title: Vie privée sur le Web
slug: vie-privee-sur-le-web-3
author: Cédric Bonhomme
type: post
date: 2016-10-24T18:36:37+00:00
categories:
  - Privacy
tags:
  - gafa
  - google
  - privacy
  - security

---
Quelques mises à jour de [la page](https://wiki.cedricbonhomme.org/security:privacy)
qui regroupe des conseils afin de ne pas se faire traquer sur le Web:

- à la section _Browser_, j’ai remplacé _Adblock Plus_ par _uBlock Origin_;
- quelques modifications pour le fichier ``user.js`` que Firefox charge au
  démarrage. Mis à part la ligne ``user_pref("javascript.enabled", false);``
  j’utilise exactement ce fichier;
- mise à jour de la section dédiée au fichier ``/etc/hosts``. J’utilise
  maintenant [ce fichier](http://someonewhocares.org/hosts/) avec
  quelques modifications personnelles.

Je vous invite aussi à contrôler en détail les paramètres de sécurité/vie privée
de votre compte Google ainsi que du navigateur Chrome/Chromium (il y a des
choses intéressantes à désactiver au niveau des optimisations).

Mon compte Google est pratiquement vide. Aucun email (les quelques emails qui
arrivent encore sur ce compte sont récupérés par
[kmail](https://www.kde.org/applications/internet/kmail) puis placés dans la
corbeille du serveur), historique de recherche vide et en pause, historique de
géolocalisation vide et en pause, etc. Les seules données encore sur Google sont
quelques photos partagées sur Google + ainsi que les contacts synchronisés avec
mon téléphone.

Comme vous pouvez le constater, je suis vraiment plus très loin de supprimer mon
compte Google. Si je fermai ce compte maintenant, je pense que ce qui me poserait
problème serait le téléphone. Peut-être plus très longtemps car j'ai toujours
mon excellent Nexus 4, qu'il faudra bien remplacer un jour. Et certainement pas
pour un Pixel. Je sais bien qu'on peut utiliser Android sans compte Google,
mais bon… Je me demande encore si je dois laisser une chance à Ubuntu.

Comme bon nombre de personnes, j'ai pensé à utiliser
[FastMail](https://www.fastmail.com). En fait, je n'ai pas réellement besoin de
ce service. J'accède à mes emails presque toujours avec kmail et le serveur
pop/smtp est géré par AlwaysData. Je paye pour ceci et suis très content de ce
service. Donc ouvrir un compte FastMail serait une dépense dargent inutile et
redondante. L'application Android FastMail n'est pas un point que je prends en
compte car je préfère être chez moi pour consulter mes emails. Et de toute
manières, ces emails sont souvent de simples notifications (GitHub, Heroku,
LibraryThing, etc.). Ou alors un email d'un proche. Bref, rarement quelque
chose durgent. Des emails quoi… Et puis n'oublions quand même pas qu'une
application pour récupérer des emails (via POP) est installée par défaut avec
Android. Finalement ce compte Google a peu de valeur.

Pour moi, une amélioration serait d'avoir une IP fixe et mon serveur personnel
(de préférence basse consommation). Pour le moment il me manque les deux.
