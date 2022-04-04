---
title: Évolutions récentes de pyAggr3g470r
slug: evolutions-recentes-de-pyaggr3g470r
author: Cédric Bonhomme
type: post
date: 2015-05-03T22:48:06+00:00
categories:
  - Programming
tags:
  - python
  - pyAggr3g470r
  - newspipe

---
pyAggr3g470r évolue vraiment bien ces derniers temps.

L'interface est maintenant plus homogène et plus rationnelle.
Les articles favoris sont affichés sur la page principale ainsi que les
résultats des recherches (avec le même _template_). Les différents filtres et
tris peuvent ainsi être appliqués à ces vues.  
Le menu principal a aussi été simplifié.

Cependant l'essentiel des évolutions réside dans les couches inférieures comme
les _controllers_, l'API, la recherche (qui fonctionne maintenant sur Heroku),
les deux _crawlers_ (je rappel que pyAggr3g470r dispose d'un _crawler_ pouvant
être exécuté par le client et tirant parti de l'API de pyAggr3g470r).  
Le module responsable de charger les variables de configurations a également
largement été amélioré.  
Dorénavant un flux de nouvelles qui rencontrera 6 erreurs consécutives de
récupération sera automatiquement désactivé. Évidemment l'utilisateur a la
possibilité de le réactiver.

Merci au contributeur sans qui pyAggr3g470r n'aurait pu bénéficier de toutes ces
améliorations.

Vous pouvez [tester](https://pyaggr3g470r.herokuapp.com/signup) les évolutions.
