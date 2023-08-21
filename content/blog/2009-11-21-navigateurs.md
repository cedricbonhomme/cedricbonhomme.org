---
title: Navigateurs
author: Cédric Bonhomme
type: post
date: 2009-11-21T11:50:18+00:00
tags:
  - browser
  - kde

---
En quête d'un navigateur bien intégré à KDE 4 (depuis mon [récent départ de Firefox][1]) mon système devient une plateforme de tests de butineurs.

Je vais dans ce billet présenter brièvement ceux qui attirent mon attention selon les critères:

  * licence libre;
  * affichage correct des pages;
  * vitesse daffichage des pages;
  * intégration _avec KDE4;_
  * _bon score_ au test ACID3;
  * rapidité de lancement, fluidité, etc.;
  * fonctionnalités.

Je prendrais Gmail à titre dexemple simplement parce que à part Firefox et Chrome, j'ai trouvé peu de navigateurs avec un bon rendu sur ce service. Mais j'ai quand même testé à chaque fois sur quelques sites 😉 Évidemment sur certains points (comme la vitesse daffichage) il ne s'agit que de mon ressenti. Et il manque peut être d'autres critères plus ou moins importants (support dHTML 5, etc.).

### Konqueror

[Konqueror][2], le plus connu pour KDE.

  * GPL v2;
  * affichage correct des pages. Quelques problèmes avec certains sites, notamment Gmail;
  * affichage rapide des pages;
  * excellente intégration avec KDE4 (normal): 
      * marques-pages, gestionnaire de téléchargement, flux RSS, KWallet, etc.
  * bon score au test ACID 3 : 93/100;
  * très léger;
  * très fonctionnel (mais pas autant dextension que Firefox).

### ReKonq

[ReKonq][3], un navigateur que je viens de découvrir et qui me plaît beaucoup.

  * GPL v3;
  * très bon affichage des pages. Très bon rendu sur Gmail;
  * affichage rapide des pages;
  * très bonne intégration avec KDE4: 
      * partage les marque-pages et le gestionnaire de téléchargement avec KDE;
      * dommage pour KWallet, mais ça pourrais venir [assez vite][4].
  * excellent score au test ACID 3 : 100/100;
  * très léger;
  * bien mais pas autant dextension que Firefox. 
      * j'aime bien les onglets ainsi que les vignettes des sites les plus fréquentés (comme pour Chrome).

Utilise [kdewebkit][5] basé sur Webkit.

### Arora

[Arora][6] semble ête un bon navigateur aussi.

  * GPL v2;
  * bon affichage des pages en général. J'ai trouvé quelques défauts mais c'est toujours un peu mieux que Konqueror. Assez bon rendu sur Gmail;
  * affichage parfois un peu lent;
  * bonne intégration avec KDE4: 
      * mais a son propre gestionnaire de téléchagement et marque-pages par défaut.
  * mauvais score au test ACID 3 : 41/100; 
      * étrange étant donné que sur les quelques sites que j'ai visité l'affichage avait lair correct.
  * très léger;
  * un peu léger niveau configuration.

Utilise <a style="color: #0000cc;" href="/p/arora/wiki/QtWebKit">QtWebKit</a> conforme avec WebKit.

### Chrome

  * pas libre: Google Chromes terms of service license;
  * bon affichage des pages. Aucun problème avec Gmail;
  * affichage très rapide;
  * aucune intégration avec KDE4 (ni Gnome, …);
  * excellent score au test ACID 3 : 100/100: 
      * mais a actuellement un [petit problème][7] avec les fontes distantes (CSS3 @font-face selector);
  * très léger;
  * pas mal mais pas autant dextensions que Firefox.

### Bilan

Mon bilan provisoire est:

  1. reKonq;
  2. Konqueror;
  3. Arora.

Chrome est disqualifié (aucune intégration et pas libre). Dans ce classement, un Firefox plus léger et mieux intégré à KDE prendrait la première place. Daprès mon [précédent classement][1], Konqueror devrait être en première place puisquil est mieux intégré à KDE. Il aurait la première place si son affichage des pages était aussi bon que celui de reKonq. J'ai hésité à donner la première place à reKonq car même si l'intégration de reKonq est bonne elle n'est que partielle. Mais je pense que tout ça va très rapidement saméliorer (on en a récemment parlé [ici][8] et [là][9] entre autres).

Aurais-je oublié un bon navigateur pour KDE (pas Dolphin…) ?

_Mises à jours_

  * _avec la version 0.10.1 dArora jobtiens 100/100 au test ACID 3. Et non 41/100. Et il y par contre la mention &#8220;LINKTEST FAILED&#8221; en rouge. J'en conclus que reKonq et Arora sont vraiment de bonne qualité en ce qui concerne le respect des standards et l'affichage. reKonq doit juste progresser un peu pour être un peu mieux intégrer à KDE;  
_ 
  * _la version 4.0.249.4 de Chrome semble corriger le problème des fontes (croix en haut à droite) avec le test ACID3. Il est aussi possible d'avoir la barre système._

 [1]: http://cedric.bonhomme.free.fr/blog/index.php/archives/2009/11/15/bye-bye-firefox-let-me-know-when-its-fixed/
 [2]: http://www.konqueror.org/
 [3]: http://rekonq.sourceforge.net/
 [4]: http://markmail.org/message/7tm5bznsabebaxgk
 [5]: http://techbase.kde.org/Projects/WebKit
 [6]: http://code.google.com/p/arora/
 [7]: http://code.google.com/p/chromium/issues/detail?id=231#c115
 [8]: http://forum.ubuntu-fr.org/viewtopic.php?pid=3041583#p3041583
 [9]: http://www.mail-archive.com/rekonq@kde.org/msg00867.html
