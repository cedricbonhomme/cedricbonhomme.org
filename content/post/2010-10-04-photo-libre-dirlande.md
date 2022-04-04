---
title: Photo libre d’Irlande
slug: photo-libre-dirlande
author: Cédric Bonhomme
type: post
date: 2010-10-04T19:04:40+00:00
series: ["Steganography"]
tags:
  - python
  - Ireland
  - photography
  - steganography
  - stegano

---
Petite pause avec la stéganalyse pour tester quelque chose d'un peu différent.

```python
import urllib
import base64
from PIL import Image

def bs(s):
    """
    Converts an int to its bits representation as a string of 0's and 1's.
    """
    return str(s) if s<=1 else bs(s>>1) + str(s&1)

def reveal(img):
    """
    Find a message in an image
    (with the LSB technique).
    """
    width, height = img.size
    bits = ""
    for row in range(height):
        for col in range(width):
            r, g, b = img.getpixel((col, row))
            bits += bs(r)[-1] + bs(g)[-1] + bs(b)[-1]
            if int(bits[-8:], 2) == 126:
                list_of_string_bits = ["".join(list(bits[i:(i+8)])) for i in range(0, len(bits)-8, 8)]
                list_of_character = [chr(int(elem, 2)) for elem in list_of_string_bits]
                return "".join(list_of_character)
    return ""

if __name__ == '__main__':
    # Point of entry in execution mode
    urllib.urlretrieve("https://cedricbonhomme.org/images/blog/2014/08/surprise.png", "./surprise.png")
    img = Image.open("./surprise.png")
    surprise = reveal(img)
    data = base64.b64decode(surprise)
    with open("./surprise", "w") as f:
        f.write(data)
```

Le décodage pourra prendre deux ou trois minutes.
Une fois le script terminé, faites un petit **file ./surprise**.
Et vous saurez déjà quoi en faire.

Tout ce que je peux vous dire. _15 Mo is enough!_ Largement!

Le fichier téléchargé est une photo] sous licence
[Creative Commons][1]. Nous dirons donc que ce fichier peut être partagé.

 [1]: http://creativecommons.org/licenses/by-sa/3.0/