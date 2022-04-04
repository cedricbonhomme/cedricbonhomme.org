---
title: Stegano and the Free Software Song
slug: stegano-and-the-free-software-song
author: Cédric Bonhomme
type: post
date: 2010-10-06T13:28:39+00:00
tags:
  - python
  - music
  - steganography

---
```bash
git clone https://git.sr.ht/~cedric/stegano
cd stegano
wget http://www.gnu.org/music/free-software-song.ogg
./lsb-s.py --hide -i ./pictures/Montenach.png -o ./pictures/Montenach_enc.png -f ./free-software-song.ogg
rm free-software-song.ogg
./lsb-s.py --reveal -i ./pictures/Montenach_enc.png -b ./cool-song.ogg
```

Ceci seulement pour annoncer qu'une ligne de commande est disponible (avec
d'autres améliorations).
Et nhésitez pas à cacher cette fabuleuse chanson dans toutes vos images.
