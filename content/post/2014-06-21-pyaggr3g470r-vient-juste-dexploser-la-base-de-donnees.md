---
title: pyAggr3g470r vient juste d’exploser la base de données
slug: pyaggr3g470r-vient-juste-dexploser-la-base-de-donnees
author: Cédric Bonhomme
type: post
date: 2014-06-21T06:05:41+00:00
tags:
  - heroku
  - pyAggr3g470r
  - newspipe

---
Et c'est une très bonne nouvelle.
Nouvelle qui ma été transmise cette nuit par une alerte de Heroku concernant
l'application [pyAggr3g470r][1]. Voici un extrait.

> The database HEROKU\_POSTGRESQL\_CYAN_URL on Heroku app pyaggr3g470r has exceeded its allocated storage capacity. Immediate action is required.
> 
> The database contains 15,115 rows, exceeding the Dev plan limit of 10,000. INSERT privileges to the database will be automatically revoked in 7 days. This will cause service failures in most applications dependent on this database.

Il y a donc bien des personnes qui utilisent le service. Je suis également content de
voir que le service Heroku n'a pas bloqué l'application et laisse même fonctionner la
base durant 7 jours. Ainsi malgré cette alerte l'équipe de pyAggr3g470r a pu
continuer à dormir tranquillement.

Je viens donc juste de transférer la base vers une nouvelle.
Et il faut dire que cette opération est plutôt simple à réaliser grâce au client, voyez:

```bash
$ heroku addons:add pgbackups
$ heroku addons:add heroku-postgresql:hobby-basic
$ heroku maintenance:on
$ heroku pgbackups:transfer HEROKU_POSTGRESQL_GOLD_URL
$ heroku pg:promote HEROKU_POSTGRESQL_GOLD_URL
$ heroku maintenance:off
$ heroku addons:remove HEROKU_POSTGRESQL_CYAN_URL
```

Pour le moment aucune action particulière supplémentaire sera réalisée.
Toutefois je songe à mettre en place un plan payant (via Bitcoin de préférence) pour
les utilisateurs qui dépasseront un certain seuil.

 [1]: https://pyaggr3g470r.herokuapp.com
