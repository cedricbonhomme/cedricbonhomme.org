---
title: Comparaison des performances de Python 2.7 et 3.3 avec Ackermann
slug: comparaison-des-performances-de-python-2-7-et-3-3-avec-ackermann
author: Cédric Bonhomme
type: post
date: 2013-04-14T22:14:53+00:00
categories:
  - Programming
  - Python
tags:
  - Ackermann
  - benchmark
  - python

---
```bash
$ time python ackermann.py 3 12
32765
 
real    2m33.121s
user    2m32.518s
sys     0m0.088s
```

```bash
$ time python ackermann.py 3 12
32765

real    2m57.908s
user    2m57.316s
sys     0m0.068s
```

```bash
$ time python3.3 ackermann.py 3 12
32765

real    4m6.365s
user    3m18.204s
sys     0m47.452s
```

Tests effectués avec, dans l'ordre, Python 2.7.3, 2.7.4 et 3.3.1 sur
[cet algorithme][1].
Nous voyons que malgré le fait que Python 3.* s'améliore (voir [ce billet][2]),
Python 2.7 est toujours bien plus rapide. Ce test n'utilise pas d'itérateurs ou
objets/structures complexes. Il s'agit simplement de l'implémentation naïve de
la fonction d'Ackermann. Nous avions [déjà fait][3] quelques comparaisons entre
différents langages.

 [1]: https://github.com/cedricbonhomme/ackermann/blob/9f9d0e96f8b9c34704ff38d779a70376c0b983f8/ackermann.py
 [2]: {{< ref "/post/2013-04-06-performances-de-python-3.md" >}}
 [3]: {{< ref "/post/2012-10-01-quelques-benchmarks-avec-ackermann.md" >}}
