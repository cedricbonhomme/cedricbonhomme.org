---
title: OpenPhoto, ça y est!
slug: openphoto-ca-y-est
author: Cédric Bonhomme
type: post
date: 2011-10-13T20:07:28+00:00
tags:
  - amazon
  - cloud
  - ES3
  - openphoto
  - photography

---
Je parlais sur [ce billet][1] d'OpenPhoto. Projet bien sympathique mais que je
narrivais pas à faire fonctionner sur AlwaysData. Et bien le dernier _pull_ a
arrangé mes problèmes et mon instance OpenPhoto fonctionne enfin!
C'est par [ici][2].

Comme on le voit, c'est assez simple pour le moment mais il y a tout ce qu'il
me faut. Et comme je lavais expliqué l'API est géniale. Exemple:

```bash
cedric@debian:~$ GET http://photos.cedricbonhomme.org/photo/1/view.json
{"message":"Photo 1","code":200,"result":{"id":"1",
"appId":"openphoto-frontend","host":"cedricbonhomme.org\/photos",
"title":"Sanga","description":"","key":null,
"hash":"bbc977b2f16a9040702bd02c3b1abc229bf76abe",
"size":"5707","width":"4752","height":"3168","views":"0",
"status":"1","permission":"1","license":"CC BY-NC-SA","dateTaken":"1317010841",
"dateTakenDay":"25",
"dateTakenMonth":"9","dateTakenYear":"2011",
"dateUploaded":"1318535165","dateUploadedDay":"13",
"dateUploadedMonth":"10","dateUploadedYear":"2011",
"pathOriginal":"\/original\/201110\/1318535163-20110925T212041.jpg",
"pathBase":"\/base\/201110\/1318535163-20110925T212041.jpg",
"tags":["","2011","September"],"latitude":"","longitude":""}}
```

Voici la [documentation de l'API][3]. 

Pour le moment avec tous les tests déjà effectués sur Amazon AWS ES3 et
simple DB, je n'ai toujours rien payé. Cependant sur le forum d'Amazon j'ai
trouvé [ceci][4]. C'est un peu flippant quand même. Donc actuellement les
photos sont hébergées localement. Il est aussi possible d'utiliser DropBox
(que je n'ai jamais utilisé). Je passerai peut être à Google Storage, car là
au moins on sait qu'on ne peut pas payer plus qu'une certaine somme. Mais bon,
maintenant les migrations ne sont plus un problème. Il est même possible
d'utiliser le stockage local avec Amazon ou le stockage local avec DropBox.
Et même d'avoir la base de données en local avec les photos sur Amazon. Bref,
c'est très souple.

 [1]: {{< ref "/blog/2011-09-02-openphoto.md" >}}
 [2]: http://photos.cedricbonhomme.org
 [3]: https://github.com/openphoto/frontend/tree/fd66b9d28eb083c3612edd2130024bc802c66831/documentation/api
 [4]: https://forums.aws.amazon.com/thread.jspa?threadID=58127
