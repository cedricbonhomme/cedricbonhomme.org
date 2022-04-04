---
title: Chiffrement
slug: chiffrement
author: Cédric
type: post
date: 2008-10-31T21:57:26+00:00
tags:
  - cryptography
  - privacy

---
Nous utilisons l'informatique au quotidien pour des besoins de plus en plus
nombreux et variés. Il est important de protéger nos données contre la
détérioration, le piratage, etc. Souvent ces données représentent des heures de
travail, notre vie privée.

Nous essayons donc de protéger ces informations (sauvegarde, antivirus,
authentification, etc.). Qu'en est-il du vol ? Un ordinateur portable peut très
vite disparaître. Un moment d'inattention et toutes vos photos, mails, contacts
et comptes disparaissent. Ou alors votre clé USB. À partir de ce moment, même
une authentification par empreinte est inutile.

La solution : le **chiffrement**.

Pour cela : [LUKS][1] ou [TrueCrypt][2]. TrueCrypt est un utilitaire simple à
utiliser. Parfait pour chiffrer votre clé USB. Celui ci implémente le
[déni plausible][3]. Le chiffrement est automatique, en temps réel et
transparent.

 [1]: https://gitlab.com/cryptsetup/cryptsetup
 [2]: https://www.truecrypt.org
 [3]: http://fr.wikipedia.org/wiki/Déni_plausible
