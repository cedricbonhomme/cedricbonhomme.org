---
title: De l’utilité de l’authentification à deux facteurs
slug: de-lutilite-de-lauthentification-a-deux-facteurs
author: Cédric Bonhomme
type: post
date: 2016-09-30T21:30:32+00:00
categories:
  - Security
tags:
  - 2FA
  - attack
  - impersonalization
  - security
  - yubikey

---
Si le _récent_ piratage de Yahoo ne vous a toujours pas convaincu
d’utiliser l’authentification à deux facteurs (2FA),
[cette histoire](http://www.kennethreitz.org/essays/on-cybersecurity-and-being-targeted)
peut vous convaincre. Il s'agit du piratage d’un compte GitHub. Le compte piraté
a accès à du code privé de l'entreprise Heroku. La personne en question
utilisait [dnsimple](https://dnsimple.com) avec un simple mot de passe.
L'attaquant a pu ainsi modifier le champ MX (pour le serveur SMTP) du DNS afin
de réceptionner l'email de récupération de compte GitHub. Technique connue et
en plus simple.

J’utilise une authentification à deux facteurs avec tous les services Web qui me
le permettent, si possible avec ma YubiKey.

Yahoo comme GitHub permettent ce type d’authentification. GitHub avec une clé.
En général, lorsqu'un service Web que j'utilise ne propose pas cette sécurité,
jenvoie un email pour demander si ils prévoient de l'ajouter.