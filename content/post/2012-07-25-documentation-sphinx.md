---
title: Documentation Sphinx
author: Cédric Bonhomme
type: post
date: 2012-07-25T15:34:23+00:00
categories:
  - Programming
tags:
  - python
  - documentation
  - sphinx

---
Si vous utilisez [Sphinx][1] (par exemple) pour générer la documentation de vos projets, je vous conseil d'utiliser [Read the Docs][2]. Ce service permet de générer des documentations (HTML, PDF, EPUB, etc.) pour les projets utilisants des DVCS (Hg, Git, Bazaar, etc.) et qui comprennent les sources de leur documentation. En gros c'est comme si un service Web soccupait de générer vos _.tex_ (hébergés sur un dépôt Git ou Mercurial) en PDF.

Je viens de tester avec la [documentation de Stegano][3]. [Voici][4] la documentation au format PDF. Le résultat est aussi plutôt sympa pour la [documentation dIP-Link][5]. Je pourrais aussi héberger la documentation sur mon serveur. Mais avec ce service l'avantage est que je n'ai qu'à modifier les sources de la documentation (fichiers _*.rst_) et de faire un _push_ sur le dépôt, ici Bitbucket. Ensuite le service _Read the Docs_ soccupe de générer la documentation.

 [1]: http://sphinx.pocoo.org/
 [2]: http://readthedocs.org/
 [3]: http://stegano.readthedocs.org/
 [4]: http://media.readthedocs.org/pdf/stegano/latest/stegano.pdf
 [5]: http://ip-link.readthedocs.org/