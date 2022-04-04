---
title: Décret à propos de Python et Stegano
slug: decret-a-propos-de-python-et-stegano
author: Cédric Bonhomme
type: post
date: 2017-02-06T10:45:33+00:00
tags:
  - python
  - stegano

---
![Trumps decree on Python](/images/blog/2017/02/Trump_decree_on_Python.png)

```bash
$ sudo pip3.5 install --upgrade Stegano
$ curl -s https://www.cedricbonhomme.org/images/blog/2017/02/Trump_decree_on_Python.png -o Trump_decree_on_Python.png
$ lsb-set reveal -i Trump_decree_on_Python.png -g eratosthenes
```

Plus sérieusement, quelques améliorations (et corrections) pour
[Stegano](https://git.sr.ht/~cedric/stegano) sont disponibles.
Bien que je ne parle pas tellement de ce projet ici, le
[changelog](https://git.sr.ht/~cedric/stegano/tree/master/item/CHANGELOG.md)
est à jour.
