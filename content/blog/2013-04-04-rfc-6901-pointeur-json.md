---
title: 'RFC 6901: Pointeur JSON'
slug: rfc-6901-pointeur-json
author: Cédric Bonhomme
type: post
date: 2013-04-04T07:33:51+00:00
categories:
  - Internet
  - Python
  - Web
tags:
  - python
  - json
  - rfc

---
J'ai découvert [ce RFC][1] sur le [blog de Stéphane Bortzmeyer][2]. Un RFC plutôt intéressant qui spécifie une syntaxe afin d'accéder à un élément JSON depuis lextérieur (une URI par exemple).

Ce que je veux surtout présenter c'est [l'implémentation Python][3] de ce RFC:

```python
>>> import json
>>> import jsonpointer
>>> import urllib.request
>>> request_answer = urllib.request.urlopen("http://api.traintimes.im/locations.json?location=WMOR&date=2013-04-14&startTime=1200").read()
>>> doc = json.loads(request_answer.decode())
>>> jsonpointer.resolve_pointer(doc,'/services/1/destination/description')
'Buxton'
>>> jsonpointer.resolve_pointer(doc,'/services/0/destination/description')
'Manchester Piccadilly'
>>> jsonpointer.resolve_pointer(doc,'/services/2/destination/description')
'Hazel Grove'
```

Voilà. Un RFC tout neuf. Un beau module Python qui va avec.

 [1]: https://www.rfc-editor.org/rfc/rfc6901.txt
 [2]: http://www.bortzmeyer.org/6901.html
 [3]: https://github.com/stefankoegl/python-json-pointer.git