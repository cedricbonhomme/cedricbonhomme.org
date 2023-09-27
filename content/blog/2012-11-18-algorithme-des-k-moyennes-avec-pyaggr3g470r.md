---
title: Algorithme des k-moyennes avec pyAggr3g470r
slug: algorithme-des-k-moyennes-avec-pyaggr3g470r
author: Cédric Bonhomme
type: post
date: 2012-11-18T18:57:27+00:00
categories:
  - Machine Learning
tags:
  - clustering
  - cs
  - k-means
  - machinelearning
  - pyAggr3g470r
  - newspipe

---
_Ou comment trier ses flux de manière intelligente et automatique._

Ces derniers temps je mamuse avec de petits algorithmes de _machine learning_.
J'apprends beaucoup de choses intéressantes grâce à [ce beau livre][1].

Quel est donc le rapport avec [pyAggr3g470r][2]? La réponse est simplement que j'ai
dépassé les 40.000 articles stockés en base de donnée par pyAggr3g470r (42.105 articles
pour être exact). Ce qui constitue donc un bon ensemble de documents pour tester
quelques algorithmes de _clustering_. J'ai donc commencé par tester un algorithme dit
de _K-means clustering_ assez simple à écrire en Python. Cela en utilisant la fonction
de Pearson qui mesure la dépendance linéaire (corrélation) de 2 vecteurs. Les tests
avec [Tanimoto][3] sont moins concluants je trouve. Par contre, la distance
[Euclidienne][4] fournie dassez bons résultats. Mais moins bons qu'avec Pearson.

Ci-dessous, voici donc le résultat avec la [corrélation de Pearson][5]:

![mds2d](/images/blog/2012/11/mds2d1.jpg)

Et voici les _clusters_ que l'on peut voir avec cette représentation 2D:

  1. AdulauWikiDiary, Python News, Free Software Foundation
  2. Schneier on Security, LWN.net, Linux Kernel Newbies, dive into mark, Matt Blazes Exhaustive Search, cr0 blog, Handcrafted Games, etbe &#8211; Russell Coker, quuxlabs, The History of Python, Lennart Poettering, Victor Stinner, Neopythonic, sysc.tl, KDE.news, Fetchez le Python, linux kernel monkey log, Spafs Thoughts, Armed and Dangerous, Linus blog, Jeffersons Wheel, The Invisible Things Labs blog
  3. Slashdot
  4. Weblogue de bnj, Lessentiel | News, Le Tigre, InternetActu.net, Journal d'un avocat, Classe, Pas Classe…, DLFP &#8211; Dépêches, Blog de Stéphane Bortzmeyer, DLFP &#8211; Journaux, ~/blog
  5. Standblog, Framablog, April, Blog Haypo, Pour les formats ouverts !
  6. La Quadrature du Net

On peut déjà constater que les blogs en langue Française ne sont pas mélangés avec les
blogs en langue Anglaise. Le groupe 5 est plutôt intéressant, la thématique de ce
groupe semble tourner autour du logiciel libre. Mis à part le blog de Victor Stinner.  
Les blogs Anglais sont assez techniques: Linux, Python, Sécurité, etc. J'ai fais de
nombreux tests et il arrive parfois que le deuxième groupe soit scindé en deux ou trois
groupes (par exemple un groupe pour "LWN.net", "Linux Kernel Newbies" et
"linux kernel monkey log").

Pour aller plus loin je teste un algorithme d'[EM clustering][6] comme
[on me la conseillé][7]. Pour le moment j'ai quelques problèmes avec cette technique
car l'algorithme utilise une quantité assez importante de mémoire pour un nombre de
_cluster_ égal à 8. Avec 3 _clusters_, 6Go de mémoire sont utilisés. Toujours avec une
base de 42.105 articles.

 [1]: http://www.librarything.com/work/3151375/91122861 "Programming Collective Intelligence: Building Smart Web 2.0 Applications"
 [2]: https://git.sr.ht/~cedric/pyAggr3g470r
 [3]: https://bitbucket.org/cedricbonhomme/pyaggr3g470r/changeset/8e77360c95ce168e4fa0375b0be74ae1d1f30aba
 [4]: https://bitbucket.org/cedricbonhomme/pyaggr3g470r/changeset/66b081c7ceffe0e38d575f3b4ee29274fef65b94
 [5]: http://en.wikipedia.org/wiki/Pearson_product-moment_correlation_coefficient
 [6]: http://en.wikipedia.org/wiki/Expectation–maximization_algorithm
 [7]: https://plus.google.com/106973022319954455496/posts/QeukTEQ2st9
