---
title: Une configuration d’actualité pour votre client Tor
slug: une-configuration-dactualite-pour-votre-client-tor
author: Cédric Bonhomme
type: post
date: 2015-05-08T05:59:08+00:00
categories:
  - Privacy
tags:
  - Privacy
  - Tor

---
```cfg
ExcludeExitNodes {fr}, {fx}, {gf}, {pf}, {tf}
```

Je vous conseil d'ajouter cette ligne dans votre fichier **torrc**.
Éviter les noeuds de sortie est suffisant.
Il est par contre inutile et même déconseillé déviter les noeuds relais
(afin de ne pas limiter les possibilités de circuits).
