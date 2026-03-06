---
title: Nouveau petit projet
slug: nouveau-petit-projet
author: Cédric Bonhomme
type: post
date: 2019-07-01T21:17:08+00:00
categories:
  - Life
tags:
  - home

---
Un nouveau projet débute. Pour une fois cela na pas grand chose à voir avec de
l'informatique et c'est tout de même quelque chose que j'attends depuis de très
longues années (avec même un raté, d'une certaine manière). Le projet a commencé
à se concrétiser il y a maintenant environ 18 mois. J'ai un peu hésité à en
parler ici car c'est assez personnel et important pour moi. Il y a encore
beaucoup de travail à réaliser et donc j'ai le temps de me rattraper pour écrire
plus à ce sujet. Nul besoin de faire durer le suspense, nous allons construire
une maison.


Si tout va bien le chantier débutera cette semaine. Je compte bien faire ce que
je peux avec mes mains (pas trop le choix vu les prix dans la région…) et
prendre le temps qu'il faudra (dans la mesure du possible). Comme vous pouvez
l'imaginer, beaucoup de travail a déjà été réalisé en amont afin de pouvoir
commencer concrètement. Je ne vais pas refaire lhistorique de la recherche du
terrain, en passant par les plans de la maison, le choix des artisans, jusquau
dossier bancaire, etc. C'était long et intéressant. Nous nous occupons de la
maîtrise d'ouvrage. À ce stade je suis prêt pour affronter les obstacles qui
vont forcément bientôt se pointer. Disons donc que nous entrons en phase
d'implémentation (et nous allons éviter de trop nous inspirer de la
[méthode PMF](https://tools.ietf.org/id/draft-dulaunoy-programming-methodology-framework-00.html)</a>,
certes bien connue pour ses qualités dans le domaine du logiciel).
Puis vous verrez, le résultat sera un peu différent de
[ces anciens plans]({{< ref "/blog/2012-02-04-sweet-home-3d.md" >}}) 😉


Je pourrai déjà vous donner plus d'informations mais je préfère laisser un peu
de mystère et ne pas épuiser toutes mes idées pour la suite. J'ai quelques
surprises pour vous. Je pense qu'il y aura aussi des surprises pour moi. Bref,
il y aura de quoi raconter.

![Le terrain](/images/blog/2019/06/terrain.png)

Pour les curieux qui veulent déjà en savoir un petit peu plus, sachez que des
informations sont cachées dans la photo (je ne change pas beaucoup). Et comme
je suis gentil voici comment les révéler (vous pouvez remplacer `pipx` par `pip`
si vous préférez):

```bash
$ pipx install stegano
$ wget /images/blog/2019/06/terrain.png
$ stegano-lsb-set reveal -i terrain.png -g LFSR
```

Pour certaines personnes il sera assez facile de deviner où se situe le terrain.
Inutile de le mentionner ici.

Je donnerai des nouvelles sur l'évolution de ce petit projet. La quantité et
fréquence dépendra en partie de votre intérêt.
