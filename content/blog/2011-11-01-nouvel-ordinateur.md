---
title: Nouvel ordinateur
author: Cédric Bonhomme
type: post
date: 2011-11-01T08:37:37+00:00
categories:
  - Technology
tags:
  - i7
  - intel-i7
  - virtualization
  - VT-d

---
Voici les modestes caractéristiques de mon nouvel ordinateur:

- CPU : Intel Core i7-2600 (3.4 Ghz / 3.8 GHz Turbo &#8211; Cache 8Mo &#8211;
  4 coeurs avec hyper threading);
- RAM: 6 Go &#8211; DDR3 1333 &#8211; PC3-10600;
- GPU: NVIDIA GeForce GT 545 &#8211; 1.5Go;
- GPU: NVIDIA GeForce GT 545 &#8211; 1.5Go;
- DD: HDD de 2To &#8211; Serial ATA 3Gb/s (SATA II).

Autant dire que ça change comparé à l'ancien, je commençais à en avoir un peu marre…  
C'est surtout le premier ordinateur de bureau que je m'achète (et que j'ai choisi)! Je n'ai donc pas hésité à prendre un i7 (histoire de le garder au moins 5 ans en tant quordinateur principal).

Niveau connectique, c'est pas mal: USB 3.0 (quantité: beaucoup trop), DVI/VGA/HDMI femelles, etc.

Concernant le clavier j'ai pris un Logitech assez classique avec touches &#8220;silencieuses&#8221;. Souris Logitech. Toucher très confortable, limite érotique.

L'écran est un [ViewSonic VX2453mh-LED][1] 24 pouces. Également une révolution dans ma vie. Je n'ai jamais eu un écran de plus de 16 pouces. Pour la carte graphique, je ne sais absolument pas ce quelle vaut. Mais elle est largement suffisante pour afficher un bureau KDE (en ce moment j'usite même de plus en plus XFCE).  
Je n'ai pas encore de haut-parleurs (inutiles pour le moment).

Pour information voici les caractéristiques de l'ancien ordinateur:

  * CPU: AMD Athlon(tm) XP 2600+. Je ne sais pas comment c'est possible, mais c'est vraiment lent;
  * RAM: 1024 Mo. Je dirai bien que c'est suffisant… Mais voilà, les nouveaux bureaux, Firefox, aKonadi, Kontact, etc.;
  * DD: 110 Go. Largement suffisant en revanche.

Ce que je peux dire, c'est que en général quand je change de matériel (pas forcément informatique) c'est un choc.  
De plus, cette fois-ci le changement se fait très facilement, car depuis que j'utilise un NAS mon dossier personnel est pratiquement vide. Nul besoin de sauvegarder mes favoris, mots de passe, photographies, etc.

Ce nouvel ordinateur, pour faire quoi?

  * pour KVM notamment (très simplement avec _virt-manager_). Un critère de choix important était la présence des options VT-x et [VT-d][2]. Xen 4.1 améliore beaucoup le support de VT-d (non para-virtualisé), tout est bien expliqué sur [cette page][3]. VT-d c'est aussi la [technologie cassée][4] ([post associé][5]) par Joanna Rutkowska. C'est un papier récent, mais les premières attaques dates de 2008 je crois (ça fait déjà longtemps me direz vous…). Là je ne retrouve plus le lien de la vidéo sur l'attaque d'Intel trusted execution à Black Hat (qui heureusement est sur mon NAS), mais pour vous consoler voici [une vidéo][6] et [une autre][7] de Joanna. On remarquera que Joanna est toujours très classe;
  * un peu de traitement sur les photos. Hugin fait presque planter l'ancien ordinateur, HDR: dans tes rêves, détections des visages: plus de 5 heures (15 minutes avec le portable de Carole) pour toutes mes photos. Il y a aussi l'écran pour enfin avoir de jolies couleurs. Lors de mon dernier déplacement je me suis rendu compte qu'avec l'ordinateur dans la chambre d'hôtel mes photos étaient bien plus jolies (couleurs moins fade). J'étais un peu blasé;
  * pour faire tourner plus vite quelques algorithmes de cryptographie/stéganographie. Mais aussi [pyAggr3g470r][8] et sa base de 60Mo 😉 Plus divers programmes;
  * pour que Firefox ne prenne plus environ 11 secondes pour se lancer à froid. Et je nexagère pas. Surtout que sur ce même ordinateur Chrome se lance en maximum 5 secondes. Bref, une fluidité général du système, même si chargé;
  * pour que le client [bitcoin][9] me rende la main sur la machine de temps en temps.

À mon humble avis, cet ordinateur et moi allons parcourir un bon bout de chemin ensemble.

 [1]: http://www.viewsonic.com/products/vx2453mhled.htm
 [2]: http://en.wikipedia.org/wiki/Virtualization_Technology#I.2FO_MMU_virtualization_.28AMD-Vi_and_VT-d.29
 [3]: http://wiki.xen.org/xenwiki/VTdHowTo
 [4]: http://invisiblethingslab.com/resources/2011/Software Attacks on Intel VT-d.pdf
 [5]: http://theinvisiblethings.blogspot.com/2011/05/following-white-rabbit-software-attacks.html
 [6]: http://www.youtube.com/watch?v=zjwe5RvVrA0
 [7]: http://www.youtube.com/watch?v=0pPf1F1RGF8
 [8]: https://git.sr.ht/~cedric/pyAggr3g470r
 [9]: https://bitcoin.org
