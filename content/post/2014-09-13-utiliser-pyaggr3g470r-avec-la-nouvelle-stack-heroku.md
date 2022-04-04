---
title: Utiliser pyAggr3g470r avec la nouvelle stack Heroku
slug: utiliser-pyaggr3g470r-avec-la-nouvelle-stack-heroku
author: Cédric Bonhomme
type: post
date: 2014-09-13T09:49:01+00:00
categories:
  - Programming
tags:
  - python
  - Heroku
  - pyAggr3g470r
  - newspipe

---
Évidemment [pyAggr3g470r][1] fonctionne avec la nouvelle [stack Cedar-14][2] (basée sur Ubuntu 14.04).  
Voici comment mettre à jour votre instance:

```bash
$ heroku stack:set cedar-14
Stack set. Next release on pyaggr3g470r will use cedar-14.
Run `git push heroku master` to create a new release on cedar-14.

$ git commit --allow-empty -m "Upgrading to Cedar-14"
[master 203eef6] Upgrading to Cedar-14

$ git push heroku master
Enter passphrase for key '/home/cedric/.ssh/id_rsa': 
Fetching repository, done.
Counting objects: 1, done.
Writing objects: 100% (1/1), 200 bytes | 0 bytes/s, done.
Total 1 (delta 0), reused 0 (delta 0)

-----> Python app detected
-----> Stack changed, re-installing runtime
-----> Installing runtime (python-2.7.7)
-----> Installing dependencies with pip
.
.
.
-----> Discovering process types
       Procfile declares types -> init, web

-----> Compressing… done, 46.6MB
-----> Launching… done, v283
       http://pyaggr3g470r.herokuapp.com/ deployed to Heroku

To git@heroku.com:pyaggr3g470r.git
   a4f7e8c..203eef6  master -> master
```

C'est aussi simple que ça. Vous trouverez plus d'information [ici][3].

Vous pouvez tester pyAggr3g470r et me faire des retours:

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy?template=https://git.sr.ht/~cedric/pyAggr3g470r)

 [1]: https://git.sr.ht/~cedric/pyAggr3g470r
 [2]: https://devcenter.heroku.com/articles/cedar-ubuntu-packages
 [3]: https://devcenter.heroku.com/articles/cedar-14-migration