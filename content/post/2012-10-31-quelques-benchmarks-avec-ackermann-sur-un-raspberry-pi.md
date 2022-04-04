---
title: Quelques benchmarks avec Ackermann sur un Raspberry Pi
author: Cédric Bonhomme
type: post
date: 2012-10-31T22:51:09+00:00
categories:
  - Bidouillability
  - Hardware
  - Raspberry Pi
tags:
  - arm
  - hardware
  - Raspberry Pi

---
![Raspberry Pi Model B - 512 Mo](/images/blog/2012/10/raspberrypi.jpg)

Le pauvre, à peine arrivé je lui fais déjà passer des tests de performances
(et [une séance de _shooting_ photo][1]) 😉

```bash
pi@raspberrypi ~/ackermann $ time ./ackermann-c 3 12
Naive:     32765 (715664091 calls)

real    2m8.395s
user    2m7.960s
sys     0m0.120s
```

Après _overclocking_ à 800 MHz:

```bash
pi@raspberrypi ~/ackermann $ time ./ackermann-c 3 12
Naive:     32765 (715664091 calls)

real    2m7.622s
user    2m7.320s
sys     0m0.020s
```

C'est tout de même un peu plus lent que [mon test précédent][2] effectué sur un
processeur i7. Le résultat pour la version C était donc de 4.345s.

Concernant le Raspberry Pi, il est vraiment super. Pas si lent en fait pour un
ordinateur de la taille d'une carte. Le système se lance extrêmement vite. Je
n'ai pas encore de batterie USB, pour le moment il utilise le chargeur du
Nexus S qui donne en sortie 5V 0.7A. C'est un peu sous alimenté, mais par chance
le R-Pi semble ne pas avoir de problème. Il me manque aussi encore un _dongle_
Wi-fi. D'ici là j'aurai j'espère une petite batterie USB sortant plutôt 1A. De ce
que j'ai lu, c'est suffisant pour faire fonctionner une connexion Wi-fi. De
cette manière je pourrai le connecter en HDMI sur la télé et éventuellement
utiliser [XBMC][3].

 [1]: https://plus.google.com/u/0/photos/106973022319954455496/albums/5805601772357029217
 [2]: {{< ref "/post/2012-10-01-quelques-benchmarks-avec-ackermann.md" >}}
 [3]: http://xbmc.org/