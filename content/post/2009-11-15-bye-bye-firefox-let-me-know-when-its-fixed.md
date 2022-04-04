---
title: "Bye bye Firefox! let me know when it's fixed"
slug: bye-bye-firefox-let-me-know-when-its-fixed
author: Cédric Bonhomme
type: post
date: 2009-11-15T14:49:17+00:00
tags:
  - browser
  - firefox
  - kde
  - konqueror

---
Ça fait déjà un peu plus d'un an que jy songe: abandonner Firefox. Dans ce billet je vais évoquer les principales motivations de ce départ. Je tiens à préciser que bien entendu il s'agit uniquement de mon point de vue.

D'abord pour bien commencer, ce que me plaît dans ce navigateur:

  1. sécurité: réactivité pour les mises à jours. Certainement meilleur sur ce point que Konqueror ou Chrome ;
  2. innovation et respect des standards. Doù limportante contribution de Firefox à la qualité du Web ;
  3. le nombre important dextensions. D'ailleurs un problème va être de trouver les équivalents pour Konqueror ;
  4. la gestion des plantages ;
  5. la fondation Mozilla que japprécie beaucoup pour la qualité de son travail et sa contribution au libre.

Il reste donc pour moi un très bon navigateur, innovant  et qui a apporté beaucoup au Web. Cependant les points que je vais citer ci-dessous (du plus au moins important) me dérangent de plus en plus :

  1. [le plus important pour moi][1]. J'aime que mon bureau KDE soit bien intégré et je suis contre le stockage des mots de passe dans les navigateurs en général. Bon sous Firefox on peut toujours usité du mot de passe principal ;
  2. franchement sous Linux ce n'est pas encore ça. Ce que je trouve marrant c'est que actuellement Chrome en version de développement fonctionne bien mieux que Firefox/Iceweasel sur ma Debian (et Mandriva). Tandis que sur Windows c'est linverse. Et j'ai bien l'impression que Mozilla privilégie l'intégration sur Windows et rend même la vie des distributions GNU/Linux un peu plus compliquée. Y a qu'à lire les commentaires sur les _Bug tracking_ des distributions et constater le décalage avec Windows pour les mises à jour importantes ;
  3. intégration avec KDE4 pas toujours parfaite et varie trop en fonction des mises à jours du système. De plus j'utilise souvent des systèmes dit non stable (testing, cooker). Évidemment l'intégration de Konqueror avec KDE est géniale (surtout KWallet, aKregator et les marques-pages). Et je trouve que Konqueror sous KDE4 est plutôt bien réussi ;
  4. malgré les progrès il reste toujours un peu lourd et pas très fluide sur mon système par rapport à Konqueror/Epiphany/Chrome ;
  5. certains vieux _bugs_ qui trainent. Par exemple le fait que Firefox lance un processus java lorsqu'il rencontre une variable nommée &#8220;java&#8221; dans un fichier javascript. Ça se produit notamment sur mon CRM Plone ;
  6. j'aimerais bien que Mozilla sinspire un peu sur le plan technique de Chrome en ce qui concerne les onglets (niveau mémoire…).

Voilà les mots clés sont donc _intégration_ et _stabilité_ sous Linux. Ce n'est peut être pas un abandon définitif. Si Mozilla apporte des solutions satisfaisantes aux deux premiers points je pourrais envisager de réutiliser Firefox. À suivre…

_Mise à jour: <span style="font-style: normal;"><em>Le problème de Chrome évoqué dans le commentaire de bnj à lair de venir du fait que Chrome na pas le support @font-face par défaut. Il est en fait désactivé pour raison de sécurité. Pour pallier ce problème il faut lancer Chrome de cette manière : </em><strong><em>google-chrome &#8211;enable-remote-fonts.</em></strong><em> Cependant un Ctrl+A sur la page du test Acid3 montrera toujours des choses étranges.</em></span>_

 [1]: https://bugzilla.mozilla.org/show_bug.cgi?id=278343
