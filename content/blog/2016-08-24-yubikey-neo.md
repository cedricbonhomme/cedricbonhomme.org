---
title: Yubikey Neo
author: Cédric Bonhomme
type: post
date: 2016-08-24T06:20:38+00:00
tags:
  - cryptography
  - FIDO
  - security
  - U2F
  - Yubikey

---
Ça fait quelque temps maintenant que je teste la Yubikey Neo.
Mon objectif était de renforcer l’authentification à certains services Web.
J’utilise également cette clé pour déverrouiller mon téléphone lorsque je ne suis pas
chez moi, raison pour laquelle j'ai opté pour la Neo qui peut dialoguer via NFC.

Actuellement les services Web me permettant d’utiliser cette clé sont Google, GitLab,
GitHub et Bitbucket. Aussi possible avec WorPress via une extension.
C’est déjà pas mal, mais insuffisant.

Par la même occasion, j’ai décidé d’améliorer ma gestion des mots de passe.
J’utilise maintenant le logiciel [pass](https://www.passwordstore.org).
Mes navigateurs ne contiennent pratiquement plus de mots de passe.
Ce logiciel utilise GPG pour chiffrer vos mots de passe. Du coup, il peut être très
intéressant de
[déplacer votre clé privé sur votre Yubikey](https://developers.yubico.com/PGP/Importing_keys.html).
Les mots de passe gérés par ``pass`` peuvent aussi se trouver dans un dépôt Git, ce qui
est pratique si vous acceptez de stocker ce genre d’information sur des serveurs.

Voilà, pour l’instant je suis fan de Yubikey.
