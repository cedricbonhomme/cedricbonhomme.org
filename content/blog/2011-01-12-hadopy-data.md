---
title: HadoPy-Data
author: Cédric Bonhomme
type: post
date: 2011-01-12T16:09:57+00:00
categories:
  - Vie privée
tags:
  - python
  - freedom
  - hadopi

---
![HadoPy-Data](/images/blog/2011/01/hadopi-data_piechart.png)

J'apprends [ici][1] qu'un premier outil libre et open-source existe pour
[Hadopi-Data][2]. Aussitôt je me suis senti obligé de faire un petit script
Python (15 minutes maximum). Le voici:

```python
#! /usr/local/bin/python
#-*- coding: utf-8 -*-

__author__ = "Cedric Bonhomme"
__version__ = "$Revision: 0.1 $"
__date__ = "$Date: 2011/01/12 $"
__license__ = "GPLv3"

import urllib
import pylab

class Temoignage(object):
    def __init__(self):
        self.id = ""
        self.date_courrier = ""
        self.type_courrier = ""
        self.fai = ""
        self.date_collecteIP = ""
        self.musique = ""
        self.film = ""
        self.jeuxvideo = ""

def load_data(xml_file):
    from xml.dom.minidom import parse
    xml = None
    try:
        xml = parse(xml_file)
    except Exception, e:
        print e

    result = []

    for temoignage in xml.getElementsByTagName("temoignage"):
        temoignagne_object = Temoignage()
        temoignagne_object.id = temoignage.getElementsByTagName("id")[0].childNodes[0].nodeValue
        temoignagne_object.date_courrier = temoignage.getElementsByTagName("date_courrier")[0].childNodes[0].nodeValue
        temoignagne_object.type_courrier = temoignage.getElementsByTagName("type_courrier")[0].childNodes[0].nodeValue
        temoignagne_object.fai = temoignage.getElementsByTagName("fai")[0].childNodes[0].nodeValue
        temoignagne_object.date_collecteIP = temoignage.getElementsByTagName("date_collecteIP")[0].childNodes[0].nodeValue
        temoignagne_object.musique = temoignage.getElementsByTagName("musique")[0].childNodes[0].nodeValue
        temoignagne_object.film = temoignage.getElementsByTagName("film")[0].childNodes[0].nodeValue
        temoignagne_object.jeuxvideo = temoignage.getElementsByTagName("jeuxvideo")[0].childNodes[0].nodeValue
        
        result.append(temoignagne_object)
        
    return result


def fai_piechart(temoignages):
    fai = {}
    for temoignage in temoignages:
        if temoignage.fai in fai:
            fai[temoignage.fai] += 1
        else:
            fai[temoignage.fai] = 1
    
    pylab.figure(1, figsize=(6,6))
    ax = pylab.axes([0.1, 0.1, 0.8, 0.8])
    
    labels = fai.keys()
    fracs = fai.values()

    explode = (0,)*len(fracs) # no relief
    pylab.pie(fracs, explode=explode, labels=labels, autopct='%1.0f%%', \
                    shadow=True)
    pylab.title(("HADOPI data - FAI"))

    pylab.show()

if __name__ == "__main__":
    urllib.urlretrieve("http://www.hadopi-data.fr/export.xml", "./export.xml")
    temoignages = load_data("./export.xml")
    fai_piechart(temoignages)
```

Il télécharge le fichier XML, le charge dans une liste dobjets de témoignagnes
et pour l'instant crée ce _piechart_. On peut faire encore pleins d'autres
graphes (histogrammes, Circos, etc.) en utilisant les autres données. Il suffit
d'ajouter une fonction à chaque fois. Bon ce n'est pas optimisé, _but it works!_

 [1]: http://www.numerama.com/magazine/17766-un-premier-outil-libre-et-open-source-pour-hadopi-data.html
 [2]: http://www.hadopi-data.fr
