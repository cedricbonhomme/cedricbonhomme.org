---
title: Détection de langues avec Python
slug: detection-de-langues-avec-python
author: Cédric Bonhomme
type: post
date: 2010-02-28T17:01:44+00:00
categories:
  - Python
tags:
  - python
  - language
  - pyAggr3g470r
  - newspipe
  - soundex

---
Ce billet a simplement pour but de présenter le module Python
[oice.langdet](http://pypi.python.org/pypi/oice.langdet/) sous
licence GPL v3. Ce module permet de détecter la langue d'un texte (Anglais,
Espagnol et Français). Comme vous pouvez le voir en suivant le lien
précédent il est vraiment simple d'utilisation et les résultats sontassez bons.
Je me suis dit que je pouvais tester ce module avec pyAggr3g470r sur la
description des articles. Et en effet les résultats sont plutôt satisfaisants.
Sur 684 articles le module trouve 332 articles en anglais et 166 en français
avec peu derreurs. Il faut préciser que pour diverses raisons (notamment de
performances) je passe à l'algorithme uniquement les 80 premiers caractères.
De plus certains articles nont pas de descriptions ou alors des descriptions
exotiques du type mot clés…

Grâce à cela je vais maintenant pouvoir utiliser cette
[implémentation des soundex](http://www-lium.univ-lemans.fr/~carlier/recherche/soundex.html)
après avoir détecté la langue (afin d'avoir les codes caractères appropriés).
De cette manière je pourrais rechercher les mots phonétiquement et ainsi éviter
de comptabiliser par exemple les mots _libre_ et _libres_
séparément.

Donc cet article aura présenté deux choses intéressantes !
