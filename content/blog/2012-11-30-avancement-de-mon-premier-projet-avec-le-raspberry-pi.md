---
title: Avancement de mon premier projet avec le Raspberry Pi
author: Cédric Bonhomme
type: post
date: 2012-11-30T21:18:05+00:00
categories:
  - Technology
tags:
  - cars
  - python
  - OBD
  - Raspberry Pi

---
Maintenant que je sais récupérer les données générées par le système embarqué d'une voiture via l[interface OBD][1] je vais pouvoir faire des choses plus intéressantes avec le Raspberry. Je m'intéresse particulièrement au projet [pyob2read][2] qui me permet de récupérer un tas de données. Voici une [petite liste de codes][3] (_trouble codes_) pour Mazda. Cependant beaucoup de codes sont génériques et il ne me semble pas trop compliqué de faire une application qui fonctionne correctement avec d'autres marques de voitures.

La première phase du projet a consisté à réutiliser le code que j'ai déjà brièvement évoqué sur [ce billet][4]. En gros un simple algorithme de [Dijkstra][5] et un chouilla de JavaScript. Le tout est très léger et est en Python. On pourra y ajouter un petit serveur HTTP. Mais l'idéal est d'avoir une connexion SIM (HSPA+ ou autres, _via_ un _smartphone_).

Maintenant il faut surtout intégrer le code de pyob2read afin de récupérer les données du tableau de bord. Sans affichage pour le moment car je n'ai pas encore trouvé l'écran adapté (prix, capacité et taille pour rentrer là où je limagine). Cette phase va prendre le plus de temps, car il faut faire des tests et je voudrai surtout tester d'autres modules.

Ensuite, le plus chiant (mais bonus) sera de développer une petite application [Android][6] qui recevera les données du Raspberry (celui-ci est connecté en USB à l'interface OBD). Pour cela, j'ai au moins deux solutions: Wi-Fi (généré par le _smartphone_) ou Bluetooth. L'utilisation du téléphone a plusieurs avantages: 1) règle le problème de l'écran, 2) permet d'avoir en plus un GPS et 3) lautonomie car c'est toujours mieux que d'avoir à alimenter un écran branché sur le Raspberry.

Je suis persuadé que pour moins de 100 euros (environ 70 euros) il est possible de se faire un ordinateur de bord rudimentaire mais sympa. Et qui finalement fournira bien plus d'informations que n'importe quel système classique. Imaginez une Debian ([Raspbian][7]) dans votre voiture, la classe.

Dans léventualité qu'un jour jarrive au stade de l'écran je pense que la solution de moindre coût (c'est bien le but) sera d'utiliser un simple écran LCD avec le connecteur GPIO.

À suivre!

 [1]: https://en.wikipedia.org/wiki/On-board_diagnostics
 [2]: https://code.google.com/p/pyob2read/
 [3]: http://www.obd-codes.com/trouble_codes/mazda/
 [4]: https://www.cedricbonhomme.org/2012/05/10/tagjunctionroundabout/
 [5]: https://bitbucket.org/cedricbonhomme/pyclique/src/e117667e9b8b2ae4fe0fb70db618182fd98c1df7/dijkstra.py
 [6]: https://www.android.com
 [7]: https://www.raspbian.org
