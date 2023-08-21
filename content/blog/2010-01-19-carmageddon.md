---
title: Carmageddon
author: Cédric Bonhomme
type: post
date: 2010-01-19T21:18:05+00:00
tags:
  - carmageddon
  - games
  - Linux
  - wine

---
![Capture du jeu Carmageddon sur Mandriva Cooker](/images/blog/2014/08/carmageddon3.png)

Ah c'est bon vieux jeux…  Ils me manquent parfois dans mon monde de manchots.
Bien sûr il y a de très bon jeux sur Linux également. Même pleins. Sauf que de
temps en temps j'ai envie de me faire un petit Counter Strike.
Heureusement pour ça il y a PlayOnLinux et Wine.
Cette semaine j'ai carrément pensé à jouer un peu à Worms, Blood ou même
[Carmageddon](http://en.wikipedia.org/wiki/Carmageddon) !

Et bien avec [Wine](https://www.winehq.org) ça fonctionne. Et bien !
Quand je pense que sous Windows XP il faut des _patchs_ pour jouer à Carmageddon.
Je n'imagine même pas avec Vista ou Seven. Il faut dire qu'à l'installation Wine
a quand même réclamé DirectX 3.0 (1996). Ça ne nous rajeunit pas…

Bref, voilà pour l'installation (sur Mandriva):
  
- ``urpmi wine`` ;
- lancer setup.exe dans le dossier Carma95 du CD d'installation du jeu.

Pour lancer le jeu il ne faut pas passer par le menu de Wine sous peine de se
heurter à des problèmes de compatibilités DirectX. Sauf si vous avez toujours
un exécutable d'installation de cette version de DirectX. Dans ce ca, bravo !
Donc pour le lancement du jeu, rien de bien compliqué:
  
- ``cd ~/.wine/drive_c/Program\ Files/Games/Carmageddon/`` ;
- ``wine Carm95.exe -hires``.

Et voilà, comme dans le bon vieux temps !

P.S.: Pour mémoire je tiens à rappeler que l'objectif du jeu est de jouer le
plus longtemps possible. Pour cela, il vous faudra gagner du temps en faisant
le plus de dégâts possible et en écrasant tout ce que vous trouverez
(y compris les mamies). Attention parce que c'est plus compliqué que ça ne le
paraît !

