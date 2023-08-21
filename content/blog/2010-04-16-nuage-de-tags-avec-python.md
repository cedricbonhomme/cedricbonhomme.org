---
title: Nuage de tags avec Python
slug: nuage-de-tags-avec-python
author: Cédric Bonhomme
type: post
date: 2010-04-16T12:51:12+00:00
tags:
  - python
  - pyAggr3g470r
  - newspipe

---
Rien de plus simple:

```python
def tag_cloud(tags):
    """
    Generates a tags cloud.
    """
    tags.sort(lambda x,y: cmp(x[0], y[0]))
    return ' '.join([('<font size="%d"><a href="/q/?querystring=%s">%s</a></font>' % \
                    (min(1+p*7/max([tag[1] for tag in tags]), 7), x, x)) for (x, p) in tags])
```

Le paramètre _tags_ de la fonction est une liste ayant le format
[("linux", 42), ("python", 37), …] et que l'on peut
facilement obtenir par exemple avec cette [petite fonction][1].

 [1]: https://git.sr.ht/~cedric/pyAggr3g470r/tree/master/item/pyaggr3g470r/utils.py#L297
