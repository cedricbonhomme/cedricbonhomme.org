---
title: Stéganographie avec ensembles en utilisant la fonction identité
slug: steganographie-avec-ensembles-en-utilisant-la-fonction-identite
author: Cédric Bonhomme
type: post
date: 2011-12-29T11:04:28+00:00
series: ["Steganography"]
tags:
  - python
  - security
  - stegano
  - steganography

---
![Jessica Alba](/images/blog/2011/12/Jessica_Alba.png)

Pourquoi ne pas ajouter la fonction identité
(![][1] avec son [implémentation en générateur][2]) à la liste des générateurs
permettant dengendrer les ensembles?  
On pourrait ensuite vérifier si on peut retrouver le message avec loutil slsb
classique. Faisons le test:

```bash
# On cache avec l'outil slsb-set (LSB + fonction identité)
$ <strong>slsb-set</strong> --hide -i ~/<a href="/images/blog/2011/12/Jessica_Alba.png">Jessica_Alba.png</a> -o ~/Jessica_Alba-enc-gen.png --generator identity -m 'Je préfère Cédric à Michael Weatherly.'

# On tente de retrouver le message avec l'outils slsb (juste LSB)
$ <strong>slsb</strong> --reveal  -i ~/<a href="/images/blog/2011/12/Jessica_Alba-enc-gen.png">Jessica_Alba-enc-gen.png</a>
Je préfère Cédric à Michael Weatherly.
```

Et ça fonctionne!
Ça peut sembler logique, mais pour moi c'était un peu la surprise.
La surprise qui veut dire que ce n'est quand même pas codé n'importe comment 😉

Heureusement d'autres générateurs d'ensembles sont disponibles.
Voici la [liste des générateurs déjà implémenté][3].

Appel à l'aide. Si vous avez une implémentation un peu voir beaucoup plus
performante que [la mienne][4] pour [Syracuse][5], elle serait la bienvenue!
Mais j'en doute… Syracuse:  
![][6] 

Post lié: [_Stéganalyse de la méthode LSB (avec un ensemble de nombres décrit par crible d’Eratosthenes) avec Jennifer Morrison_][7]

 [1]: http://upload.wikimedia.org/wikipedia/fr/math/5/2/e/52e674df1c5007c4f92edaac5c8403f9.png
 [2]: http://projects.cedricbonhomme.org/projects/stegano/repository/entry/stegano/generators.py#L29
 [3]: http://projects.cedricbonhomme.org/projects/stegano/repository/entry/stegano/generators.py
 [4]: http://projects.cedricbonhomme.org/projects/stegano/repository/entry/stegano/generators.py#L111
 [5]: http://fr.wikipedia.org/wiki/Conjecture_de_Syracuse
 [6]: http://upload.wikimedia.org/wikipedia/fr/math/c/9/2/c92885687a71c3ee85904b81e6661673.png
 [7]: {{< ref "/post/2011-12-28-steganalyse-de-la-methode-lsb-avec-un-ensemble-de-nombres-decrit-par-crible-deratosthenes-avec-jennifer-morrison.md" >}}
