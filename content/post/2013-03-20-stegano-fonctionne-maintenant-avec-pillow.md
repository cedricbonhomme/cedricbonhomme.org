---
title: Stegano fonctionne maintenant avec Pillow
author: Cédric Bonhomme
type: post
date: 2013-03-20T21:30:32+00:00
categories:
  - steganography
tags:
  - python
  - stegano
  - steganography

---
![Selena Gomez](/images/blog/2013/03/Selena-Gomez.png)

La série de [billets sur la stéganographie][1] n'est pas encore terminée, une chance pour vous. Aujourd'hui nous allons découvrir le message caché de [Selena Gomez][2].
Ceci en utilisant comme toujours [Stegano][3] que j'ai porté ce soir sous Python 3.
[Pillow][4] le _fork_ amical de [PIL][5] est dorénavant usité.
Globalement le portage sest fait facilement avec [2to3][6] et quelques modifications effectuées manuellement. Il y a encore des petits tests à réaliser (notamment à cause du changement de lopérateur division avec Python 3).

Pour mémoire, nous avions déjà vu comment cacher des messages en utilisant des générateurs densembles dentiers avec [Jennifer Morrison][7]. Lavantage d'utiliser une suite (_bien_ répartie) est de compliquer un peu la stéganalyse de l'image contenant le secret. Je ne fais pas durer le suspense et vous donne les quelques instructions nécessaires afin de trouver le secret de Selena.

```bash
$ hg clone https://git.sr.ht/~cedric/stegano
$ cd stegano/stegano/
$ wget /images/blog/2013/03/Selena-Gomez.png
$ python3.2 slsbset.py --reveal -i ./Selena-Gomez.png --generator OEIS_A000217
Impossible to detect message.

$ python3.2 slsbset.py --reveal -i ./Selena-Gomez.png --generator eratosthenes
```

Étant vraiment gentil, je vous donne même le générateur à utiliser.
Un simple algorithme de stéganalyse est livré avec Stegano.

N'oubliez pas le [tutoriel][8] qui explique plus en détail le fonctionnement.

 [1]: /series/steganography/
 [2]: http://fr.wikipedia.org/wiki/Selena_Gomez
 [3]: https://bitbucket.org/cedricbonhomme/stegano/
 [4]: https://pypi.python.org/pypi/Pillow/
 [5]: http://www.pythonware.com/products/pil/
 [6]: http://docs.python.org/2/library/2to3.html
 [7]: {{< ref "/post/2011-12-28-steganalyse-de-la-methode-lsb-avec-un-ensemble-de-nombres-decrit-par-crible-deratosthenes-avec-jennifer-morrison.md" >}}
 [8]: http://stegano.readthedocs.org/