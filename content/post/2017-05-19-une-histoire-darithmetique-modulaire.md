---
title: Une histoire d’arithmétique modulaire
slug: une-histoire-darithmetique-modulaire
author: Cédric Bonhomme
type: post
date: 2017-05-19T00:11:22+00:00
categories:
  - cryptography
tags:
  - cryptography
  - rsa
  - WannaCry

---
Bob était amoureux d'Alice. Il voulait lui envoyer une déclaration d'amour.
Mais Bob avait peur que cette déclaration puisse tomber dans les mains d'une
autre personne. Par exemple le méchant Oscar. Par chance Alice qui aimait bien
les maths connaissait RSA. Elle disposait tout naturellement d'une clé publique
```(b,  n)``` et d'une clé privé ```(a, n)```.

Bob utilisa donc la clé publique d'Alice pour protéger son message:

```math
secret = message˄b mod n
```

Une fois le message réceptionné par Alice (IP par transporteurs aviaires),
elle utilisa la clé privée afin de découvrir le message:

```math
message = secret˄a mod n
```

Mais comment a fait Alice pour avoir de telles clés?

Une des premières choses à faire était de trouver (à la main et avec le test de
primalité de Miller-Rabin) deux très grands nombres premiers ```p``` et ```q```
tels que:

```math
(1)   Φ(n) = (p - 1) * (q - 1), l'indicateur d'Euler
(2)   n = p * q
```

```n```, le modulus, est donc le produit de deux grands nombres premiers.

Nous avons également:

```math
(3)   a = b˄-1 mod Φ(n)
```

(Si tu veux comprendre un peu plus en détail: [1][1] et [2][2].
Et si vraiment Euler ne te dis plus rien, tu peux aussi réviser ton
arithmétique modulaire de terminale. Le bon vieux temps.)

Ensuite nous devons trouver un entier ```b``` tel que:

```math
pgcd(b, Φ) = 1
```

Et finalement l'exposant privé `a` sera l'inverse de `b mod Φ`. (Pareil, revoir
les cours de terminale. Désolé.)

Mais au bout de tout ça, qu'elles données sont utiles à Alice ? Et bien
uniquement lexposant public `b`, l'exposant privé `a` et le modulus `n`.
C'est tout. `p` et `q` ne sont plus utiles puisque nous connaissons `n`.
De même pour Φ, il ne faut pas le garder car il permet de retrouver `p` et `q`.
(J'aimais bien [faire ça][3], en seconde…)

Bref attaquer RSA n'est pas plus facile que de factoriser le modulus.

Si Oscar avait connu p et q il aurait facilement pu calculer Φ (avec 1).
Puis l'exposant privé `a` (avec 3) qui est donc l'inverse modulaire de `b` et
`Φ`. Un cauchemar pour Bob. Une chance pour les victimes de [WannaCry][4].


 [1]: https://en.wikipedia.org/wiki/Euler%27s_totient_function#Euler.27s_theorem
 [2]: https://en.wikipedia.org/wiki/Euler%27s_totient_function#The_RSA_cryptosystem
 [3]: https://en.wikipedia.org/wiki/Quadratic_equation#Discriminant
 [4]: https://fr.wikipedia.org/wiki/WannaCry