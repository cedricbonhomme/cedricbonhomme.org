---
title: pyChatter, ça avance !
slug: pychatter-ca-avance
author: Cédric Bonhomme
type: post
date: 2009-12-28T09:36:51+00:00
categories:
  - Programming
  - Network
tags:
  - cryptography
  - pychatter
  - python

---
pyChatter, ça avance !

Ces vacances sont plutôt fructueuses étant donné que j'avance relativement bien sur pyChatter. Faudrait que je me dépêche avant la fin.

De nouveaux tutoriels sont aussi disponbiles.

L'agent d'authentification n'est pas terminé mais fait déjà l'essentiel, à savoir
l'inscription des clients et la gestion des clés publiques. Et oui, les messages clients
à clients sont maintenants chiffrés avec RSA. Bientôt une GUI permettra à l'utilisateur
de choisir la taille de sa clé.

Pour la sécurité en plus de RSA, pour le fun il y a le nom de l'ontologie propre à
chaque client et bientôt un paramètre de sécurité spécial ("secret") propre à XMPP.

Cependant il reste à traiter beaucoup de détails comme le changement de clés,
d'ontologie, supprimer son compte, etc. Et surtout rétablir CHAP.

Il faudra aussi pouvoir envoyer un message en privé à une personne dans une conversation.
Et rendre tout ça plus user-friendly, pas si facile avec Tkinter.

Actuellement je mets les [spécifications][2] en lignes avec les explications sur le
chiffrement, et le reste…

Voilà, donc encore pas mal d'amusement 😉

 [1]: https://hg.sr.ht/~cedric/pychatter
 [2]: http://pychatter.wikidot.com/how-it-works
