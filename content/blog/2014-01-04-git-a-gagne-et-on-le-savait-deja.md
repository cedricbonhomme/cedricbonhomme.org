---
title: Git a gagné, et on le savait déjà
skug: git-a-gagne-et-on-le-savait-deja
author: Cédric Bonhomme
type: post
date: 2014-01-04T01:12:50+00:00
categories:
  - FLOSS
tags:
  - bazaar
  - dvcs
  - emacs
  - git
  - mercurial
  - open-source
  - software

---
[Eric S. Raymond][1] pense la même chose que moi à propos de Git et Mercurial,
il semble.

> &#8221;&nbsp;git won the mindshare war. I regret this &#8211; I would have preferred Mercurial, but it too is not looking real healthy these days. I have made my peace with gits victory and switched. I urge the Emacs project to do likewise.&#8221;&nbsp;

[bzr is dying; Emacs needs to move][2], 02 Jan 2014. 

J'avais commencé par apprendre Mercurial (_parce que Python_), puis Git. Je préfère également l'interface utilisateur de Mercurial et trouve Mercurial un peu plus simple d'utilisation. Tout comme _esr_ jaccepte la victoire de Git, qui est indéniablement un excellent DVCS. Techniquement Git a effectivement quelques avantages. Je vois surtout la gestion des branches qui est certainement mieux pensée et la zone de _transit_ (ou _staging_, que l'on peut retrouver avec [DirState][3] en utilisant Mercurial).

Les statistiques Ohloh confirment la victoire de [Git][4] sur [Mercurial][5]. [La décision][6] de léquipe de Bitbucket en 2011 de supporter Git était donc judicieuse afin de sécuriser leur avenir.

Bref, Git semble bien lancé pour écraser toutes concurrences. Ce qui est bien dommage car j'aime la diversité. Je trouve sympa le fait d'utiliser Mercurial pour un projet, Git pour un autre et Bazaar encore pour un autre. Lavenir de Bazaar est très certainement compromis. À un peu plus long terme celui de Mercurial (utilisé par la fondation Python). C'est en partie pour cette raison que [mon activité sur Gitorious][7] augmente depuis quelques temps. Il faut savoir quand il est inutile de s'obstiner.

Le _thread_ &#8220;_bzr is dying; Emacs needs to move_&#8221; de la liste de diffusion emacs-devel montre à quel point un outil comme un système de versionnement a son importance dans le développement d'un logiciel. Le passage à Git est une première étape afin dapporter du sang neuf dans la communauté dEmacs. En 2013/2014 pour un projet open source, avoir un dépôt sur Github est quasiment un prérequis pour son succès. Mais c'est un autre problème à développer.

 [1]: http://esr.ibiblio.org
 [2]: https://lists.gnu.org/archive/html/emacs-devel/2014-01/msg00005.html
 [3]: http://mercurial.selenic.com/wiki/GitConcepts#Git.27s_staging_area
 [4]: https://www.ohloh.net/p/git
 [5]: https://www.ohloh.net/p/mercurial
 [6]: http://blog.bitbucket.org/2011/10/03/bitbucket-now-rocks-git/
 [7]: https://gitorious.org/~cedricbonhomme
