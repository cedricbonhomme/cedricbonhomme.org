---
title: Identité contextuelle avec Firefox
slug: identite-contextuelle-avec-firefox
author: Cédric Bonhomme
type: post
date: 2017-05-17T06:34:11+00:00
categories:
  - Privacy
tags:
  - browser
  - firefox
  - privacy

---
Vous connaissez peut-être [Firefox Test Pilot](https://testpilot.firefox.com).
Le programme qui permet de tester des fonctionnalités expérimentales dans
Firefox via une extension. Et bien je viens seulement de découvrir
(sur [Mastodon](https://mastodon.social/@carlchenet/6183450)) les
[conteneurs](https://testpilot.firefox.com/experiments/containers/). L’objectif
est de
[contextualiser votre identité](https://wiki.mozilla.org/Security/Contextual_Identity_Project/Containers)
en fonction de l’activité que vous avez, sur un tel ou un autre site Web.
Typiquement vous aurez un conteneur pour le travail, un conteneur pour les
achats en ligne (Amazon, etc.), un conteneur pour le Web social (Twitter, etc.)
et un conteneur pour le surf de manière générale.

Pour moi l’usage le plus intéressant est la séparation des activités d’achats en
ligne et des activités liées au Web social. Bien que je suis déjà
[assez protégé](https://wiki.cedricbonhomme.org/security:privacy) de ce côté.
Pour nombre de personne, il peut être assez difficile de complètement séparer
l’identité privée et l’identité professionnelle. Pour ma part cela a même très
peu d’intérêt.

Des tentatives dans cette direction avaient déjà été réalisées chez Mozilla,
comme avec les _Tab groups_ ou avec différentes extensions
([priv8](https://addons.mozilla.org/de/firefox/addon/priv8)). Les containers
sont une alternative plus ambitieuse puisqu’il ne s’agit pas simplement de fair
des groupes d’onglets mais bien de séparer les états de chaque conteneur
(cookies, localStorage, indexedDB, HTTP data cache,
[etc.](https://wiki.mozilla.org/Security/Contextual_Identity_Project/Containers#Implementation_Details)). Ainsi, vous pourriez donc vous connecter à un compte Google personnel et à un
compte Google professionnel en même temps avec le même navigateur. Je trouve
que cette solution est un bon compromis par rapport à des solutions existantes,
allant de l’isolation de VM (avec Qubes OS) à de l’isolation de processus du
navigateur. C’est aussi assez simple d’usage pour l’utilisateur l’ambda, à
condition qu’il comprenne bien pourquoi contextualiser son identité.
