---
title: 'pyChatter [is not dead]'
slug: pychatter-is-not-dead
author: Cédric Bonhomme
type: post
date: 2009-12-23T19:10:34+00:00
tags:
  - pychatter
  - python
categories:
  - Programming

---
Dans [ce billet][1] jannonçais la naissance du projet [pyChatter][2], une messagerie
instantanée où j'aurai l'occasion d'inclure quelques modules de cryptographie sympa que
j'ai développé. Comme préssenti j'ai vite été ennuyé par les problèmes de connexions.
De plus larchitecture que j'avais imaginée commençait à me déplaire de plus en plus.
En gros je trouvais le développement très laborieux pour arriver à pas grand chose comme l'authentification CHAP pourtant déjà implémenté.

Ayant découvert [SPADE][3] il y a quelques temps j'ai vite pensé à l'utiliser pour ce
projet. Ce cadre de développement à de nombreux avantages pour mes problèmes.
J'ai donc decidé de tout recommencer et de mettre de côté pour le moment les algorithmes
de chiffrement (je ne sais toujours pas si je dois intégrer ElGamal, RSA ou les deux).
Et maintenant le développement va bien plus vite, j'ai déjà plus quavant.
Mais bon ça reste encore simple, surtout l'interface…

En gros voilà les principaux avantages pour mon besoin:

- ne pas avoir à se soucier des adresses et ports découtes;
- facilité à créer des comportements sans se soucier des threads;
- facilité denvoyer des chaînes de caractères et de récupérer ces chaînes;
- recherche d'interlocuteurs est grandement simplifiée.

Je prévois de ré-introduire le chiffrement des messages dès que j'aurai un agent en
charge de l'authentification. Cet agent sera peut être en charge de la gestion des clés
publiques (à voir en détail). Il faudra donc préalablement sauthentifier avec cet agent
suivant le protocole CHAP (après une première inscription dans un registre.
Petit point faible là). Le challenge est rejoué à intervalle régulier durant toute la
session.

Et pour le fun pyChatter sera capable de parler et de faire bouger Tux Droid à l'arrivée
de nouveaux interlocuteurs. Non, pas à chaque nouveaux messages (quoique en option 😉 )
Ce module est déjà disponible, mais non utilisé pour le moment.

En guise de cadeau de Noël quelques [tutoriels][4] en images.
Encore plus sympa que le Père Noël !

 [1]: {{< ref "/blog/2009-07-12-pychatter.md" >}}
 [2]: https://hg.sr.ht/~cedric/pychatter
 [3]: https://github.com/javipalanca/spade
 [4]: http://pychatter.wikidot.com/tutorial
