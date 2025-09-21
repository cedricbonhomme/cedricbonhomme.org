---
title: Petite pause sur les navigateurs
author: Cédric Bonhomme
type: post
date: 2010-12-16T15:13:08+00:00
categories:
  - Web
tags:
  - Browser

---
Avec la mise à jour de Minefield dhier, j'ai voulu re-faire quelques tests… Désolé je n'ai pas le temps de commenter…

Vous pouvez d'abord lire les billets:

  * [HTML5 et les balises input][1] du 15 novembre 2010;
  * [Petite comparaison des dernières versions de Firefox et Chrome][2] du 30 juin 2010;
  * [Navigateurs][3] du 21 novembre 2009.

Léchelle de notation du test HTML5 ayant un peu changée (normal en fait), il n'est pas très aisé destimer la progression par rapport aux dernières mesures. Ce n'est pas grave dans l'ensemble les évolutions vont dans le bon sens.

## Firefox 4.0b9pre (Minefield)

  * ACID test 3 : 97/100;
  * HTML 5 test: 229/377 avec 9 points bonus:
  * intégration de WebM (et évidemment Ogg Theora), WebSocket;
  * actuellement les iframes ne sont pas dans un environnment sécurisé.

  * je trouve qu'il y a encore de lamélioration en ce qui concerne la vitesse de lancement et la fluidité d'utilisation;
  * toujours pas de solutions pour les mots de passe sans utiliser quelques _hacks_.

## Google Chrome 9.0.597.19 dev

  * ACID test 3 : 100/100;
  * HTML 5 test: 259/377 avec 13 points bonus.

## reKonq 0.6.1

  * ACID test 3 : 100/100. En fait l'affichage n'est pas correct;
  * HTML 5 test: 209/377 avec 10 points bonus.

## Opera 10.63

  * ACID test 3 : 100/100;
  * HTML 5 test: 203/377 avec 7 points bonus:
  * le seul qui implémente quasiment toutes [les balises input][4].

Pour ce qui est des tests HTML5, je vous conseil de voir le détail par [vous-même][5]. Ces chiffres ne valent pas grand chose sans analyse…

 [1]: https://www.cedricbonhomme.org/2010/11/15/html5-et-les-balises-input/
 [2]: https://www.cedricbonhomme.org/2010/06/30/petite-comparaison-des-dernieres-versions-de-firefox-et-chrome/
 [3]: https://www.cedricbonhomme.org/2009/11/21/navigateurs/
 [4]: http://diveintohtml5.org/detect.html#input-types
 [5]: http://beta.html5test.com/
