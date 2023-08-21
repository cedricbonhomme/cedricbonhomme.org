---
title: Export MongoDB
author: Cédric Bonhomme
type: post
date: 2013-02-03T16:51:47+00:00
categories:
  - MongoDB
tags:
  - backup
  - database
  - MongoDB
  - pyAggr3g470r
  - newspipe

---
[Un billet précédent]({{< ref "/blog/2012-09-11-sauvegarde-mongodb.md" >}})
expliquait comment sauvegarder une base de données MongoDB.
Notamment dans le but de sauvegarder la base de [pyAggr3g470r][1].

Nous allons voir maintenant comment exporter une collection au format texte
_via_ la commande [mongoexport][2]. Il faut d'abord savoir que pyAggr3g470r
stocke les articles des flux par collection. Chaque blog ou site de nouvelles
à une collection dédiée. J'utilise donc l'interface Web de pyAggr3g470r afin de
récupérer le nom de la collection des articles de ce blog afin de le passer à
la commande _mongoexport_. Il faut aussi préciser les champs de la collection à
exporter ainsi que le format du résultat (CSV ou JSON). Exemples ci-dessous.

```bash
cedric@debian:~$ mongoexport --db pyaggr3g470r --collection b2a0c2cd5fb8b4743181f7c191746b151a7c709e --csv --fields article_date,article_title,article_content -o export.csv
connected to: 127.0.0.1
exported 318 records
cedric@debian:~$
cedric@debian:~$ mongoexport --db pyaggr3g470r --collection b2a0c2cd5fb8b4743181f7c191746b151a7c709e --fields article_date,article_title,article_content -o export.json
connected to: 127.0.0.1
exported 318 records
```

Et voici [l'export CSV généré][3] contenant tous les articles de ce blog.
Une commande simple et pratique.

 [1]: https://git.sr.ht/~cedric/pyAggr3g470r
 [2]: http://docs.mongodb.org/manual/reference/mongoexport/
 [3]: /files/blog/2013/02/export-blog-cedricbonhomme.csv
