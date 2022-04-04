---
title: Sécurité de son bureau
slug: securite-de-son-bureau
author: Cédric Bonhomme
type: post
date: 2009-09-30T18:07:17+00:00
tags:
  - KDE
  - Privoxy
  - Tor

---
Aujourd'hui j'ai fais de lordre dans les configurations de mon tout petit réseau et j'ai commencé à écrire quelques articles dadministration système en général avec mon CMS favori. Il s'agit surtout de mémos, de différents trucs que j'ai testé…

Bref, en commençant à jouer avec Tor (depuis hier soir) je me suis amusé avec Privoxy. Au début j'avais configuré uniquement Firefox pour l'utiliser…

Puis je me suis dit que je pouvais mettre Privoxy sur un autre PC du réseau. Ensuite j'ai configuré mes clients pour passer par ce PC sur le bon port. De là, Privoxy peut _forwarder_ le trafic à Tor (afin déviter un DNS Leak) qui pourra protéger partiellement mes connections. Partiellement puisque la dernière arrête (après le dernier oignon en fait) n'est pas protégée et qu'il est possible de faire des statistiques sur des laps de 10 minutes (sans compter les HTTP Referer…).  Mais malgré cela, lanonymat est quand même bien assuré et je n'ai pas trouvé de services devinant mon IP. De plus, seul mon client connait la route (la séquence doignons en fait) jusqu'à la destination.

Mais bon tout ça, ça protège juste le surf. Alors j'ai un peu cherché et j'ai vite trouvé qu'on pouvait faire de même avec KDE ! De telle sorte que aKregator, Kopete et les autres applications KDE peuvent passer par Privoxy. Le pire, c'est que c'est vraiment simple à faire.

Voilà les [quelques étapes][1] pour tester !

 [1]: http://cedricbonhomme.zapto.org/plone/documents/securite/utilisation-de-privoxy-et-de-tor