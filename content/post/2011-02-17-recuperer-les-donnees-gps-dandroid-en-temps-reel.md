---
title: Récupérer les données GPS d’Android en temps réel
slug: recuperer-les-donnees-gps-dandroid-en-temps-reel
author: Cédric Bonhomme
type: post
date: 2011-02-17T20:54:29+00:00
categories:
  - Technology
tags:
  - Android
  - bluetooth
  - python
  - garmin
  - gps

---
Un moyen sympa d'exploiter le GPS de votre _smartphone_ Android (Garmin ou autre
d'ailleurs) est d'enregistrer une session de votre parcours au format [GPX][1], de
l'exporter au format [NMEA][2], puis d'utiliser [gpsfake][3] afin de simuler un GPS
connecté sur votre ordinateur. _gpsfake_ va alors ouvrir un _pty_ et envoyer les trames
NMEA à une instance du serveur _gpsd_ (lancé par _gpsfake_) qui "pensera" qu'un véritable
GPS est connecté en série. À partir de là il est très facile de récupérer les trames NMEA.
Cool, on a l'impression que c'est en direct mais ce n'est que de la "rediffusion".

Le but ici est de récupérer sur l'ordinateur votre position géographique en utilisant le
GPS d'Android, en temps réel. Pour cela il vous faudra une application sur votre
_smartphone_ pour envoyer les trames [NMEA][4] via Bluetooth. Il en existe plusieurs
gratuites. [Celle-ci][5] fera l'affaire. Activez le Bluetooth sur le téléphone et lancez
l'application.

Ensuite, il suffit d'exécuter le script ci-dessous. Nous gardons uniquement les trames
GPRMC (exemple: ``$GPRMC,123519,A,4807.038,N,01131.000,E,022.4,084.4,230394,003.1,W*6A``)
qui contiennent les informations sur la position actuelle, la vitesse en noeud, etc.

```python
import bluetooth
def get_nmea_data():
    # bluetooth address of the GPS device.
    addr = "00:22:A5:90:11:19"

    # create a socket and connect to it.
    for i in range(1,50):
        # HACK
        try:
            socket = bluetooth.BluetoothSocket(bluetooth.RFCOMM)
            socket.connect((addr, i))
            break
        except:
            pass

    data, olddata = "", ""
    latitude, longitude = "", ""

    while True:
        data = socket.recv(1024)
        if len(data) > 0:
            # append the old data to the front of data.
            data = olddata + data

            # split the data into a list of lines, but make
            # sure we preserve the end of line information.
            lines = data.splitlines(1)

            # iterate over each line
            for line in lines:
                # if the line has a carriage return and a
                # linefeed, we know we have a complete line so
                # we can remove those characters and print it.
                if line.find("\r\n") != -1 :
                    line = line.strip()
                    # empty the olddata variable now we have
                    # used the data.
                    olddata = ""

                # else we need to keep the line to add to data
                else :
                    olddata = line

            gpsstring = line.split(',')
            if gpsstring[0] == '$GPRMC' :
                latitude =  gpsstring[3] + gpsstring[4]
                longitude = gpsstring[5] + gpsstring[5]

        yield latitude + ":" + longitude

if __name__ == "__main__":
    for i in get_nmea_data():
        print i
```

Ce [billet][6] ma beaucoup aidé pour la connexion Bluetooth, bien que j'ai toujours
quelques problèmes (d'où le "brute force"&#8221;" de la connexion pour le port). Comme
on le voit la fonction utilise **yield**. Ce qui fait que l'on peut itérer indéfiniment
(boucle **for** dans le _main_) sur les données qui arrivent en flux continue.

Je trouve ça plutôt marrant et bien pratique. Le prochain billet expliquera comment
fixer correctement son PC portable sur le tableau de bord de la voiture avec votre GPS
(Garmin, Android, etc.) pour épater les gendarmes.

 [1]: http://en.wikipedia.org/wiki/GPS_eXchange_Format
 [2]: http://www.gpsinformation.org/dale/nmea.htm
 [3]: http://linux.die.net/man/1/gpsfake
 [4]: http://en.wikipedia.org/wiki/NMEA_0183
 [5]: http://androgeoid.com/2010/10/android-bluetooth-gps-transmitter-app-bluetooth-gps-output/
 [6]: http://www.robertprice.co.uk/robblog/archive/2007/1/Using_A_Bluetooth_GPS_From_Python.shtml
