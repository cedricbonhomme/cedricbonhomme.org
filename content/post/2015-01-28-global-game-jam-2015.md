---
title: Global Game Jam 2015
author: Cédric Bonhomme
type: post
date: 2015-01-28T22:29:14+00:00
categories:
  - games
tags:
  - python
  - games
  - ggj2015

---
Cette année j'ai participé à la [Global Game Jam 2015][1]. Ceci, même si je suis une quiche en développement de jeux vidéo et que je ne connais aucun _framework_ (je testerai bien [Kivy][2]). Bref, je me suis enfin lancé et avec quelques amis nous avons donc développé un petit jeu. Et c'était vraiment fun. Surtout un peu fatiguant. J'ai plutôt bien encaissé le choc: éveillé plus de 48 heures avec moins de 5 heures de sommeil.  
En tout cas, merci à léquipe organisatrice!

Le jeu que nous avons développé est multi-joueurs et utilise des technologies du Web. Il est préférable dy jouer avec un _smartphone_ ou une tablette (on utilise laccéléromètre). Voici [la page du jeu][3] avec une petite description. Les [sources][4]. Le jeu est déployé [ici][5].

Pendant la phase de développement, nous testions un peu le jeu avec deux joueurs (tester, c'est douter). Nous étions tout de même bloqué sur le code du serveur environ trente heures, finalement pour des conneries. Et malgré le pessimisme de Christophe (qui affirmait encore le Dimanche à 17 heure que le jeu ne fonctionnait pas) nous savions que nous y arriverons. À la fin de cette _Game Jam_ une bonne vingtaine de personnes ce sont connectés et le légendaire et tant redouté, _effet démo_, na même pas eu lieu. Alors que j'ai récemment corrigé quelques petits problèmes. Ha-llu-ci-nant.

D'un point de vue plus technique, la connexion entre le serveur et les clients est gérée avec WebSocket. Le code client est développé principalement avec HTML5/JavaScript.  
Le serveur dispose d'une liste de mini-jeux et les enchaîne de manière aléatoire. Les jeux durent entre 4 et 10 secondes et sont pré-chargés dans le navigateur du client. Le serveur indique uniquement aux divers clients le jeu qu'il faut lancer. À la fin de chaque jeu, le serveur décide qui est le vainqueur et envoie l'identifiant du prochain jeu à lancer.  
À tout moment, une seule partie globale est en cours. Vous pouvez donc jouer avec le monde entier!

 [1]: http://globalgamejam.org/2015/jam-sites/global-game-jam-eschbelval-luxembourg
 [2]: http://kivy.org
 [3]: http://globalgamejam.org/2015/games/jack-says
 [4]: https://github.com/cedricbonhomme/JackSays
 [5]: http://jack-says.herokuapp.com