---
title: Version 6.3 de pyAggr3g470r
slug: version-6-3-de-pyaggr3g470r
author: Cédric Bonhomme
type: post
date: 2015-03-08T17:15:27+00:00
categories:
  - Programming
tags:
  - python
  - pyAggr3g470r
  - newspipe

---
![pyAggr3g470r-fetch-error](/images/blog/2015/03/pyAggr3g470r-fetch-error.png)

La version 6.3 de pyAggr3g470r est officiellement sortie.
Voici le [changelog][1]. Un grand merci au contributeur à l'origine de
cette nouvelle version.

Parmi les nouveautés majeures nous avons un nouveau _crawler_ qui tire parti de
l'API RESTful. Il peut donc être exécuté par le client et insérer les nouveaux
articles sur la plateforme.

Les erreurs lors de la récupération des flux sont maintenant comptées et le flux
est désactivé à partir de la troisième erreur (voir la capture décran).

 [1]: https://git.sr.ht/~cedric/pyAggr3g470r/tree/c217114639e3a5d60de287462413615839a3e159/item/NEWS.rst
