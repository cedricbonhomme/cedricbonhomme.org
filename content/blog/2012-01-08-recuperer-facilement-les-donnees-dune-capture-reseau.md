---
title: Récupérer facilement les données d’une capture réseau
slug: recuperer-facilement-les-donnees-dune-capture-reseau
author: Cédric Bonhomme
type: post
date: 2012-01-08T09:25:24+00:00
tags:
  - python
  - datagram
  - ip
  - network
  - tcpdump
  - tcpflow

---
Suite à une discussion sur le forum de l[AFPY][1] j'ai voulu écrire un petit script dont
le but est de reconstruire les données d'une capture réseau.
J'ai premièrement pensé à utiliser [IP-Link][2].
Cependant avec [cette fonction dIP-Link][3] (par exemple) il faudrait réassembler les
datagrammes dans l'ordre, extraire les données (uniquement la partie data du
dictionnaire) et enfin les concaténer pour obtenir le fichier.

Bref, ça peut faire perdre du temps un dimanche matin. Surtout que y a piscine.

J'ai donc utilisé tcpflow ainsi qu'un script vraiment bête. Voilà:

```bash
# On lance une capture réseau sur un shell
$ sudo tcpdump -i eth0 -s 0 -w dump.cap port 80

# Sur un autre on télécharge un PDF
$ wget www.python.org/doc/essays/ppt/lwnyc2002/intro22.pdf

$ tcpflow -r dump.cap

$ ls -l *192*
-rw-rw-r-- 1 cedric cedric 1667904 2012-01-08 09:53 082.094.164.162.00080-192.168.001.013.36033
-rw-rw-r-- 1 cedric cedric     148 2012-01-08 09:53 192.168.001.013.36033-082.094.164.162.00080 
```

Le super script (_reconstruct-data.py_) qui va simplement regarder le type du fichier et garder le contenu du fichier téléchargé:

```python
with open("082.094.164.162.00080-192.168.001.013.36033" , "rb") as flow:
    data = flow.readlines()

i = 0
for line in data:
    i += 1
    if "Content-Type" in line:
        file_type = line.split("/")[1]

        with open("result."+file_type, "w") as result:
            result.write("".join(data[i+1:]))
            exit()
```

C'est moche.

```bash
$ reconstruct-data.py

$ sha1sum result.pdf intro22.pdf 
20547681871702179773a4291d94960bdcfdb040  result.pdf
20547681871702179773a4291d94960bdcfdb040  intro22.pdf 
```

Mais ça fonctionne!

 [1]: http://www.afpy.org
 [2]: https://sr.ht/~cedric/ip-link
 [3]: https://git.sr.ht/~cedric/ip-link/tree/master/item/ip-link/pcap_to_object.py#L31
