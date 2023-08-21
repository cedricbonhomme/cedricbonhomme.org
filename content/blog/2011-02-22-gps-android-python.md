---
title: 'GPS, Android & Python'
slug: gps-android-python
author: Cédric Bonhomme
type: post
date: 2011-02-22T22:30:11+00:00
tags:
  - Android
  - python
  - gps
  - sl4a

---
Au lieu de [récupérer les données GPS d’Android en temps réel][1] via Bluetooth en
utilisant un _freeware_ du _market_ pourquoi ne pas directement demander au téléphone ?
Et cela avec Python.

```python
import android, time
droid = android.Android()

droid.startLocating()
time.sleep(10)

while True:
    l = droid.readLocation().result

    # provider = network or GPS
    latitude = l['network']['latitude']
    longitude = l['network']['longitude']

    print latitude, longitude

    time.sleep(10)
```

Ce script est totalement fonctionnel. On pourrait afficher encore pleins d'autres
informations, comme laltitude ou la vitesse. On voit qu'il faut d'abord vérifier le
_provider_, c'est-à-dire si les informations proviennent du GPS ou du réseau.
Pour certaines applications demandant moins de précision, pour aller plus vite on peut
utiliser la méthode **android.getlastknownlocation()**, par exemple pour récupérer la
météo à partir des coordonnées avec le module **weather**.

Cela me donne une idée de mini projet. J'écrirai bien quelques mini serveurs
(en C, Perl et Python) ainsi qu'un petit client comme celui-ci en Python. Le serveur
avec une clé publique, le client une clé privée. Et vous me voyez venir.
En plus ça fonctionnerai très bien avec mon hébergement actuel ;-).
Et plus besoin de Google Latitude.

 [1]: {{< ref "/blog/2011-02-17-recuperer-les-donnees-gps-dandroid-en-temps-reel.md" >}}
