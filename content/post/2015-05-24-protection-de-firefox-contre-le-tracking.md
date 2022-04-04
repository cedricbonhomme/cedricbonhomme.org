---
title: Protection de Firefox contre le tracking
author: Cédric Bonhomme
type: post
date: 2015-05-24T13:12:48+00:00
categories:
  - Privacy
  - Security
tags:
  - Firefox
  - mozilla
  - Privacy
  - Security

---
Je viens de découvrir une nouvelle option de Firefox aujourd'hui: [privacy.trackingprotection.enabled][1]. Avec cette variable fixée à `true` Firefox bloquera les _trackers_ connus (la liste est initialement basée sur la liste de [Disconnect][2]). J'en ai profité pour mettre à jour ma [liste de conseils][3].

Si il y a quelque chose que j'aime avec Firefox, c'est bien ceci. Même si les récentes décisions de Mozilla sont quelque peu décevantes (évidemment je pense surtout au [Digital Rights Management][4]), ce navigateur reste est un des meilleurs pour les personnes qui veulent pouvoir profiter d'un Web moderne tout en faisant attention à leur vie privée. 

Je me demande si je dois également bloquer certains domaines comme expliqué [ici][5]. Dans mon fichier `/etc/hosts` j'avais déjà ajouté la ligne: `127.0.0.1 productsearch.ubuntu.com` après une installation dUbuntu (c'était pour tester, je n'utilise pas cette distribution).  
Vous pouvez aussi utiliser l'onglet `about:networking` afin de trouver d'autres domaines à bloquer. En même temps, japprends que mon navigateur se connecte à `ocsp.luxtrust.lu`. [OCSP][6], encore un truc cool avec ce navigateur.

 [1]: https://support.mozilla.org/en-US/kb/tracking-protection-firefox
 [2]: https://disconnect.me
 [3]: https://wiki.cedricbonhomme.org/security:privacy
 [4]: https://blog.mozilla.org/blog/2015/05/12/update-on-digital-rights-management-and-firefox/
 [5]: https://news.ycombinator.com/item?id=9592438
 [6]: https://en.wikipedia.org/wiki/OCSP