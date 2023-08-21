---
title: Analyser votre activité réseau
slug: analyser-votre-activite-reseau
author: Cédric Bonhomme
type: post
date: 2009-03-17T13:13:37+00:00
tags:
  - pcap
  - python
  - network
  - ip-link

---
[IP-Link](https://git.sr.ht/~cedric/ip-link) vous permet d'analyser facilement
votre activité réseau :

```bash
debian:/home/cedric/IP-Link/source# tcpdump -p -i any -s 0 -w captures/snif.pcap
tcpdump: listening on eth0, link-type EN10MB (Ethernet), capture size 65535 bytes
^C1549 packets captured
1549 packets received by filter
0 packets dropped by kernel

cedric@debian:~/IP-Link/source$ python pcap_to_object1.py
captures/snif.pcap /data/dic.pyobj
Création de l'objet…
Sérialisation…
cedric@debian:~/IP-Link/source$ python object_to_graphviz.py
Arguments par défaut :
        Fichier objet : ./data/dic.pyobj
        Fichier GraphViz : ./data/ip.gv
Chargement du dictionnaire…
Création du fichier au format DOT pour GraphViz…
Enregistrement du fichier.
Visualisez le résultat :
        dotty ./data/ip.gv
```

Voilà ce qu'il se passe chez moi lorsque j'utilise mon agrégateur :

![Akregator](/images/blog/2017/02/akregator.png)

Et en relevant mes mails :

![Mail](/images/blog/2017/02/pop.png)
