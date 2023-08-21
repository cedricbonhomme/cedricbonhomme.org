---
title: Plasmoïde pour KDE4 avec Python
slug: plasmoide-pour-kde4-avec-python
author: Cédric Bonhomme
type: post
date: 2010-01-23T00:51:38+00:00
categories:
  - Linux
tags:
  - KDE
  - Linux
  - python

---
Cet article va expliquer comment créer un simple plasmoïde avec Python pour KDE.

Ce plasmoïde va tout simplement afficher des [fortunes][1] en boucle.
Il faut donc avoir installer ce programme indispensable
(au cas où: ```aptitude install fortune```).

La version utilisée de KDE est la 4.3.90 avec Python 2.6.4. Il faudra également:

- SIP ;
- PyQt4.

Tout était déjà installé chez moi.

Passons à l'essentiel, le développement du plasmoïde. C'est très simple. On va d'abord créer un répertoire ayant cette structure:

```
* fortune-viewer/ 
  * contents/ 
    * code/ 
        * main.py
    * ui/
  * metadata.desktop
```

### Contenu de metadata.desktop

```ini
[Desktop Entry]
Encoding=UTF-8
Name=Fortune viewer
Name[fr]=Visualisateur de fortunes
Type=Service
ServiceTypes=Plasma/Applet
Icon=chronometer
X-Plasma-API=python
X-Plasma-MainScript=code/main.py
X-KDE-PluginInfo-Author=Cédric Bonhomme
X-KDE-PluginInfo-Email=cedric.bonhomme@orange.fr
X-KDE-PluginInfo-Name=fortune-viewer
X-KDE-PluginInfo-Version=0.1
X-KDE-PluginInfo-Website=http://plasma.kde.org/
X-KDE-PluginInfo-Category=Game
X-KDE-PluginInfo-Depends=Fortune
X-KDE-PluginInfo-License=GPLv3
X-KDE-PluginInfo-EnabledByDefault=true
```

Voilà, je pense  qu'il n'y a rien a expliquer. Nous allons voir le code à
proprement parler du fichier **main.py**.
Il pourrait y avoir d'autres scripts Python évidemment.
Dans ce tout petit exemple le dossier **ui/** est inutile. On peut donc s'en
passer.


### Contenu de main.py

```python
# -*- coding: utf-8 -*-
from PyQt4.QtCore import *
from PyQt4.QtGui import *
from PyKDE4.plasma import Plasma
from PyKDE4 import plasmascript
import subprocess

class FortuneViewer(plasmascript.Applet):
    def __init__(self,parent,args=None):
        plasmascript.Applet.__init__(self,parent)

    def init(self):
        timer = QTimer(self);
        self.setHasConfigurationInterface(False)

        self.theme = Plasma.Svg(self)
        self.theme.setImagePath("widgets/background")
        self.setBackgroundHints(Plasma.Applet.DefaultBackground)

        self.layout = QGraphicsLinearLayout(Qt.Horizontal, self.applet)
        self.logMessage = Plasma.Label(self.applet)
        self.layout.addItem(self.logMessage)
        self.setLayout(self.layout)
        self.resize(400, 400)
        QObject.connect(timer, SIGNAL("timeout()"), self.fortuneUpdate)
        timer.start(5000)
        self.fortuneUpdate()

    def fortuneUpdate(self):
        p=subprocess.Popen("/usr/games/fortune", shell=True, \
                stdout=subprocess.PIPE,stderr=subprocess.PIPE)
        output,errors=p.communicate()
        self.logMessage.setText(output+errors)

def CreateApplet(parent):
    return FortuneViewer(parent)
```

C'est la fonction _fortuneUpdate()_ qui se charge de récupérer la sortie
standard de la commande _fortune_.

### Test et installation

Pour tester votre plasmoïde:

```bash
cd fortune-viewer/..
plasmoidviewer fortune-viewer
```

Pour l'installation:

```bash
cd fortune-viewer/..
zip -r fortune-viewer.zip fortune-viewer/
plasmapkg -i fortune-viewer
```

La troisième ligne peut être faite à l'aide de l'interface graphique.

### Le résultat

![Visualisateur de fortunes](/images/blog/2013/12/plasmoid.png)

Maintenant on aurait pu faire quelque chose de sérieux.
Genre afficher les mails non lus, faire un _tail_ sur /var/log/syslog,
cat /cpuinfo ou afficher la température avec un _cat /proc/acpi/thermal_zone/*_,
etc. .

Le [plasmoïde][2].

Have fun !

 [1]: http://www.fortunes-fr.org
 [2]: /files/blog/2013/12/fortune-viewer.zip
