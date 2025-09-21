---
title: Sécurité d’Android
slug: securite-dandroid
author: Cédric Bonhomme
type: post
date: 2014-10-09T21:46:48+00:00
categories:
  - Security
tags:
  - Android
  - iOS
  - privacy
  - security

---
Voici [un article][1] très intéressant sur le chiffrement des données du système Android. Il s'agit surtout de la sécurité de lappareil (en cas de réquisition, de perte ou de vol) et non des problèmes liés aux applications qui peuvent laisser fuiter des données déchiffrées (_backdoor_, etc.).

L'article me rend plus enthousiaste que dhabitude. À condition d'utiliser un PIN correct (et non un PIN de 4 caractères) nos données semblent plutôt bien protégées avec Android 4.4. Android L (5.0) intégrera normalement un système équivalent à Secure Enclave. Il s'agit d'une puce où est stocké un UID (lors de lassemblage du _smartphone_) et qui est conçue pour ne pas laisser sortir les clés de chiffrement. Un peu comme avec les Trusted Platform Module.

Un [autre article][2] traitant de ce sujet pour iOS 8 (article moins intéressant car il est plus compliqué de discuter d'un système privateur).

Si vous désirez contrôler ce que les applications envoient sur Internet je vous conseil d'utiliser [orWall][3] avec [orBot][4].

 [1]: http://nelenkov.blogspot.com/2014/10/revisiting-android-disk-encryption.html
 [2]: http://blog.cryptographyengineering.com/2014/10/why-cant-apple-decrypt-your-iphone.html
 [3]: https://orwall.org
 [4]: https://guardianproject.info/apps/orbot
