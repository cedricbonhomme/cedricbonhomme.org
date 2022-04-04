---
title: Sauvegarde MongoDB
slug: sauvegarde-mongodb
author: Cédric Bonhomme
type: post
date: 2012-09-11T07:52:31+00:00
tags:
  - backup
  - database
  - MongoDB
  - pyAggr3g470r
  - newspipe

---
Disons que vous voulez sauvegarder la base de données utilisée par
[pyAggr3g470r][1]. Comment faire? Où sont stockés tous vos articles?  
Ici:

```bash
cedric@debian:~$ ls -lh /var/lib/mongodb/pyaggr3g470r.*
-rw------- 1 mongodb nogroup  64M Sep 11 09:17 /var/lib/mongodb/pyaggr3g470r.0
-rw------- 1 mongodb nogroup 128M Sep 11 09:17 /var/lib/mongodb/pyaggr3g470r.1
-rw------- 1 mongodb nogroup 256M May  2 11:47 /var/lib/mongodb/pyaggr3g470r.2
-rw------- 1 mongodb nogroup  16M Sep 11 09:15 /var/lib/mongodb/pyaggr3g470r.ns
```

Comment réaliser simplement une sauvegarde de toutes ces données:

```bash
cedric@debian:~$ su
debian:/home/cedric# /etc/init.d/mongodb stop
debian:/home/cedric# cp /var/lib/mongodb/pyaggr3g470r.* ~
```

Il s'agit de la méthode la plus simple (veuillez bien à stopper le service
_mongodb_).

 [1]: https://git.sr.ht/~cedric/pyAggr3g470r