---
title: Support natif de HTTPS chez AlwaysData
author: Cédric Bonhomme
type: post
date: 2016-12-02T06:47:13+00:00
tags:
  - AlwaysData
  - https
  - lets-encrypt
  - security

---
Cela fait maintenant plus de 6 ans que j’utilise
[AlwaysData](https://www.alwaysdata.com) et je suis toujours aussi content du
service. Et même régulièrement surpris. La dernière fois fût hier soir lorsque
je me suis rendu compte que AlwaysData
[supporte maintenant HTTPS](https://blog.alwaysdata.com/2016/11/28/https-native-support-for-lets-encrypt/)
de manière totalement transparente.

Comme [vous le savez]({{< ref "/blog/2014-09-11-pas-de-panique.md" >}}),
j’utilise un certificat [CAcert](http://www.cacert.org) pour
``*.cedricbonhomme.org`` et un certificat
[Lets Encrypt](https://letsencrypt.org) pour ``cdn.cedricbonhomme.org``
(héberge le _bundle_ React de [Newspipe](https://www.newspipe.org)).
J’aurai pu utiliser _Lets Encrypt_ pour mes autres sous-domaines, mais les
_wildcard_ ne sont pas supportés par _Lets Encrypt_. En conséquence, j’aurai dû
générer à la main les certificats de chaque sous-domaine. Et renouveler les
certificats tous les 90 jours. C’est un peu trop contraignant pour un serveur
partagé.

Maintenant ces problèmes font partie du passé, puisqu’un certificat
_Lets Encrypt_ est automatiquement généré par AlwaysData pour chaque
sous-domaine. Le renouvellement des certificats est également effectué
automatiquement. Il n’y a rien à faire.

Vous me direz que je ne contrôle plus grand-chose à ce niveau. C’est vrai. Mais
je peux toujours importer mon certificat, qui sera utilisé en priorité. Et je
pense que pour mettre à jour mon blog ou mon wiki, un certificat
_Lets Encrypt_ géré automatiquement est déjà suffisant. Ce serait différent si
j’avais mon serveur physique chez moi. Et en ce moment j’ai plutôt envie de
continuer à utiliser AlwaysData.
