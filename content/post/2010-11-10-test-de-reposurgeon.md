---
title: Test de reposurgeon
author: Cédric Bonhomme
type: post
date: 2010-11-10T22:48:26+00:00
categories:
  - Python
  - Technology
tags:
  - bzr
  - python
  - git
  - hg
  - mercurial
  - reposurgeon

---
Je viens de tester un peu le nouveau projet [reposurgeon][1].
reposurgeon permet de réaliser des opérations risquées non possibles avec les systèmes
de versionnement. Ce qui est génial c'est que reposurgeon gère de manière totalement
transparente Git, Mercurial, bzr et normalement les autres DVCS
(disposant de _fast-export_ et de _fast-import_). Le projet est tout nouveau et il faut
un peu regarder son code pour comprendre. Dans ce billet nous allons:

- charger un dépôt quelconque;
- lister les révisions;
- faire des recherches;
- éditer les commentaires, dates, etc.
- supprimer des _commits_.

Pour Git il n'y a pas de problèmes car fast-export est inclus de base.
Si vous voulez tester avec Mercurial il vous faudra simplement le plug-in hg-fast-export.

Avant de tester réglons ce petit problème pour Mercurial:

- récupérez le plug-in fast-export: git clone git://repo.or.cz/fast-export.git;
- dans le dossier fast-export nous avons uniquement besoin du fichier hg-fast-export.py
  et du fichier h2git.py. Copions les donc dans le dossier de reposurgeon;
- à la ligne 93 de reposurgeon il faut renseigner correctement l'adresse du fichier
  hg-fast-export.py.

Pour vous simplifier la vie vous pouvez aussi renseigner dans votre terminal la variable
$EDITOR avec un éditeur de votre choix. Pourquoi pas vi (ou vim). Je ne vais pas le faire.
Il faudra donc lindiquer à reposurgeon le moment venu.

Voilà nous allons maintenant jouer avec ce super outil avec le dépôt de pyAggr3g470r.

```bash
/reposurgeon-0.5$ ./reposurgeon 
reposurgeon% read pyaggr3g470r
reposurgeon: found hg repository
master: Exporting full revision 1/195 with 6/0/0 added/changed/removed files
master: Exporting simple delta revision 2/195 with 0/2/0 added/changed/removed files
master: Exporting simple delta revision 3/195 with 0/1/0 added/changed/removed files
master: Exporting simple delta revision 4/195 with 0/2/0 added/changed/removed files
master: Exporting simple delta revision 5/195 with 0/2/0 added/changed/removed files
master: Exporting simple delta revision 6/195 with 0/2/0 added/changed/removed files
.
.
.
master: Exporting simple delta revision 189/195 with 0/2/0 added/changed/removed files
master: Exporting simple delta revision 190/195 with 0/1/0 added/changed/removed files
master: Exporting thorough delta revision 191/195 with 0/3/0 added/changed/removed files
master: Exporting simple delta revision 192/195 with 0/4/0 added/changed/removed files
master: Exporting simple delta revision 193/195 with 0/1/0 added/changed/removed files
master: Exporting simple delta revision 194/195 with 0/2/0 added/changed/removed files
master: Exporting simple delta revision 195/195 with 0/2/0 added/changed/removed files
Issued 195 commands
2010-11-10T22:49:28 * pyaggr3g470r

reposurgeon% stats
Repository 'pyaggr3g470r' was read at 2010-11-10T22:49:28
Loaded from pyaggr3g470r
37K, 195 commands, 0 blobs, 195 commits, 0 tags, 0 resets, 195 marks.
Subdirectory: .hg
    Exporter: /home/cedric/telechargement/reposurgeon-0.5/hg-fast-export.py --marks /dev/null --mapping /dev/null --heads /dev/null --status /dev/null --repo .
Export-Style: ('nl-after-commit', 'nl-after-commit', 'export-progress')
 Initializer: hg init
    Importer: hg fastimport %(tempfile)s
    Checkout: hg checkout

reposurgeon% edit :194
reposurgeon: you have not specified an editor and $EDITOR is not set
reposurgeon% edit :194 vim   (entrée en mode édition)
reposurgeon: no events modified.

reposurgeon% list /improvement/
     9 2010-01-31T21:48:09 Added : description of articles. Some improvements.
    11 2010-02-01T09:26:08 Added comments. Some improvements.
    12 2010-02-01T12:44:22 Added a menu to access more faster to feeds and some improvements of the CSS.
    13 2010-02-01T22:05:06 Release 0.4. The main page display only 10 articles by feeds. For each feeds a page present the list of all articles. The SQLite base is smaller than bef
    26 2010-02-09T22:11:56 Little improvement (Possibility to mark all articles as read only by feeds.)
    33 2010-02-23T08:15:08 Minor improvements.
    36 2010-02-24T09:08:06 Added utils.py and lot of improvements.
    53 2010-03-04T21:48:35 Minor improvement. Faster display of description page.
    68 2010-03-23T14:55:55 Minor improvements for the e-mail notification.
    69 2010-03-23T18:54:46 Release 1.0. Mail notification. A lot of improvements and some bug fix.
    70 2010-03-24T09:29:39 Mail notifications are sent through a new thread. Some improvements.
    77 2010-03-26T08:22:06 Some improvements and one bug fix.
    84 2010-04-16T10:49:25 Minor CSS improvements.
    85 2010-04-16T11:25:00 Minor improvement.
    88 2010-04-28T08:11:19 Added tag cloud. Some improvements.
    91 2010-04-29T09:08:26 Minor bug fix and some improvements.
    93 2010-04-29T09:29:34 Release 1.2. Added tag cloud, minor bug fix, CSS improvements.
   103 2010-06-10T09:12:54 Remove a feed from the file feed.lst. Some improvements.
   111 2010-07-02T15:46:29 SQLite improvements.
   122 2010-07-06T09:54:43 Regular expression improvement.
   124 2010-07-07T11:40:31 Lot of performance improvements
   127 2010-07-08T13:24:07 Release 1.6. It is now possible to automatically add a feed (with the URL of the site), delete an article,delete a feed with all its articles and to dele
   133 2010-07-23T12:28:12 Minor improvement when a URL is too long for the QR Code generation.
   136 2010-07-30T08:12:45 Code improvement. 'pylint --max-line-length=200 pyAggr3g470r.py = 8.41/10'
   137 2010-08-25T07:00:56 Configuration file improvement (no need to set the path in the configuration file).
   149 2010-09-06T19:07:35 Minor improvement of the page of unread articles.
   150 2010-09-06T19:12:11 And an other minor improvement…
   187 2010-10-25T17:16:15 Release 2.1. Better export of articles in HTML format. Lot of improvements. New wiki.
   193 2010-11-04T21:43:42 Major improvement of the performance (concerning the management page).
reposurgeon% 

reposurgeon% delete =t & 133..:195
reposurgeon: garbled type mask at 't & 133..:195'

reposurgeon% expunge 195
reposurgeon: at 195, deleting pyAggr3g470r.py
reposurgeon: at 195, deleting utils.py
reposurgeon: deleting blobs and empty commits [195]

reposurgeon% list *master
   193 2010-11-04T21:43:42 Major improvement of the performance (concerning the management page).
   194 2010-11-04T22:24:05 Improvement of the performance (concerning the load of articles from data base in memory).
reposurgeon% 

reposurgeon% edit :194 vim (édition)
reposurgeon: modified events are [194].

reposurgeon% list 194..194
   194 2010-11-04T22:24:05 reposurgeon rocks! 
```

