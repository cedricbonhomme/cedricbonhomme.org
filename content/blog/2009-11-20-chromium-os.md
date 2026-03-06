---
title: Chromium OS
author: Cédric Bonhomme
type: post
date: 2009-11-19T22:06:52+00:00
categories:
  - Technology
  - Privacy
tags:
  - google
  - linux

---
Voilà l'annonce de [Chromium OS][1] est faite et j'en pense pas grand chose (de bien).

Personnellement ça me fait un peu peur. Le système a lair bien pensé, innovant (_made in_ Google), open source. Mais voilà, plus de connexions, plus de données, plus de traitement de texte… À moins que le cache du SSD soit suffisant pour utiliser les applications voulues en mode _Offline_ avec les données qui vont bien avec. Puis synchronise à la prochaine connexion ([Gears][2] ?)…

Bref, ce qui à lair bien:

  * les données nous suivent partout, plus sur notre portable mais _ailleurs_ et _en &#8220;sécurité_&#8220;;
  * 7 secondes pour _booter_ c'est bien, surtout par rapport à mon PC ;-);
  * le système qui vérifie l'intégrité du noyau et le re-télécharge en cas de problème est une bonne idée. On peut changer de machine et récupérer toutes les données. Et tout ça de manière transparente. Ce qui serait cool ce serait d'utiliser quelque chose comme une puce [TPM][3] (d'ailleurs un de ces quatres je vais mettre en ligne un mini tutoriel pour samuser avec les TPM sur un T500) pour l'authentification, mais là c'est plus embêtant pour changer de machine;
  * données utilisateurs chiffrées (encore heureux). Par contre malheur à celui qui égarera son ordinateur et qui a un faible mot de passe pour se connecter à son compte Google (et c'est encore pire avec un téléphone Android).

Pas bien:

  * il faut toujours avoir internet ([HADOPI][4]) et une bonne connexion ([SPDY][5] ?). Déjà que même en France il n'y a pas encore lADSL partout;
  * open-source, mais la licence des &#8220;exécutables&#8221; ?;
  * les logiciels ne nous appartiennent pas (le **source** de Chromium est sous BSD, lexécutable sous licence &#8220;Google&#8221;);
  * bien sûr Google (comme Microsoft) n'ont jamais de problèmes techniques;
  * pas l'impression qu'on puisse faire pareil avec notre propre serveur;
  * on ne pourra même plus avoir plusieurs noyaux ?!

Finalement ce que je me demande c'est pourquoi il n'ont pas poussé le vice jusqu'à mettre le navigateur dans le cloud ? 😉

Et vous, qu'en pensez vous ?

 [1]: http://www.chromium.org/chromium-os
 [2]: http://fr.wikipedia.org/wiki/Gears#Applications_qui_utilisent_Gears
 [3]: http://fr.wikipedia.org/wiki/Trusted_Platform_Module
 [4]: http://fr.wikipedia.org/wiki/Loi_Création_et_Internet
 [5]: http://www.chromium.org/spdy
