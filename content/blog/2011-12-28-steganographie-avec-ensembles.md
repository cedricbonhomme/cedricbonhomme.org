---
title: Stéganographie avec ensembles
slug: steganographie-avec-ensembles
author: Cédric Bonhomme
type: post
date: 2011-12-28T15:45:28+00:00
series: ["Steganography"]
tags:
  - python
  - security
  - stegano
  - steganography

---
Comme [promis][1] voici une première implémenation du module de Stegano
permettant de cacher des informations (textes ou binaires) en utilisant des
ensembles dentiers. Il s'agit d'un premier jet codé entre deux parties de 
[Nexuiz][2] (franchement génial, on peut se faire une partie en réseau si ça
vous tente).

Vous pouvez tester le nouveau module de [Stegano][3] en recopiant le script
ci-dessous dans un fichier _test-slsb-gen.sh_ puis en lexcécutant.

```bash
git clone https://git.sr.ht/~cedric/stegano
cd stegano/
sudo python setup.py install
echo "We're going to test a little Stegano…"

echo "Hide the message with the Sieve of Eratosthenes…"
slsb-set --hide -i ./examples/pictures/Montenach.png -o ./surprise.png --generator eratosthenes -m 'Joyeux Noël!'

echo "Try to reveal with Mersenne numbers…"
slsb-set --reveal --generator mersenne -i ./surprise.png

echo "Try to reveal with fermat numbers…"
slsb-set --reveal --generator fermat -i ./surprise.png

echo "Try to reveal with carmichael numbers…"
slsb-set --reveal --generator carmichael -i ./surprise.png

echo "Try to reveal with Sieve of Eratosthenes…"
slsb-set --reveal --generator eratosthenes -i ./surprise.png
```

Vous obtiendrez le résultat suivant:

```bash
$ ./test-slsb-gen.sh 
destination directory: stegano
requesting all changes
adding changesets
adding manifests
adding file changes
added 53 changesets with 115 changes to 43 files
updating to branch default
23 files updated, 0 files merged, 0 files removed, 0 files unresolved
…
We're going to test a little Stegano…

Hide the message with the Sieve of Eratosthenes…

Try to reveal with Mersenne numbers…
Impossible to detect message.

Try to reveal with fermat numbers…
Impossible to detect message.

Try to reveal with carmichael numbers…
Impossible to detect message.

Try to reveal with Sieve of Eratosthenes…
Joyeux Noël!
```

Et voilà le message est bien découvert avec le crible d[Eratosthenes][4].
Il s'agit d'une première version et il y a des améliorations à effectuer.
Cependant il est possible de déjà faire quelques tests.
Pour le moment il est possible de générer des ensembles avec la suite de
[Fibonacci][5], le crible dEratosthenes, les nombres de Fermat et
[Carmichael][6]. Il y a quelques problèmes avec Carmichael et [Ackermann][7].
Je ne comprends pas, j'ai pourtant un i7 ;-). Je précise que dans cette
implémentation la suite de Fermat commence par 1,2,3,… En commençant par les
premières valeurs on a des problèmes…

 [1]: {{< ref "/blog/2011-11-21-stegano-change-de-page-maison.md" >}}
 [2]: https://fr.wikipedia.org/wiki/Nexuiz
 [3]: https://git.sr.ht/~cedric/stegano
 [4]: https://oeis.org/A000040
 [5]: https://oeis.org/A000045
 [6]: https://oeis.org/A002997
 [7]: https://oeis.org/A126333
