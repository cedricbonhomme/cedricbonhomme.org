---
title: Petite comparaison des dernières versions de Firefox et Chrome
slug: petite-comparaison-des-dernieres-versions-de-firefox-et-chrome
author: Cédric Bonhomme
type: post
date: 2010-06-30T18:08:09+00:00
categories:
  - Internet
  - Navigateurs
tags:
  - Browser

---
Environ six mois après lécriture de [ce billet][1] j'ai eu envie de faire une petite comparaison des navigateurs que j'utilise le plus souvent (à savoir Firefox et Chrome). Effectivement, ces derniers temps j'utilise divers navigateurs, de plus en plus nombreux et parfois en même temps (ce qui est embêtant pour avoir un historique et des marque-pages synchronisés).

Bref, voilà donc quelques commentaires en vrac:

## Google Chrome 6.0.437.3 dev

  * Acid Test 3: 100/100 (stable);
  * [HTML 5 Test][2]: 222/300 avec 10 points bonus (en hausse):
  * le meilleur niveau HTML 5;
  * intégration de WebM, WebSocket.

  * il est rapide, tout le monde a déjà remarqué ça.

## Firefox 4.0 Beta 2

  * Acid Test 3: 97/100 (en hausse);
  * [HTML 5 Test][2]: 189/300 avec 9 points bonus (en hausse):
  * plus moderne que Firefox 3.6.6 sur HTML 5;
  * intégration de WebM (et évidemment Ogg Theora), WebSocket;
  * actuellement les iframes ne sont pas dans un [environnment sécurisé][3].

  * c'est la première fois que je constate un vrai gain de vitesse (surtout au lancement) sous GNU/Linux;
  * interface sympa (tous les navigateurs commencent à se ressembler d'un autre côté) et facilement personnalisable;
  * je trouve bien que le MPEG-4 et que H.264 ne soient pas supportés;
  * comme dhabitude il fonctionne mieux sous Windows que sous GNU/Linux.

## Firefox 3.6.6

  * Acid Test 3: 94/100 (stable);
  * [HTML 5 Test][2]: 139/300 avec 4 points bonus (en hausse):
  * enfin WebM!

  * franchement sous GNU/Linux je trouve que le gain de vitesse annoncé n'est pas vraiment là.

## Bilan

  * reKonq et Arora sont loin derrière si on fait les tests (même si je ne présente pas de résultats ici). Cependant reKonq (avec 164 points au test HTML 5) devrait devenir un bon navigateur, sil ne l'est pas déjà;
  * Chrome est toujours plus rapide (on peut aussi faire un petit test avec [SunSpider][4]) et progresse rapidement dans le bon sens en ce qui concerne HTML5. Donc vraiment moderne;
  * Firefox 4.0 Beta 2 donne de lespoir (japprécie vraiment l'intégration de WebM, des WebSockets et le gain de vitesse).

Voilà, il faudra suivre l'évolution de tout ça. Et on peut parier que Firefox va encore progresser!

 [1]: http://cedric.bonhomme.free.fr/blog/index.php/archives/2009/11/21/navigateurs/
 [2]: http://beta.html5test.com/
 [3]: http://www.w3.org/TR/html5/the-iframe-element.html#attr-iframe-sandbox
 [4]: http://www2.webkit.org/perf/sunspider-0.9/sunspider.html