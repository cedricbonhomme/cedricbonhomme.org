---
title: Mercurial et SSH
author: Cédric Bonhomme
type: post
date: 2011-11-18T19:48:11+00:00
categories:
  - Security
tags:
  - git
  - hg
  - Security
  - ssh

---
[Un billet][1] bien utile qui me permet enfin de faire mes _push_ en SSH.
J'en ai perdu du temps sur ce problème. Alors qu'il fallait juste faire ça:

```bash
hg clone ssh://username@ssh.alwaysdata.com//home/username/depot-de-test
```

Je peux maitenant pratiquement tout faire via la console SSH.
Sauf poster ce billet. J'aimerai bien remplacer WordPress par un logiciel de
Blog basé sur Git. Je pourrai <del datetime="2011-11-18T19:34:06+00:00">pusher</del>
publier un billet avec Git+SSH. Il faudrait tester des logiciels de [ce genre][2].
La ligne de commande est bien supérieure à ces interfaces à la noix de coco
toutes moches et même pas sécurisées.

 [1]: https://jehaisleprintemps.net/blog/fr/2009/05/10/mercurial-et-ssh-le-piege-eviter/
 [2]: https://github.com/elliottcable/git-blog
