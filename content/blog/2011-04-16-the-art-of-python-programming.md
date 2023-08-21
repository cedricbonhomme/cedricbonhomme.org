---
title: The Art of Python Programming
author: Cédric Bonhomme
type: post
date: 2011-04-16T20:53:25+00:00
categories:
  - Programming
  - Python
tags:
  - python
  - forban
  - P2P

---
Un titre peut-être un peu trop prétentieux pour annoncer la sortie de pyAggr3g470r 2.7 ([infomations de _release_][1] pour les détails) et de Stegano 0.3 ([informations de _release_][2] pour les détails). Il est maintenant possible dinstaller Stegano comme un module Python classique.

Sinon j'ai une toute petite idée derrière la tête qui pourrait permettre de partager et déditer collaborativement des fichiers .bib (avec le papier éventuellement associé) via un réseau pair-à-pair en utilisant [Forban][3]. Je pense que Forban ferait très bien l'affaire, je lutilise tous les jours avec quelques gigaoctets de fichiers. Les fichiers (.pdf, etc) ainsi que les fichiers .bib associés seraient partagés au travers des différents noeuds (par exemple en mode opportuniste).

<div align="center">
  <a href="/images/blog/2011/04/forban-bib.png"><img loading="lazy" src="/images/blog/2011/04/forban-bib.png" alt="forban-bib" title="forban-bib" width="723" height="278" /></a>
</div>

Voici un prototype. Il y a un filtre au niveau de l'interface sur les .bib, seules les publications sont visibles (cependant même les .bib sont échangés sur le réseau). Un lien permet de créer/éditer automatiquement un .bib (conférence, journal, etc.) et un autre lien de le récupérer (on n'est pas forcément en mode opportuniste). Il y a donc laspect collaboratif (au départ il peut y avoir uniquement des papiers, puis des personnes commencent à créer des .bib) et laspect distribué (tout le monde a tout et les mises à jours des .bib sont répendues sur les autres noeuds). Lédition pourra être [assisté avec BibSonomy][4].

Si un jour _The Art of Python Programming_ est publié, je sais où sera sa place en tout cas. Pour le moment c'est Kleinberg.

 [1]: http://freshmeat.net/projects/pyaggr3g470r/releases/330953
 [2]: http://freshmeat.net/projects/stgan/releases/330952
 [3]: http://www.foo.be/forban/
 [4]: http://www.bibsonomy.org/bibtex/24e08e571ffc3f4b75af9aec69fb3b540/jaeschke