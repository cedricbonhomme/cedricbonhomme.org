---
title: Une nouvelle version majeure de pyAggr3g470r pointe son nez
slug: une-nouvelle-version-majeure-de-pyaggr3g470r-pointe-son-nez
author: Cédric Bonhomme
type: post
date: 2015-07-17T05:40:07+00:00
categories:
  - Programming
tags:
  - python
  - pyAggr3g470r

---
[pyAggr3g470r][1] a vraiment bien évolué ces dernières semaines. Ceci grâce à dexcellentes contributions. Je dois dire que je suis très content de la tournure de ce projet. Il a atteint un très bon niveau de maturité avec une base de code bien structurée et solide. Et par-dessus tout, il s'agit d'un projet avec des contributions externes conséquentes.

Bref, listons ci-dessous les changements les plus notables.

## Les filtres

La grosse nouveauté. Il est maintenant possible de créer des filtres sur les flux. La capture suivante illustre bien la fonctionnalité. Vous pouvez définir une correspondance (exacte ou avec des expressions régulières) entre une chaîne et le contenu d'un article. Si il y a correspondance au moment de la récupération du nouvel article du flux en question, l'article sera par exemple automatiquement marqué en tant que favori.

[<img loading="lazy" src="/images/blog/2015/07/feed-filters.png" alt="feed-filters" width="1920" height="1080" class="aligncenter size-full wp-image-7323" srcset="/images/blog/2015/07/feed-filters.png 1920w, /images/blog/2015/07/feed-filters 300w, /images/blog/2015/07/feed-filters 1024w" sizes="(max-width: 1920px) 100vw, 1920px" />][2]

## Lajout de flux

Lajout de flux est maintenant possible en fournissant l'adresse du flux ou du site. Dans le dernier cas pyAggr3g470r se chargera de trouver le flux automatiquement, lorsque c'est possible. Le [bookmarklet][3] fonctionne de la même manière (et utilise le même code en fait). Vous pouvez donc _bookmarker_ une page Web quelconque.

[<img loading="lazy" src="/images/blog/2015/07/add-a-feed.png" alt="add-a-feed" width="286" height="124" class="aligncenter size-full wp-image-7321" />][4]

## La recherche

La recherche est maintenant vraiment bien intégrée avec le reste. Elle prend en compte le flux courant (ou l'ensemble des flux), l'onglet courant (Tous les articles, Lus et Non lus) ainsi que le nombre maximum d'articles à afficher sur la page.

[<img loading="lazy" src="/images/blog/2015/07/search.png" alt="search" width="1920" height="1080" class="aligncenter size-full wp-image-7324" srcset="/images/blog/2015/07/search.png 1920w, /images/blog/2015/07/search 300w, /images/blog/2015/07/search 1024w" sizes="(max-width: 1920px) 100vw, 1920px" />][5]

## Les favoris

Le style de la page des favoris est également mieux intégré. Vous pouvez constater que les diverses listes de l'interface peuvent être triées sur les différentes colonnes.

Les _favicons_ des flux sont récupérés. Par soucis de respect de la vie privée de lutilisateur, pyAggr3g470r stock les _favicons_ dans sa base de données.

[<img loading="lazy" src="/images/blog/2015/07/favorites.png" alt="favorites" width="1920" height="1080" class="aligncenter size-full wp-image-7322" srcset="/images/blog/2015/07/favorites.png 1920w, /images/blog/2015/07/favorites 300w, /images/blog/2015/07/favorites 1024w" sizes="(max-width: 1920px) 100vw, 1920px" />][6]

Voilà, et je ne parlerai pas ici de toutes les améliorations du code (notamment du _crawler_ client qui utilise l'API).

 [1]: https://bitbucket.org/cedricbonhomme/pyaggr3g470
 [2]: /images/blog/2015/07/feed-filters.png
 [3]: https://pyaggr3g470r.herokuapp.com/about
 [4]: /images/blog/2015/07/add-a-feed.png
 [5]: /images/blog/2015/07/search.png
 [6]: /images/blog/2015/07/favorites.png