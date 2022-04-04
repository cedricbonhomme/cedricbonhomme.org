---
title: pyAggr3g470r – Notification par mail
slug: pyaggr3g470r-notification-par-mail
author: Cédric Bonhomme
type: post
date: 2010-03-22T21:34:47+00:00
categories:
  - Python
tags:
  - python
  - feedparser
  - pyAggr3g470r
  - newspipe

---
Et voilà, comme déjà expliqué ici, aujourd'hui le trajet de train était un peu long…

Ainsi, j'ai eu l'occasion d'implémenter une fonctionalité assez sympa pour
[pyAggr3g470r][1], directement inspirée d'[ici][2].
Il est donc maintenant possible d'être alerté par courrier
électronique de l'arrivée de nouveaux articles. Bien sûr afin ne pas être spammé
par pyAggr3g470r, pour qu'il vous envoie un mail à chaque nouvel article il
faut que vous vous abonniez à un flux. Ce qui ce fait en cliquant simplement
sur _Stay tuned_. Pour ne plus recevoir de notifications pour un flux, cliquez
sur _Stop staying tuned_.

La configuration est très simple, il suffit de mettre son adresse de courrier
électronique dans le fichier de configuration.
Il est même possible d'y configurer l'adresse du serveur SMTP (facultatif).

 [1]: https://git.sr.ht/~cedric/pyAggr3g470r
 [2]: https://newspipe.sourceforge.net
