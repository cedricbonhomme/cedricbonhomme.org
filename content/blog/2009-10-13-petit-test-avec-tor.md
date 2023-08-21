---
title: Petit test avec Tor
slug: petit-test-avec-tor
author: Cédric Bonhomme
type: post
date: 2009-10-13T00:46:31+00:00
tags:
  - network
  - ip-link

---
Voilà comme je travaille de nouveau sur [IP-Link][1], je me suis dit que
j'allais l'utiliser pour tester Tor.

Je me suis donc connecté au site debian.org (http://141.76.2.5/) avec et sans
le couple Privoxy/Tor.

Voyons avec ce couple :

![Avec Privoxy/Tor](/images/blog/2014/08/avecTor.png)

On voit donc bien la boucle sur 127.0.0.1 (sur le port 8116 en fait) pour
privoxy. Puis l'ordinateur contacte ces deux serveurs Tor :

- 217.20.127.15 ;
- 62.241.240.82.

Via torstatus on peut récupérer le fingerprint RSA et ensuite les informations
générales du premier noeud :

http://torstatus.cyberphunk.org/router_detail.php?FP=809adf34690f926ef258d97ed71f3716919a6d21

De même pour le deuxième :

http://torstatus.cyberphunk.org/router_detail.php?FP=d8dc0c043857157af575fe3074a9f8c42b41ccab

Et là on voit donc que c'est le routeur de sortie. D'ailleurs la page nous le
dit : http://166.70.99.91/

Je me demande si le premier n'est pas aussi lannuaire.

Maintenant sans Privoxy/Tor :

![Sans Privoxy/Tor](/images/blog/2014/08/sansTor.png)

Et là on a simplement le PC qui contact le modem-routeur, puis le site de
Debian (http://141.76.2.5/). Les autres IP sont toutes dues aux liens
(et images) sur la page debian.org. Par exemple 128.30.52.72 fait référence à
cette page: http://jigsaw.w3.org/css-validator/images/vcss

Ici le nombre de connections avec Tor n'est pas spécialement élevé comparé à sans.
Puisque Tor masque aussi les IP contactées via la page  de Debian
(comme les images externes…).

Voilà, demain des tests plus amusants 😉

 [1]: https://git.sr.ht/~cedric/ip-link
