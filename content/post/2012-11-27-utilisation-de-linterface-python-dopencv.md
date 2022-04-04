---
title: Utilisation de l’interface Python d’OpenCV
slug: utilisation-de-linterface-python-dopencv
author: Cédric Bonhomme
type: post
date: 2012-11-26T23:13:58+00:00
tags:
  - python
  - OpenCV

---
{{< peertube peertube.co.uk q3kU9ZWPzNnyykvVzGG9Xk >}}

Ce soir petits tests (un peu idiots) d'[OpenCV][1] avec Python.
L'API Python est vraiment simple à utiliser et la détection est fluide
(même avec plusieurs visages).

On peut voir que sur la vidéo je bouge assez rapidement et le carré reste bien sur mon
visage. Je peux méloigner jusqu'à environ 4 mètres en utilisant une simple webcam.
Ça me donne envie de tester avec le Raspberry Pi pour faire un système de détection
d'intrusions.

Le code:

```python
#! /usr/bin/env python
#-*- coding: utf-8 -*-

# Python binding for OpenCV
import cv

HAAR_CASCADE_PATH = "/usr/share/opencv/haarcascades/haarcascade_frontalface_alt.xml"
CAMERA_INDEX = -1
WINDOW_NAME = "Real time face detection with Python and OpenCV"

def detect_faces(image):
    """
    Detect face(s) in an image.
    """
    faces = []
    detected = cv.HaarDetectObjects(image, cascade, storage, 1.2, 2, \
                                    cv.CV_HAAR_DO_CANNY_PRUNING, (100,100))
    if detected:
        for (x,y,w,h),n in detected:
            faces.append((x,y,w,h))
    return faces

if __name__ == "__main__":
    # Point of entry in execution mode
    cv.NamedWindow(WINDOW_NAME, cv.CV_WINDOW_AUTOSIZE)
    cam = cv.CaptureFromCAM(CAMERA_INDEX)
    storage = cv.CreateMemStorage()
    cascade = cv.Load(HAAR_CASCADE_PATH)
    faces = []
    while True:
        feed = cv.QueryFrame(cam)
        cv.WaitKey(20)

        faces = detect_faces(feed)

        for (x,y,w,h) in faces:
            cv.Rectangle(feed, (x,y), (x+w,y+h), 255)

        cv.ShowImage(WINDOW_NAME, feed)
```

C'est dingue ce qu'on peut faire avec une API Python sans même comprendre les
algorithmes utilisés.

 [1]: http://opencv.willowgarage.com/wiki/
