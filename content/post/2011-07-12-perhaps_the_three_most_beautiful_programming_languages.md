---
title: 'C, Python & Ocaml ou les plaisirs simples de la vie'
slug: perhaps_the_three_most_beautiful_programming_languages​​
author: Cédric Bonhomme
type: post
date: 2011-07-12T15:08:52+00:00
categories:
  - Programming
tags:
  - computer_science
  - c
  - ocaml
  - python


---
Un billet en trois parties qui aborde en premier lieu [trois beaux langages de programmation][1] bien différents et se ressemblant sur certains points. Ils réunissent expressivité et performance, style impératif et fonctionnel, typage dynamique (mais pas faible) et fort.

Je trouve qu'il est plutôt drôle de les comparer. Python semble sur certains points se situer entre le C et Objective Caml. Enfin c'est mon avis et ce que je constate parfois.

Pour [Guido Van Rossum][2], Python devait être entre un language de script (interprété comme Shell) et le C (compilé) et ainsi tenter de réunir expressivité et performances avec des structures de données évoluées (dictionnaires, tuples, listes, etc.).  
Python est donc un language impératif héritant de léducation de Guido Van Rossum et sur ce point est proche de C. Cependant il a un typage dynamique fortement typé (inutile de définir de manière explicite le type d'une variable, mais une fois fixé le type a souvent de limportance). Au contraire le C a un typage très fort.

Cependant des fonctions comme [map][3] ou les [listes en compréhensions][4] lui donne quelques traits de languages fonctionnels, comme OCaml (preuve que Guido a l'esprit ouvert). Biensûr sur ce point il narrive pas à la cheville dOCaml et c'est normal.

Ce qui est vraiment génial avec Python, c'est la liberté et lexpressivité du langage. Ce qui fait qu'on peut faire facilement à peu près ce que lon souhaite. Voici par exemple deux petites comparaisons:

  * [Ocaml et Python][5]  
    Sans être vraiment un langage fonctionnel Python de par son expressivité définit cette fonction dincrémentation quasiment aussi simplement que OCaml. Grâce au listes en compréhension il peut même faire [mieux parfois][6];
  * [C et Python][7]  
    En le comparant à C on comprend de suite lavante du typage dynamique (qui peut être dangereux), mais il sera parfois moins performant pour des calculs plus complexes (par exemple en cryptographie ou pour traiter des longues chaînes de caractères). Voici encore un excellent [exemple][8].

Il y a donc évidemment plusieurs styles pour écrire du Python. Un(e) _Pythonien(ne)_ reconnaîtra le bon.  
Lorsque lon sait un petit peu développer on sent facilement quel langage est le plus adapté dans une situation. Hormis pour des raisons de performances je nutilisera plus le C pour calculer un PGCD, Fibonacci ou encore jouer avec une liste mais plutôt Ocaml. Je le faisais avant, je nen ai plus besoin. Par dessus OCaml pour les listes je préfère de loin Python, parfois aussi pour des fonctions mathématiques. Pour des traitements sur des fichiers, chaînes de caractères, le C. Bref, mes trois langages favoris qui permettent de tout faire très bien.

La première partie très plaisante de ce billet se termine sur cette question: De votre côté, comment situez vous C, Python et OCaml?

Maintenant parlons du développeur de lextrême (celui qui aime les lignes de code). Typiquement:

  * il aime écrire une classe en Java juste pour une fonction mathématique (exemple: incrémenter un nombre ou mise à la puissance avec gestion avancée des paramètres dans le build.xml dEclipse);
  * il écrit une classe en Java pour lire un fichier texte ou ouvrir une _socket_;
  * sil tente de coder un petit _morceau_ (par exemple factorielle) en OCaml, il utilisera une boucle **for**.

Très souvent ce malheureux _Windowsien(ne)_ dégainera Eclipse pour générer automatiquement un tas de morceaux de codes inutiles. Ce n'est pas forcément un mauvais développeur, il est peut être juste simplement passé à côté de la programmation. Ce sera parfois la faute de lécole, souvent celle du monde de l'entreprise. Pour guérir c'est facile, il suffit de découvrir Python, Perl ou Ocaml. Attention toutefois, OCaml peut provoquer un choc assez violent chez un développeur Java de longue date.  
Généralement les systèmes type GNU/Linux vous feront naturellement utiliser Python, Perl et C. OCaml ça sera par pur plaisir.

Pour finir passons à une autre catégorie de développeur, [le fanatique][9]. On remarquera que cette personne utilisera entre autres Python pour tout et n'importe quoi sans même savoir si Python est bon pour cela. Par exemple pour:

  * faire du traitement sur des [listes][10];
  * faire de la programmation Web ([1][11], [2][12], [3][13] ou encore [4][14]);
  * faire de la [cryptographie][15] et jouer avec de grands nombres;
  * écrire des scripts afin dautomatiser des tâches système;
  * divers problèmes scientifiques ([hadoop][16], [mapreduce][17], [factorisation de matrices][18], [numpy][19], etc.)
  * prototyper des interfaces ou développer carrément un [jeu][20];
  * prendre l[apéro][21].

Ah zut, je crois qu'il y a un problème avec la liste. Vous pouvez [chercher][22] pour moi?  
Certains au lieu de Python choisirons Perl. D'autres Java. Mais ces derniers, ont-ils vraiment choisi? 

Encore une question: Y a-t-il un ordre dapprentissage (au moins pour ces trois langages)?

 [1]: http://wiki.cedricbonhomme.org/cs_lang
 [2]: http://en.wikipedia.org/wiki/Guido_van_Rossum
 [3]: http://docs.python.org/library/functions.html#map
 [4]: http://wiki.cedricbonhomme.org/cs_lang:python:things-to-know:comprehensions
 [5]: http://wiki.cedricbonhomme.org/cs_lang:ocaml#increment_a_number
 [6]: http://wiki.cedricbonhomme.org/cs_lang:ocaml#parity
 [7]: http://wiki.cedricbonhomme.org/cs_lang:c#increment_a_number
 [8]: http://wiki.cedricbonhomme.org/cs_lang:c#read_a_file
 [9]: http://front-de-liberation-des-developpeurs.org/purification.html
 [10]: http://docs.python.org/tutorial/datastructures.html#more-on-lists
 [11]: https://www.djangoproject.com/
 [12]: http://www.zope.org/
 [13]: https://github.com/cherrypy/cherrypy
 [14]: http://twistedmatrix.com/trac/
 [15]: http://vermeulen.ca/python-cryptography.html
 [16]: http://www.quuxlabs.com/blog/2010/09/hadoop-tutorials-available/
 [17]: https://pinboard.in/u:cedricbonhomme/t:mapreduce/t:cs_lang:python/
 [18]: http://www.quuxlabs.com/blog/2010/09/matrix-factorization-a-simple-tutorial-and-implementation-in-python/
 [19]: http://numpy.scipy.org/
 [20]: http://wiki.python.org/moin/PythonGames
 [21]: http://www.afpy.ro/
 [22]: http://docs.python.org/library/index.html#library-index
