---
title: Balloon prend de la hauteur
author: Cédric Bonhomme
type: post
date: 2011-10-09T18:32:31+00:00
categories:
  - Programming
  - Python
tags:
  - balloon
  - python
  - dvcs
  - git
  - hg
  - mercurial

---
Depuis [sa création][1] quelques modifications apportés à [Balloon][2] le rendent déjà plus utilisable et moins _bêta_ (il y a maintenant simplement un fichier de configuration à éditer). Une des améliorations majeures réside dans le fait que les _push_ ne sont plus réalisés systématiquement après un _commit_. Balloon attend qu'une série de _commits_ soit réalisée avant d'exécuter un _push_ vers le serveur. Après quelques tests Balloon fonctionne plutôt bien (j'ai testé avec des fichiers textes et images de quelques méga-octets). Mais il y a encore du travail.

Lorsque le code sera un peu plus stable et mieux pensé, je n'aurai plus qu'à écrire la classe GitSync (à linstar de HgSync) pour gérer les dépôts Git. En effet à terme Balloon pourra synchroniser plusieurs dossiers locaux (avec une racine différente) que ce soient des dossiers versionnés avec Git ou Mercurial.

Une des dernières étapes sera lécriture d'un _watcher_ pour Windows. Oui ce système dispose d'un noyau un peu primitif, ce n'est pas ma faute. [inotify][3] ne semble pas y être implémenté.  
Pour le moment Balloon réagit aux événements: **IN_CREATE**, **IN_DELETE**, **IN_MODIFY**, **IN\_MOVED\_FROM** et **IN\_MOVED\_TO**. Pour la liste complète des événements voyez ce fichier: _/usr/include/sys/inotify.h_.

 [1]: https://www.cedricbonhomme.org/2011/10/03/balloon/
 [2]: https://hg.sr.ht/~cedric/balloon
 [3]: http://en.wikipedia.org/wiki/Inotify
