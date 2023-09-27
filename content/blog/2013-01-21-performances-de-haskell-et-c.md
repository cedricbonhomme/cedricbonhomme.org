---
title: Performances de Haskell et C
author: Cédric Bonhomme
type: post
date: 2013-01-21T20:39:04+00:00
categories:
  - Programming
tags:
  - c
  - haskell
  - ocaml

---
[Un article][1] hautement intéressant sur les performances d'Haskell et C. Intéressant, cependant je ne trouve pas choquant que C soit _généralement_ plus rapide que Haskell. Comme l'auteur le dit, il est très difficile de battre C en vitesse (naturellement avec des implémentations _équivalentes_).  
Par contre je suis étonné pour OCaml. Mon [petit test][2] avec Ackermann montrait que OCaml était bien supérieur à Haskell. J'admets évidemment qu'un simple test avec une fonction mathématique récursive ne puisse pas être une référence.

 [1]: http://jacquesmattheij.com/when-haskell-is-not-faster-than-c
 [2]: http://blog.cedricbonhomme.org/2012/10/01/quelques-benchmarks-avec-ackermann/