Et voilà. Voyez comme cet outil est simple d'utilisation et vraiment pratique!
Je viens de modifier un ancien commentaire. Jaurais très bien pu modifier la date ou le
nom de la personne ayant _commité_. Testons sur [un dépôt][2] Git:

```bash
/reposurgeon-0.5$ git clone git://gitorious.org/forban/forban.git
Initialized empty Git repository in /home/cedric/telechargement/reposurgeon-0.5/forban/.git/
remote: Counting objects: 941, done.
remote: Compressing objects: 100% (890/890), done.
remote: Total 941 (delta 476), reused 148 (delta 3)
Receiving objects: 100% (941/941), 608.67 KiB | 24 KiB/s, done.
Resolving deltas: 100% (476/476), done.

/reposurgeon-0.5$ ./reposurgeon
reposurgeon% read forban
reposurgeon: found git repository
reposurgeon: from git fast-export -M -C --signed-tags=verbatim --tag-of-filtered-object=drop --all......(0.76 sec) done.
2010-11-10T23:35:23 * forban

reposurgeon% stats
Repository 'forban' was read at 2010-11-10T23:35:23
Loaded from forban
58K, 567 commands, 360 blobs, 183 commits, 19 tags, 5 resets, 543 marks.
Subdirectory: .git
    Exporter: git fast-export -M -C --signed-tags=verbatim --tag-of-filtered-object=drop --all
Export-Style: ('nl-after-commit',)
 Initializer: git init
    Importer: git fast-import
    Checkout: git checkout

reposurgeon% list
.
.
.
   536 2010-11-01T07:54:49 exclude .dotfile from search results
   538 2010-11-01T07:56:12 remove query string output
   540 2010-11-01T14:55:25 dont try to get value when the loot is
   542 2010-11-01T14:58:15 return a default value for the lastseen
   544 2010-11-01T15:05:13 Forban 0.0.22 

reposurgeon% list /bug fix/
   122 2010-01-04T11:20:10 bug fix : ensure that index already exists
   128 2010-01-06T00:12:57 index (bug fix): if index not present and HEAD successful, fetch and save it.
   136 2010-01-13T00:48:21 bug fix in forban_share : do not try to fetch index if the loot was
   188 2010-03-07T16:16:25 opportunistic fetching bug fixed for unseen forban services.
reposurgeon% (seulement 4 ;-) )
```

C'est exactement pareil avec Git. Le chargement est même plus rapide. Normal.
Je pense que reposurgeon va devenir une référence et un outil (déjà) très pratique.
Actuellement reposurgeon est à la version 0.5 et à été annoncé le 1 novembre 2010.
Écrit en Python et constitué d'un seul script, il est déjà très utilisable comme nous
venons de le voir.

 [1]: http://www.catb.org/esr/reposurgeon
 [2]: http://www.gitorious.org/forban/forban
