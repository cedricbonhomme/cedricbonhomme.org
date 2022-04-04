---
title: Une nouvelle fonctionnalité pour Newspipe
slug: une-nouvelle-fonctionnalite-pour-newspipe
author: Cédric Bonhomme
type: post
date: 2017-05-24T21:39:11+00:00
categories:
  - Programming
tags:
  - bookmark
  - news
  - newspipe
  - pinboard
  - pyAggr3g470r
  - Web

---
[Newspipe](https://www.newspipe.org) propose une nouvelle fonctionnalité:
la gestion de marque-pages. J’utilise depuis des années l’excellent service
[Pinboard](https://pinboard.in) pour gérer mes marque-pages. Aujourd’hui je ne
prétends surtout pas le remplacer, mais je pense que cette fonctionnalité a bien
sa place dans Newspipe.

Comme vous pouvez le constater sur la capture ci-dessous, tous les marque-pages
que je conserve depuis des années sur Pinboard sont maintenant sur Newspipe.
Il est en effet possible d’importer un fichier d’export JSON de Pinboard.
Pratiquement toutes les données sont récupérées (je me suis inspiré de
[ce schéma de données](https://static.pinboard.in/schema.htm)).

![Newspipe - bookmarks](/images/blog/2017/05/Screenshot_20170524_231152.png)

Un _bookmarklet_ est également disponible afin de rapidement marquer une page Web.

Il sera également bientôt possible de marquer une page Web provenant d’un
article récupéré via un flux RSS/ATOM. Cette fonctionnalité fera un peu doublon
avec le fait d’ajouter un article aux favoris. Mais la gestion des marque-pages
va au-delà de la gestion des flux RSS/ATOM.
