---
title: Archive du blog Dive Into Mark
author: Cédric Bonhomme
type: post
date: 2013-02-10T08:45:01+00:00
categories:
  - blog
  - Privacy
  - Web
tags:
  - archives
  - diveintomark
  - infosuicide
  - Mark_Pilgrim

---
[Dive Into Mark][1] était un blog que j'aimais lire. Mark Pilgrim y publiait des billets intéressants et très bien écrits. Malheureusement depuis sa [disparition du Web le 4 octobre 2011][2] il est assez compliqué de retrouver les articles de son blog publiés depuis 2002. Il est possible de trouver quelques archives sur Github mais rien d’exhaustif à ma connaissance.

Aujourd'hui je suis assez content car j'ai pu récupérer dans ma base de nouvelles des articles du blog _Dive Into Mark_ remontant au 18 octobre 2004. Les articles se trouvent à [cette adresse][3], il y en a 321.

Vous pouvez également télécharger tous [les articles au format JSON][4]. J'ai utilisé la commande ci-dessous afin d'obtenir un résultat aisément exploitable programmatiquement.

```bash
$ mongoexport --db pyaggr3g470r --collection 39f95ebadcce51a9c14cacc9457c1f93fba28eb5 --fields article_date,article_title,article_content,article_link -o DiveIntoMark.json
```

 [1]: http://en.wikipedia.org/wiki/Mark_Pilgrim_(software_developer)
 [2]: {{< ref "/post/2011-10-05-infosuicide-de-mark-pilgrim.md" >}} "Infosuicide de Mark Pilgrim"
 [3]: https://www.newspipe.org/feed/public/24
 [4]: /files/blog/2013/02/DiveIntoMark.json_.tar.gz
