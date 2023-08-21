---
title: House Of Cards
author: Cédric Bonhomme
type: post
date: 2014-12-15T19:02:14+00:00
tags:
  - lidar
  - processing
  - Radiohead
  - visualization

---
Une boucle `for` avec [Processing][1] et un fichier CSV. Voici le résultat.

![House Of Cards](/images/blog/2014/12/HouseOfCards.png)

Cette rue vous dit quelque chose?

Il s'agit d'[une scène][2], tournée en Floride, de la vidéo de
[House Of Cards][3] de Radiohead et réalisée avec la technologie [Lidar][4].
Et figurez vous que c'est [Toby Segaran][5], l'auteur de [Beautiful Data][6] qui
a travaillé sur cette vidéo.

Lidar est souvent utilisé pour analyser des terrains. Par exemple, les robots
envoyés sur Mars en sont généralement équipés. Il s'agit dimpulsions de lumière
laser (_laser beam_), 2 500 impulsions de lumière par seconde (dans le proche
infrarouge). La voiture de Google utilise (ou utilisait, je n'ai pas vérifié
récemment) un Lidar. Ne vous gênez surtout pas pour men offrir [un][7] pour Noël.

Il est également possible d'utiliser Python avec Processing. Je viens d'adapter
le programme original permettant de générer une animation du visage de Thom
Yorke. Voyez le résultat.

![House Of Cards 1](/images/blog/2014/12/HouseOfCards1.png)

Et ci-dessous le code.

```python
# 1. Download CSV points cloud data of Thom Yorke here:
#     https://code.google.com/p/radiohead/downloads/list
#     (original implementation)
# 2. Add Python mode to Processing
# 3. Load this file (or paste the contents of this file
#     into Processing and save to a name and location of your choosing)   
# 4. If it doesnt exist, create a folder called "data" 
#     inside the sketch folder.
# 5. Extract all animation CSV files into "data" folder (2101 files total)
# 6. Press play and enjoy.
#

frameCounter = 1

def setup():
    size(1024,768, OPENGL)
    strokeWeight(1)

def draw():
    global frameCounter
    # We'll use a black background
    background(0)
    # The data has 0,0,0 at the center and we want to draw that point at the center of our screen
    translate(width/2, height/2)
    # Lets adjust our center slightly
    translate(-150, -150)
    # Lets draw things bigger
    scale(2)

    raws = loadStrings(str(frameCounter)+".csv")
    for raw in raws:
        x, y, z, intensity = [float(elem) for elem in raw.split(',')]
        stroke(intensity*1.1, intensity*1.6, 200, 255)
        line(x,y,z,x+1,y+1,z+1)

    frameCounter += 1

    if frameCounter > 2101:
        exit()
        print "done"
```

 [1]: https://www.processing.org
 [2]: https://www.youtube.com/watch?feature=player_detailpage&v=8nTFjVm9sTQ#t=163
 [3]: https://en.wikipedia.org/wiki/House_of_Cards_(Radiohead_song)
 [4]: https://en.wikipedia.org/wiki/Lidar
 [5]: https://plus.google.com/+TobySegaran
 [6]: http://www.amazon.com/dp/0596157118
 [7]: http://velodynelidar.com
