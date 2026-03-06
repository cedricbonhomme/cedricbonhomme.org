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
categories:
  - Programming
  - Security
  - Steganography

---
![Jessica Alba](/images/blog/2011/12/Jessica_Alba.png)

Pourquoi ne pas ajouter la fonction identité
(![][1] avec son [implémentation en générateur][2]) à la liste des générateurs
permettant d'engendrer les ensembles?  
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

Post lié: [_Stéganalyse de la méthode LSB (avec un ensemble de nombres décrit par crible d’Eratosthenes) avec Jennifer Morrison_][4]

 [1]: http://upload.wikimedia.org/wikipedia/fr/math/5/2/e/52e674df1c5007c4f92edaac5c8403f9.png
 [2]: https://github.com/cedricbonhomme/Stegano/blob/11348dda9a0f3a15dcaf7cfb656ad8c0347a4731/stegano/lsb/generators.py#L34
 [3]: https://github.com/cedricbonhomme/Stegano/blob/11348dda9a0f3a15dcaf7cfb656ad8c0347a4731/stegano/lsb/generators.py
 [4]: {{< ref "/blog/2011-12-28-steganalyse-de-la-methode-lsb-avec-un-ensemble-de-nombres-decrit-par-crible-deratosthenes-avec-jennifer-morrison.md" >}}
