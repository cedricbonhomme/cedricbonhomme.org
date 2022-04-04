---
title: Premier test de la brique EV3 avec Python
slug: premier-test-de-la-brique-ev3-avec-python
author: Cédric Bonhomme
type: post
date: 2014-12-13T22:17:53+00:00
tags:
  - python
  - ev3
  - mindstorms

---
Voici un simple exemple de programme pour la [brique EV3][1] des Lego
Mindstorms. Pour tester il faudra utiliser la distribution [ev3dev][2].

```python
#! /usr/bin/env python
# -*- coding: utf-8 -*-

#
# Avoids obstacles with the infrared sensor.
#

import time

from ev3.lego import LargeMotor
from ev3.lego import TouchSensor
from ev3.lego import InfraredSensor

LEFT = LargeMotor(port=LargeMotor.PORT.B)
RIGHT = LargeMotor(port=LargeMotor.PORT.C)

button = TouchSensor()
ir_sensor = InfraredSensor()

distance = 30

def start_stop():
    while True:
        time.sleep(1)
        if button.is_pushed:
            print "starting…"
            walk()

def walk():
    while True:
        time.sleep(1)
        if button.is_pushed:
            print "stopping…"
            LEFT.stop()
            RIGHT.stop()
            break

        if ir_sensor.prox <= distance:
            print "obstacle detected"

            LEFT.stop()
            RIGHT.stop()

            LEFT.run_forever(100, regulation_mode=False)
            time.sleep(5)
            LEFT.stop()

        LEFT.run_forever(100, regulation_mode=False)
        RIGHT.run_forever(100, regulation_mode=False)

if __name__ == "__main__":
    # Point of entry in execution mode
    start_stop()

    LEFT.stop()
    RIGHT.stop()
```

Malheureusement c'est terminé pour ce soir. Les piles sont vides…

 [1]: https://en.wikipedia.org/wiki/Lego_Mindstorms_EV3
 [2]: http://www.ev3dev.org