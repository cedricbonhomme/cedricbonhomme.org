---
title: Stéganalyse de la méthode LSB
slug: steganalyse-de-la-methode-lsb
author: Cédric Bonhomme
type: post
date: 2010-10-03T23:01:22+00:00
series: ["Steganography"]
tags:
  - python
  - LSB
  - steganalyse
  - steganography

---
Comme expliqué dans le [billet précédent][1] la technique LSB
(Least Significant Bit) est aisément attaquable. En effet si pour loeil modifier
le bit de poids faible est invisible il nen est pas de même pour un script
[Python][2]. Nous allons donc utiliser une technique qui consiste tout
simplement à remplacer les composantes pairs des pixels par 0 et les composantes
impairs par 255. Ce qui veut dire que le pixel (132, 247, 123) deviendrait
(0, 255, 255).

Voyons ce que cela nous donne avec l'image originale.

![Image originale](/images/blog/2014/08/2010-08-04T154206.png)

![Stéganalyse de l'image originale](/images/blog/2014/08/2010-08-04T154206_steganalysed.png)
  
On voit que la répartition n'est localement pas très uniforme
(cliquez sur les images pour voir plus près).

Maintenant nous utilisons
l'[algorithme LSB](https://git.sr.ht/~cedric/stegano/tree/master/item/stegano/lsb/lsb.py)
afin de cacher un message.
Ensuite nous réalisons une
[stéganalyse](https://git.sr.ht/~cedric/stegano/tree/master/item/stegano/steganalysis/parity.py)
sur l'image modifiée.

![Image avec un texte caché](/images/blog/2014/08/2010-08-04T154206_enc.png)

![Stéganalyse de l'image avec un texte caché](/images/blog/2014/08/2010-08-04T154206_enc_steganalysed.png)

Ici on s'aperçoit nettement que la zone où se trouve dissimulé le message est
plus uniforme (une des raisons de chiffrer le texte avant de le cacher).
En introduisant un message dans l'image nous avons modifié le bit de poids
faible (donc la parité) des composantes des pixels. Il faut aussi savoir que
dans le système RGB un pixel par exemple blanc sera toujours codé
(255, 255, 255) avec les appareils saturants les couleurs
(les valeus sont quasi exactes).

J'ai une autre petite idée derrière la tête. Donc avec de la chance nous
verrons bientôt une autre méthode utilisant l'entropie pour détecter un message
caché dans une image, peut être même le trouver. Si mes résultats seront
concluents… Nous pourrons aussi comparer les deux techniques de stéganalyse.


 [1]: {{< ref "/blog/2010-10-01-lena.md" >}}
 [2]: http://www.python.org/
