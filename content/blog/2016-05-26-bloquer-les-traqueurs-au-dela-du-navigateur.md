---
title: Bloquer les traqueurs au-delà du navigateur
slug: bloquer-les-traqueurs-au-dela-du-navigateur
author: Cédric Bonhomme
type: post
date: 2016-05-26T06:39:49+00:00
categories:
  - Privacy
tags:
  - privacy
  - security
  - web

---
Voici une partie de mon fichier `/etc/hosts`.
Je teste cette configuration depuis quelque temps :

```cfg
0.0.0.0 productsearch.ubuntu.com
0.0.0.0 185.63.252.44
0.0.0.0 google.ru
0.0.0.0 192.168.0.3
0.0.0.0 doubleclick.net
0.0.0.0 googlesyndication.com
0.0.0.0 googleadservices.com
0.0.0.0 google-analytics.com
0.0.0.0 ads.youtube.com
0.0.0.0 adserver.yahoo.com
0.0.0.0 amazonaws.com
0.0.0.0 akamaitechnologies.com
```

Elle est disponible comme d’habitude à [cette page][1] qui donne quelques
conseils afin de conserver un peu d’anonymat sur le Web. Vous pouvez me proposer
des adresses à ajouter.

 [1]: https://wiki.cedricbonhomme.org/security:privacy#etc_hosts