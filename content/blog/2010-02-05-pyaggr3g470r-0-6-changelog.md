---
title: pyAggr3g470r 0.6 – Changelog
slug: pyaggr3g470r-0-6-changelog
author: Cédric Bonhomme
type: post
date: 2010-02-05T21:11:46+00:00
tags:
  - cherrypy
  - python
  - feedparser
  - pyaggr3g470r
  - newspipe
categories:
  - Programming

---
Et voilà la version 0.6 de [pyAggr3g470r](https://git.sr.ht/~cedric/pyAggr3g470r).
Principales modifications:

- les articles non lus sont affichés en gras (et ajout dans la base d'un champ pour distinguer les articles lus de ceux qui ne le sont pas);
- le menu de droite indique maintenant pour chaque flux le nombre d'articles total ainsi que le nombre d'articles non lus;
- pour chaque flux, la page principale présente les 10 derniers articles;
- évidemment pour chaque flux on peut voir la liste de tout les articles (en cliquant sur &#8220;All articles&#8221;);
- cliquer sur le nombre d'articles non lus dans le menu de droite (ou à gauche quand il y a des articles non lus) permet de voir uniquement les articles non lus;
- cliquer sur un article ouvre sa description dans un nouvel onglet, avec à la fin de la description un lien vers l'article original. L'ouverture dans un nouvel onglet est accompagnée de lattribut _rel=&#8221;noreferrer&#8221;_. Avec cet attribut Chrome est forcé de créer un nouveau processus. Ce qui devrait être automatique quand on consulte l'article original étant donné que le domaine n'est plus le même. Cette fonctionalité devrait arriver dans un certain temps sur Firefox;
- correction de deux bugs stupides.

Je pense que maintenant on peut agréablement l'utiliser avec pas mal de flux. En tout cas avec une trentaine de flux c'est encore utilisable. Et la base SQLite ne devient pas trop grosse (environ 2 Mo pour 500 articles dans 23 flux).  aKregator utilise quand même plus de un giga octet de sauvegarde sur mon disque. Ce sera encore mieux avec la recherche sur le contenu des descriptions 😉
