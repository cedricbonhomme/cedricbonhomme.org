---
title: pyAggr3g470r dans les nuages
author: Cédric Bonhomme
type: post
date: 2012-09-20T06:10:37+00:00
tags:
  - amazon
  - cloud
  - ec2
  - pyAggr3g470r
  - newspipe

---
Tu veux tester une version de [pyAggr3g470r][1] avec près de 40.000 articles
dans les nuages? C'est par ici:

```bash
python -c "print __import__('base64').b64decode('aHR0cDovL2VjMi0xMDctMjItNi02MS5jb21wdXRlLTEuYW1hem9uYXdzLmNvbToxMjU1Ng==')"
```

Attention les ressources ne sont pas vraiment… élastiques.

 [1]: https://git.sr.ht/~cedric/pyAggr3g470r