---
title: Stéganalyse de la méthode LSB (avec un ensemble de nombres décrit par crible d’Eratosthenes)
slug: steganalyse-de-la-methode-lsb-avec-un-ensemble-de-nombres-decrit-par-crible-deratosthenes
author: Cédric Bonhomme
type: post
date: 2011-12-28T22:13:57+00:00
series: ["Steganography"]
tags:
  - python
  - steganalyse
  - stegano
  - steganography

---
Tout d'abord afin se rafraîchir l'esprit, on pourra lire l'ancien billet
[_Stéganalyse de la méthode LSB_][1]. Il sagissait d'usiter la méthode dite
_Least Significant Beat_ puis de comparer la stéganalyse du fichier original
et du fichier avec un message caché. La conclusion était que grâce à la
stéganalyse par parité il était aisé de détecter une image altérée par la
méthode LSB classique.

Aujourd'hui nous allons en plus cacher le message avec la nouvelle technique.
Elle utiliser un ensemble de nombres pour sélectionner les pixels
où seront cachés les données. Pour cette exemple nous allons utiliser le
crible dEratosthenes.

Il suffit d'exécuter les commandes:

```bash
# Cache le contenu de secret.txt dans Jennifer_Morrison-original.png en utilisant l'ensemble des nombres décrit par le crible d'Eratosthenes
$ slsb-set --hide -i ./Jennifer_Morrison-original.png -o ./Jennifer_Morrison-enc-gen.png --generator eratosthenes -f ./secret.txt
# Stéganalyse du fichier résultant 
$ steganalysis-parity -i ./Jennifer_Morrison-enc-gen.png -o ./Jennifer_Morrison-en-gen-steg.png

# Cache le contenu de secret.txt dans Jennifer_Morrison-original.png via la méthode <a href="https://www.cedricbonhomme.org/2010/10/01/lena/">LSB classique</a>
$ slsb --hide -i ./Jennifer_Morrison-original.png -o ./Jennifer_Morrison-enc.png  -f ./secret.txt 
# Stéganalyse du fichier résultant
$ steganalysis-parity -i ./Jennifer_Morrison-enc.png -o ./Jennifer_Morrison-en-steg.png 

# Stéganalyse du fichier original
$ steganalysis-parity -i ./Jennifer_Morrison-original.png -o ./Jennifer_Morrison-steg.png
```

Vous obtiendrez en résultat ces fichiers (survollez avec la souris les images afin de
comprendre de quoi il s'agit):

![Stéganalyse du fichier original](/images/blog/2011/12/Jennifer_Morrison-original.png)

![Stéganalyse de l'image avec un texte caché (LSB)](/images/blog/2011/12/Jennifer_Morrison-enc.png)
  
![Stéganalyse de l'image avec un texte caché (LSB + Eratosthenes)](/images/blog/2011/12/Jennifer_Morrison-enc-gen.png)
  

Les 3 images paraissent identiques.

On peut observer une étrange régularité au début
<a href="/images/blog/2011/12/Jennifer_Morrison-en-steg.png">du fichier résultant</a>
de la stéganlyse de l'image dans laquelle un texte a été caché via la méthode LSB classique.

Par contre il est plus difficile de détecter une anomalie similaire sur
<a href="/images/blog/2011/12/Jennifer_Morrison-en-gen-steg.png">le fichier résultant</a>
de la stéganalyse de l'image dans laquelle un texte a été caché via la méthode LSB
tout en utilisant un ensemble de points (ici obtenu avec le crible dEratosthenes).

Si vous ne me faites pas confiance:

```bash
$ wget /images/blog/2011/12/Jennifer_Morrison-enc.png
$ wget /images/blog/2011/12/Jennifer_Morrison-enc-gen.png

$ slsb-set --reveal --generator eratosthenes -i ./Jennifer_Morrison-enc-gen.png  -b text-dec-gen.txt
$ slsb --reveal  -i ./Jennifer_Morrison-enc.png  -b text-dec.txt
$ cmp text-dec.txt text-dec-gen.txt 
$ cat text-dec.txt 
The Zen of Python, by Tim Peters

Beautiful is better than ugly.
Explicit is better than implicit.
Simple is better than complex.
Complex is better than complicated.
Flat is better than nested.
Sparse is better than dense.
Readability counts.
Special cases aren't special enough to break the rules.
Although practicality beats purity.
Errors should never pass silently.
Unless explicitly silenced.
In the face of ambiguity, refuse the temptation to guess.
There should be one-- and preferably only one --obvious way to do it.
Although that way may not be obvious at first unless you're Dutch.
Now is better than never.
Although never is often better than *right* now.
If the implementation is hard to explain, it's a bad idea.
If the implementation is easy to explain, it may be a good idea.

$ slsb-set --reveal --generator fermat -i ./Jennifer_Morrison-enc-gen.png  -b text-dec-gen.txt
Impossible to detect message.
```

La conclusion évidente est donc qu'il est préférable de ne pas utiliser des
pixels se suivants mais un ensemble de pixels bien réparti que l'on pourra
retrouver afin de récupérer le message caché. Ici lidée était donc de générer
des ensembles via des générateurs de nombres entiers. La qualité de la
répartition va donc dépendre de la suite choisie. On aurait très bien pu
utiliser la suite de Fibonacci par exemple.

 [1]: {{< ref "/blog/2010-10-04-steganalyse-de-la-methode-lsb.md" >}}
