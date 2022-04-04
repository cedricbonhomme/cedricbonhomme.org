---
title: Module de manipulation d’URL de Python 3
author: Cédric Bonhomme
type: post
date: 2013-01-24T21:14:22+00:00
categories:
  - Programming
  - Python
tags:
  - python
  - openphoto

---
Avez-vous remarqué que le module [urllib][1] de Python 3 a été découpé en plusieurs parties? Par la même occasion [urllib2][2] a même disparu. C'est une très bonne chose, c'est encore plus simple comme ça. Il y a même un module pour _parser_ [les fichiers robots.txt][3].

Comme nous aimons [OpenPhoto][4] nous allons illustrer rapidement comment utiliser _urllib_ pour télécharger une ressource Web et par la même occasion présenter le module [json][5]. Le script ci-dessous permet donc de télécharger toutes les photos d'une instance OpenPhoto et des les archiver (oui nous allons aussi utiliser le module [tarfile][6] 😉 ). Voyez comme tout est simple avec Python:

```python
#! /usr/bin/env python
#-*- coding: utf-8 -*-

import urllib.request
import json
import os
import tarfile

url = "http://photos.cedricbonhomme.org/"
print("Retrieving the list of photos…")
html = urllib.request.urlopen(url+"photos/list.json?pageSize=1000")
text = html.read()
photos = json.loads(text.decode())

tar = tarfile.open("cedric-photos.tar.gz", "w:gz")

for idx, photo in enumerate(photos["result"]):
    try:
        path  = photo["pathOriginal"]
    except:
        path = photo["pathBase"]
    print("Downloading", path, "…")
    filein = urllib.request.urlopen(path)
    name = photo["filenameOriginal"]
    image = filein.read()
    filein.close()
    fileout = open(name,'w+b')
    fileout.write(image)
    fileout.close()

    print("Archiving", name)
    tar.add(name)

    os.unlink(name)

print(str(len(photos["result"])) + " photos archived.")
tar.close()
```

 [1]: http://docs.python.org/3/library/urllib.html
 [2]: http://docs.python.org/2/library/urllib2.html
 [3]: http://docs.python.org/3/library/urllib.robotparser.html#module-urllib.robotparser
 [4]: https://openphoto.me/
 [5]: http://docs.python.org/3/library/json.html
 [6]: http://docs.python.org/3/library/tarfile.html
