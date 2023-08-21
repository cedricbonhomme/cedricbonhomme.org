---
title: Quelques benchmarks avec Ackermann
slug: quelques-benchmarks-avec-ackermann
author: Cédric Bonhomme
type: post
date: 2012-10-01T21:01:02+00:00
tags:
  - ackermann
  - benchmark
  - c
  - go
  - haskell
  - ocaml
  - python

---
Un billet qui va peut-être intéresser quelqu'un et répondre à une question que
je me pose.

```bash
$ gcc -Wall ./ackermann.c -o ackermann-c
$ go build -o ackermann-go ./ackermann.go
$ ocamlc ./ackermann.ml -o ackermann-ocaml
$ ghc ./ackermann.hs -o ackermann-haskell
$ python -c "import ackermann-python"
```

```bash
$ time ./ackermann-c 3 12
32765

real    0m4.345s
user    0m4.320s
sys     0m0.012s
```

```bash
$ time ./ackermann-go 3 12
32765

real    0m4.453s
user    0m4.436s
sys     0m0.000s
```

```bash
$ time ./ackermann-ocaml 3 12
32765

real    0m13.094s
user    0m13.053s
sys     0m0.000s
```

```bash
$ time ./ackermann-haskell 3 12
32765

real    1m11.108s
user    1m10.616s
sys     0m0.268s
```

```bash
$ time python ackermann-python.pyc 3 12
32765

real    2m33.121s
user    2m32.518s
sys     0m0.088s
```

Voici les codes respectifs: [ackermann.c][1], [ackermann.go][2],
[ackermann.ml][3], [ackermann.hs][4] et [ackermann.py][5].
Évidemment, j'ai fais les tests avec la version correspondant à la
[définition de la fonction][6] (version _naïve_). Je peux même lancer tous les
tests en même temps grâce aux 8 coeurs de li7. Ça ne change pas beaucoup les
résultats!

Je pense que vous avez compris quelle est ma question. J'ai fais plusieurs tests
et lécart entre la version OCaml et Haskell est toujours aussi important
(y compris en utilisant ```ocamlrun ./ackermann-ocaml```). Les résultats avec les
mplémentations C, Go et Python ne sont pas vraiment une surprise.

Il y a tout de même presque une minute de différence entre les versions OCaml
et Haskell. J'aimerai bien savoir ce que fait le compilateur OCaml afin d'avoir
de si bons résultats (qui ne devrait pas être comparé à du C en fait).

 [1]: https://github.com/cedricbonhomme/ackermann/blob/04ea3e729d96112ad92a11304bbe456ba49b4f88/ackermann.c#L8
 [2]: https://github.com/cedricbonhomme/ackermann/blob/9f9d0e96f8b9c34704ff38d779a70376c0b983f8/ackermann.go#L10
 [3]: https://github.com/cedricbonhomme/ackermann/blob/74259ffec65342c45af57acd293d52b797419a79/ackermann.ml#L3
 [4]: https://github.com/cedricbonhomme/ackermann/blob/410d2238e663c366c4a26eae616d79ef43c8dc17/ackermann.hs#L4
 [5]: https://github.com/cedricbonhomme/ackermann/blob/9f9d0e96f8b9c34704ff38d779a70376c0b983f8/ackermann.py#L11
 [6]: https://fr.wikipedia.org/wiki/Fonction_d%27Ackermann