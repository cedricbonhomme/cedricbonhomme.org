---
title: pyAggr3g470r 0.8 – Changelog
author: Cédric Bonhomme
type: post
date: 2010-02-24T21:33:26+00:00
tags:
  - CherryPy
  - python
  - feedparser
  - pyAggr3g470r
  - newspipe

---
Et voilà la version 0.8 de [pyAggr3g470r](https://git.sr.ht/~cedric/pyAggr3g470r).
Principales modifications:

- la base est plus petite (moins de redondances). Bien qu'elle était déjà assez
  petite (environ 3Mo pour plus de 1200 articles, maintenant bien moins);
- la recherche fonctionne mieux (les balises HTML sont filtrées avec une
  expression régulière…);
- il est possible de partager un article sur delicious, reddit, Digg, Scoopeo et
  Blogmarks très simplement;
- la page de gestion présente des informations sur la base ainsi que des
  statistiques sur les mots (avec un histogramme en utilisant
  [matplotlib](https://matplotlib.org)). Cette page permettra aussi d'ajouter
  des flux avec une adresse d'un site.

On ma proposé aujourd'hui d'afficher les images des flux
(comme des _favicons_) en me disant qu'elles sont disponibles dans les flux.
J'ai vérifié et en effet il est possible de trouver ces images
(ou leur adresses). Seulement je me rends compte que peu de flux utilisent cette
fonctionnalité. Du coup je pense que des agrégateurs comme aKregator utilisent
plutôt les _favicons_.
