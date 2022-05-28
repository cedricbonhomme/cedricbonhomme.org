---
title: Séquence d’entiers A000217
slug: sequence-dentiers-a000217
author: Cédric Bonhomme
type: post
date: 2011-12-30T11:48:33+00:00
series: ["Steganography"]
tags:
  - python
  - stegano
  - steganography

---
Un test avec la séquence dentiers [A000217][1].

```bash
$ slsb-set --hide -i examples/pictures/Montenach.png -o ~/enc-OEIS_A000217.png --generator OEIS_A000217 -m 'Happy new year!'
```

```bash
$ slsb-set --reveal -i ~/enc-OEIS_A000217.png --generator OEIS_A000217
Happy new year!
```

```bash
$ slsb-set --reveal -i ~/enc-OEIS_A000217.png --generator fermat
Impossible to detect message.
```

Rien de bien compliqué ici. Il s'agit juste de montrer comme
[il est simple d'ajouter des générateurs][2].  
J'ai aussi ajouté de nouveaux exemples plutôt intéressants, comme [celui-ci][3].

Merci aussi à [Vincent][4] qui a répondu à l'appel à l'aide du [billet précédent][5].

 [1]: http://oeis.org/A000217
 [2]: http://projects.cedricbonhomme.org/projects/stegano/repository/revisions/63186da927c2
 [3]: http://projects.cedricbonhomme.org/projects/stegano/repository/entry/examples/example3.sh
 [4]: http://lita.sciences.univ-metz.fr/~demange/
 [5]: {{< ref "/post/2011-12-29-steganographie-avec-ensembles-en-utilisant-la-fonction-identite-avec-jessica-alba.md" >}}
