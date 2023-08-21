---
title: Sybil attack
author: Cédric Bonhomme
type: post
date: 2014-12-26T23:24:34+00:00
tags:
  - Lizard_Squad
  - Sybil_attack
  - Tor
  - privacy

---
Tor est actuellement victime d'une attaque, dite _Sybil attack_, provenant du groupe de
personnes [Lizard Squad][1]. Un nombre croissant de noeuds est ainsi déployé via des
machines GCE (Google Compute Engine). La liste est [ici][2].

Je dis un «groupe de personnes» car nous ne savons pas encore à quelle catégorie ils
appartiennent.

<blockquote class="twitter-tweet" lang="en">
  <p>
    Only hackers, miscreants and pedophiles use Tor.
  </p>
  
  <p>
    &mdash; Lizard Squad (@LizardMafia) <a href="https://twitter.com/LizardMafia/status/548575072332836864">December 26, 2014</a>
  </p>
</blockquote>



Donc certainement pas aux hackers. L'honneur est sauf.

Pour le moment il ne faut pas trop paniquer car 3300 relais représentent 0.2743% du
réseau. De plus, normalement un noeud est accepté uniquement après [88 jours][3].

<blockquote class="twitter-tweet" lang="en">
  <p>
    Congrats to Lizard Squad people who with 3300 or so relays control 0.2743% of the network. Equivalent of a tiny VPS.
  </p>
  
  <p>
    &mdash; TheCthulhu (@CthulhuSec) <a href="https://twitter.com/CthulhuSec/status/548585424483274752">December 26, 2014</a>
  </p>
</blockquote>



Le groupe semble faire un peu dans le FUD:

<blockquote class="twitter-tweet" lang="en">
  <p>
    <a href="https://twitter.com/fahlwind">@fahlwind</a> <a href="https://twitter.com/ioerror">@ioerror</a> ioerror is developer, I am large exit cluster op, we understand Tor better and their tweet is bullshit 🙂
  </p>
  
  <p>
    &mdash; TheCthulhu (@CthulhuSec) <a href="https://twitter.com/CthulhuSec/status/548590276378628096">December 26, 2014</a>
  </p>
</blockquote>



Il faut faire attention aux idioties que lon peut trouver sur [ce genre de site][4]
(je naime pas vraiment le journalisme IT) et le flux Twitter de Lizard Squad.

Par contre, le problème est bien expliqué [ici][5]. Je vous conseil de lire toute la
discussion. On trouve également des commentaires intéressants sur [Hacker News][6].

Aussi ce type dattaque a déjà été utilisé (l'est peut être encore) par le FBI.
Donc ce n'est pas une attaque «zero day». Je me demande également si le ToS de Google
autorise le déploiement de noeuds Tor. Google pourrait simplement tous les fermer.

Pour finir, les nouveaux noeuds se situent tous aux États-Unis. Pour vous rassurer vous
pouvez donc simplement les bannir en ajoutant au fichier `/etc/tor/torrc` :

```cfg
ExcludeNodes US
StrictNodes 1
```

Certainement inutile pour le moment.

En tout cas, j'utilise toujours Tor et je pense même de plus en plus à déployer un noeud
pour les aider.

 [1]: https://twitter.com/LizardMafia
 [2]: https://torstatus.blutmagie.de
 [3]: https://blog.torproject.org/blog/lifecycle-of-a-new-relay
 [4]: http://gizmodo.com/hackers-who-shut-down-psn-and-xbox-live-now-attacking-t-1675331908
 [5]: https://lists.torproject.org/pipermail/tor-talk/2014-December/036185.html
 [6]: https://news.ycombinator.com/item?id=8799734
