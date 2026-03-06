---
title: Client Oauth Python pour l’API OpenPhoto
slug: client-oauth-python-pour-lapi-openphoto
author: Cédric Bonhomme
type: post
date: 2011-10-29T12:41:08+00:00
categories:
  - Photography
  - Programming
tags:
  - api
  - python
  - json
  - oauth
  - openphoto
  - photography

---
Comme [ce dépôt][1] est désespérément vide, je me suis dit que je devais faire un petit client Oauth OpenPhoto en Python. Le client PHP est déjà disponible, Java semble en cours de développement. Le plus beau reste donc à faire. J'aurai même le droit de _commiter_ mon code sur le dépôt officiel 😉 Pour le moment le client n'est pas terminé. Cependant il est déjà possible de faire des choses intéressantes. Voici quelques exemples:

```python
import client

def average_focal_length(photos):
    """
    Return the average focal length of a list photos given in parameter.
    """
    photos = [photo[1] for photo in json.loads(result).viewitems() if photo[0] == 'result'][0]
    list_photo = [photo['exifFocalLength'] for photo in photos if 'exifFocalLength' in photo]
    return sum(list_photo) / len(list_photo)

def retrieve_original_photos(result, path='pathOriginal'):
    """
    Retrieve the photos given in parameter.
    If 'path' is set to 'pathOriginal' the original photos will be downloaded.
    """
    photos = [photo[1] for photo in json.loads(result).viewitems() if photo[0] == 'result'][0]
    for photo in photos:
        original_photo_url = 'http://' + photo['host'] + photo[path]
        print original_photo_url
        filein = urllib2.urlopen(original_photo_url)
        image = filein.read()
        filein.close()
        fileout = open(photo['hash']+".jpg",'w+b')
        fileout.write(image)
        fileout.close()


if __name__ == "__main__":
    oauth = client.Client()
    
    # List of photos taken in Ireland
    result = oauth.make_request(token, \
        'http://photos.cedricbonhomme.org/photos/tags-ireland/list.json', 'GET')
    
    # Retrieve the original photos
    retrieve_original_photos(result)

    # Retrieve resized photos
    retrieve_original_photos(result, 'pathBase')
  
    # Get the average focal length used in Ireland.
    print average_focal_length(result)
```

Comme on peut le constater on voit qu'en important le client Python on pourra développer
pleins de petits scripts sur quelques lignes de codes.

Je sais, certains me diront qu'il est possible de faire ça à coup de _grep_ et _awk_,
genre:

```bash
GET http://photos.cedricbonhomme.org/photos/tags-ireland/list.json | tr ',{' '\n' | grep -i Original
```

Mais voilà, je trouve la syntaxe de Python très esthétique (sans compter qu'avec _POST_ ce sera tout de suite autre chose en ligne de commande 😉 ).

 [1]: https://github.com/openphoto/openphoto-python
