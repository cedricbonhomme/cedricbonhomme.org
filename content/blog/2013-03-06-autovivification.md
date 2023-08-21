---
title: Autovivification
slug: autovivification
author: Cédric Bonhomme
type: post
date: 2013-03-06T09:59:34+00:00
categories:
  - Programming
tags:
  - autovivification
  - python
  - programming

---
Je peux enfin mettre un terme sur une _astuce_ Python que j'utilise depuis déjà
longtemps: l'[Autovivification](https://en.wikipedia.org/wiki/Autovivification).

```python
from collections import defaultdict

def tree():
    return defaultdict(tree)

IP = tree()
IP['212.110.251.3']['212.112.245.2'] = 451
```
