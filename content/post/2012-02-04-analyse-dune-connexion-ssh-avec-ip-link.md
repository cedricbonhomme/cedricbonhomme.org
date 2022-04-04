---
title: Analyse d’une connexion SSH avec IP-Link
slug: analyse-dune-connexion-ssh-avec-ip-link
author: Cédric Bonhomme
type: post
date: 2012-02-04T08:43:20+00:00
categories:
  - Security
  - Visualization
tags:
  - bezier
  - python
  - IP-Link
  - visualization

---
![Bezier curve](/images/blog/2012/02/circle-4.png)

Le module expérimental de génération de [courbes de Bézier][1] fait maison est enfin
intégré à [IP-Link][2]. L'image ci-dessus représente l'établissement d'une connexion
SSH. Il y a donc les relations entre les ports de deux IP. Initialement IP-Link
permettait uniquement d'établir des relations entre IP. On obtenait des oeuvres de
[ce style][3]. Grâce aux communications entre les ports vous pourrez dorénavant avoir
des figures bien plus artistiques (ci-dessous avec un scan de port):

![medium port scan](/images/blog/2012/02/medium-port-scan.jpg)

Comment analyser une connexion SSH avec IP-Link:

```bash
$ git clone https://git.sr.ht/~cedric/ip-link
$ cd ip-link/source
$ mkdir captures data

$ sudo tcpdump -p -i eth0 -s 0 -w captures/snif.pcap

$ python reloaded/pcap_to_sqlite.py -i captures/snif.pcap -o data/ip.sql

$ python reloaded/sqlite_to_object.py -i data/ip.sql -o data/ip.pyobj -r ip -p 192.168.1.13:87.98.168.93
DB connect
Query sent to the base :
        SELECT ip_src, ip_dst, port_src, port_dst FROM ip_link 
        WHERE (ip_src = "192.168.1.13" AND ip_dst = "87.98.168.93")
           OR (ip_src = "87.98.168.93" AND ip_dst = "192.168.1.13")
Serialization…

$ python reloaded/object_to_image.py -i data/ip.pyobj -o data/circle-4.png
```

Le fichier obtenu _circle-4.png_ devrait ressembler à la première image de ce billet.

 [1]: http://fr.wikipedia.org/wiki/Courbe_de_Bézier
 [2]: http://ip-link.wikidot.com
 [3]: http://ip-link.wikidot.com/gallery
