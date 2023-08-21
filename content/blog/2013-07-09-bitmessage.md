---
title: Bitmessage
author: Cédric Bonhomme
type: post
date: 2013-07-09T15:05:40+00:00
categories:
  - cryptography
  - Security
tags:
  - bitmessage
  - cryptography
  - email
  - privacy
  - security

---
[Bitmessage][1] est un système de messagerie [publié en novembre 2012][2] et dont la popularité vient de faire un petit bon suite à l'affaire [PRISM][3]. Le système est décentralisé et fonctionne sans autorité de confiance. Une implémentation expérimentale Python est [disponible][4].

Son fonctionnement est assez intéressant, il est possible de voir des analogies avec [Bitcoin][5]. Par exemple vos adresses de messagerie (environ 36 caractères) sont générées à partir de votre clé ou d'une _passphrase_. Vous pouvez donc générer une nouvelle adresse dès que vous le souhaitez au dépend de la réputation, sauf si vous signez vos messages avec votre clé [GPG][6].

De plus Bitmessage cache les méta-données comme l'adresse de lexpéditeur et du destinataire.

Lorsque vous envoyez un message à une personne tous les noeuds du réseau reçoivent le message mais seul le destinataire sera capable de le lire. Il est possible denvoyer un message à une ou plusieurs personnes. Il est même possible denvoyer un message _broadcast_ à toutes les personnes abonnées à votre adresse.

Tout comme avec Bitcoin, tout le monde peut voir qui envoie un message à qui. Ceci n'est pas un problème car vous pouvez changer d'adresse e-mail à chaque nouvel envoie. Et sauf si vous le faites de manière explicite, il n'est pas possible d'établir un lien entre deux adresses.

Le projet est très peu documenté mais l'installation sur les différentes plate-formes est vraiment simple. L'utilisation pour une personne initiée aux techniques de cryptographies et de communications pair-à-pair est _assez_ simple mais peu déstabiliser les novices. Un tutoriel avec des images est disponible [ici][7]. Vous constaterez que l'interface est déjà plutôt bien faite.

Une intégration dans la suite [Kontact][8] sera vraiment la bienvenue!

Mon adresse Bitmessage de prise de contact est: BM-2D91oZfKyoq7NYy5cFrf2YtCcfirmQvjLe

 [1]: https://bitmessage.org
 [2]: https://bitmessage.org/bitmessage.pdf
 [3]: https://fr.wikipedia.org/wiki/PRISM_(programme_de_surveillance)
 [4]: https://github.com/Bitmessage/
 [5]: http://bitcoin.org/
 [6]: https://en.wikipedia.org/wiki/GNU_Privacy_Guard
 [7]: http://cryptojunky.com/blog/2013/03/09/setting-up-and-using-bitmessage-an-encrypted-communications-platform-based-on-bitcoin/
 [8]: http://userbase.kde.org/Kontact