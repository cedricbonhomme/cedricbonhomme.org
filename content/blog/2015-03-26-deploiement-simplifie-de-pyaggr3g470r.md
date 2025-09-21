---
title: Déploiement simplifié de pyAggr3g470r
slug: deploiement-simplifie-de-pyaggr3g470r
author: Cédric Bonhomme
type: post
date: 2015-03-26T18:30:29+00:00
tags:
  - python
  - pyAggr3g470r
  - newspipe

---
```bash
$ git clone https://git.sr.ht/~cedric/pyAggr3g470r
$ cd pyaggr3g470r/
$ ./install.sh postgres
```

Difficile de faire plus simple.

Il est aussi possible déployer l'application au sein d'une machine virtuelle
avec Vagrant. Je viens de tester et ça fonctionne très bien.
Vous pouvez utiliser SQLite au lieu de PostgreSQL.

Vous trouverez [ici][1] les différentes méthodes de déploiement.

 [1]: https://git.sr.ht/~cedric/pyAggr3g470r/tree/master/item/documentation/deployment.rst
