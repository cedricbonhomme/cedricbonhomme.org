---
title: Confiance envers les CA
author: Cédric Bonhomme
type: post
date: 2011-03-23T17:01:37+00:00
categories:
  - Security
tags:
  - CA
  - certificate
  - infosec
  - Security
  - x509

---
En tout cas [Mozilla (commit 63436: change to handling of bad certificate)][1] et [Google (commit 78478: Blacklist certain leaf certificates)][2] semblent bien ne plus faire confiance au model CA. Chez Mozilla comme chez Google on décide de rajouter des listes noires. Cette méthode (nétant en fait qu'une simple parade, et ne fait quéviter un problème important) consistant à coder en dur la liste des numéros de série des CA montre que la situation est critique. Pour preuve le rapport de [bug de Mozilla][3] a un accès restreint (pratique également adopté par Mandriva et critiquée).

Si vous voulez plus d'informations, voici un [excellent billet][4].

 [1]: http://hg.mozilla.org/mozilla-central/rev/f6215eef2276
 [2]: http://src.chromium.org/viewvc/chrome/trunk/src/net/base/x509_certificate.cc?view=markup&pathrev=78478
 [3]: https://bugzilla.mozilla.org/show_bug.cgi?id=643056
 [4]: https://blog.torproject.org/blog/detecting-certificate-authority-compromises-and-web-browser-collusion