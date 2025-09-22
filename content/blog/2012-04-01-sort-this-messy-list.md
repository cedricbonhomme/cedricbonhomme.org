---
title: Sort this messy list
author: Cédric Bonhomme
type: post
date: 2012-04-01T15:53:31+00:00
tags:
  - algorithm
  - python

---
Avec l'odrinateur que j'utilisais en 2007 le [tri à bulles][1] s'exécutait
en 41.33 secondes sur une liste de 10.000 éléments (avec Python 2.5.1c1).
Maintenant il s'exécute en 8.62 secondes (avec Python 3.2.2).

Je pense que je vais essayer de faire tourner certains de ces tris sur
plusieurs coeurs. Le résultat devrait être surprenant.

Voici le détail des résultats:

```
Algorithme/Nb elements				500				1000				5000				10000

Tri Insertion			0.0400000000			0.1900000000			4.7000000000			18.6900000000
Tri Fusion			0.0100000000			0.0200000000			0.1100000000			0.2500000000
Tri Natif			0.0000000000			0.0000000000			0.0000000000			0.0100000000
Tri Bulle			0.1000000000			0.4100000000			10.2800000000			41.3300000000
Tri Selection			0.2100000000			0.8300000000			20.6900000000			84.2100000000
Tri Selection 2			0.0400000000			0.1600000000			3.9700000000			15.8300000000
Tri Insertion 2			0.0300000000			0.0800000000			2.1100000000			8.6000000000
Tri Casier			0.0300000000			0.0700000000			0.3100000000			0.6200000000

Temps exprimé en secondes.
Version de Python : Python 2.5.1c1
Date du Test : 28/05/2007

Nom générique de la machine : VAIO PCG-GRV616G
Système d'exploitation : Ubuntu 4.1.2-0ubuntu4 (Feisty Fawn) (avril 2007)
Noyau : Linux version 2.6.20-15-generic
Environnement de Bureau : Gnome 2.18.1
model name	: Intel(R) Pentium(R) 4 CPU 2.60GHz

============================================================================================================

Algorithme/Nb elements				500				1000				5000				10000

Tri Insertion			0.0400000000			0.1600000000			3.9200000000			16.0600000000
Tri Fusion			0.0000000000			0.0200000000			0.0900000000			0.1900000000
Tri Natif			0.0000000000			0.0000000000			0.0100000000			0.0100000000
Tri Bulle			0.0900000000			0.3800000000			9.2400000000			37.3700000000
Tri Selection			0.2000000000			0.7700000000			19.6400000000			78.8000000000
Tri Selection 2			0.0400000000			0.1500000000			3.5200000000			14.3500000000
Tri Insertion 2			0.0200000000			0.0700000000			1.8600000000			7.5800000000
Tri Casier			0.0400000000			0.0700000000			0.3400000000			0.6800000000

Temps exprimé en secondes.
Système d'exploitation : Mandriva 2007.1
Noyau : 2.6.24.4-desktop586-1mnb Linux
model name	: Intel(R) Pentium(R) D  CPU 2.66GHz

============================================================================================================

Algorithm/Nb elements				500				1000				5000				10000

Natif			0.0000000000			0.0000000000			0.0000000000			0.0100000000
Fusion			0.0000000000			0.0000000000			0.0200000000			0.0500000000
Selection			0.0400000000			0.1500000000			3.6200000000			14.3600000000
Casier			0.0100000000			0.0100000000			0.0700000000			0.1500000000
Insertion			0.0100000000			0.0400000000			0.7800000000			3.1500000000
Selection_Better			0.0100000000			0.0200000000			0.6700000000			2.5700000000
Insertion_Better			0.0000000000			0.0200000000			0.3600000000			1.5000000000
Bubble			0.0200000000			0.0800000000			2.2800000000			8.6200000000

Time in seconds.
Date : 2012/04/2012

System : Kubuntu 11.10
kernel : 3.0.0-17-generic
model name	: Intel(R) Core(TM) i7-2600 CPU @ 3.40GHz
```

 [1]: https://fr.wikipedia.org/wiki/Tri_à_bulles
