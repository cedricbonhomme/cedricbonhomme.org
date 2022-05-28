---
title: 'Itérateurs: Python 2.7 vs Python 3.2'
slug: iterateurs-python-2-7-vs-python-3-2
author: Cédric Bonhomme
type: post
date: 2013-03-18T17:40:15+00:00
categories:
  - Python
tags:
  - python
  - pyAggr3g470r

---
Voulant tester les performances d'une structure de donnée basée sur un arbre binaire ordonné pour [pyAggr3g470r][1], je maperçois que les opérations sur les itérateurs sont drôlement plus lentes avec Python 3.2.3 qu'avec Python 2.7.3. Je le soupçonnais déjà, mais pas à ce point.

Voici donc la [petite implémentation darbre binaire ordonné][2] que j'ai ajouté à pyAggr3g470r. Rien de bien spécial, niveau licence informatique je crois. Le script [que voici][3] soccupe:

  * de charger une base MongoDB constituée de 50.563 éléments (730 Mo sur disque);
  * de créer l'arbre avec les 50.563 éléments;
  * d'exécuter quelques opérations de base sur l'arbre: récupérer le plus petit élément (ancien article), récupérer le plus grand élément (récent article) et trouver la profondeur maximum de l'arbre (chemin le plus long).

Devinez quelle partie prend le plus de temps? Attention la différence est surprenante. Voyez. 

Avec Python 2.7.3:

```bash
$ time python testbinarytree.py
Loading articles from the database…
50563 articles loaded in 0.949033975601 seconds.
Generating the binary tree…
Generation done in 4.757379 seconds.
Maximum depth of the tree:
512
Oldest article:
2002-05-11 04:14 - Testing
Newest article:
2013-03-18 16:32 - Enseignement supérieur L’Uni décroche de bonnes notes

real    0m5.950s
user    0m5.592s
sys     0m0.192s
```

Avec Python 3.2.3:

```bash
$ time python3.2 testbinarytree.py
Loading articles from the database…
50563 articles loaded in 12.937068939208984 seconds.
Generating the binary tree…
Generation done in 2.733838 seconds.
Maximum depth of the tree:
512
Oldest article:
2002-05-11 04:14 - Testing
Newest article:
2013-03-18 16:32 - Enseignement supérieur L’Uni décroche de bonnes notes

real    0m15.958s
user    0m15.529s
sys     0m0.216s
```

Vous pouvez faire la même chose avec par exemple Python 3.1.3.
Le tableau ci-dessous montre l'essentiel.

<table>
  <caption>Tableau récapitulatif (temps exprimé en secondes)</caption> 
  
  <tr>
    <th>
      Phase
    </th>
    
    <th>
      Python 2.7.3
    </th>
    
    <th>
      Python 3.1.3
    </th>
    
    <th>
      Python 3.2.3
    </th>
    
    <th>
      Tendance
    </th>
  </tr>
  
  <tr>
    <td>
      Chargement des articles
    </td>
    
    <td>
      0.949033975601
    </td>
    
    <td>
      5.785764
    </td>
    
    <td>
      12.937068939208984
    </td>
    
    <td>
      &darr;
    </td>
  </tr>
  
  <tr>
    <td>
      Génération de l'arbre
    </td>
    
    <td>
      4.757379
    </td>
    
    <td>
      4.31680297852
    </td>
    
    <td>
      2.733838
    </td>
    
    <td>
      &uarr;
    </td>
  </tr>
  
  <tr>
    <td>
      Exécution globale du script
    </td>
    
    <td>
      5.950
    </td>
    
    <td>
      11.461
    </td>
    
    <td>
      15.958
    </td>
    
    <td>
      &darr;
    </td>
  </tr>
</table>

Le script s'exécute environ 3 fois plus vite avec Python 2.7.3 malgré une
génération de l'arbre binaire 2 secondes plus longue qu'avec Python 3.2.3.
La version 2.7.3 lemporte de loin grâce à la phase de chargement de la base
MongoDB qui utilise des [itérateurs avec PyMongo][4]. Si on enlève le chargement
de la base (on pourrait par exemple sérialiser un objet) Python 3.2.3 serait
environ plus rapide de 2 secondes. J'ai exécuté les tests de nombreuses fois.

Il n'y a pas photo.

 [1]: https://git.sr.ht/~cedric/pyAggr3g470r
 [2]: https://bitbucket.org/cedricbonhomme/pyaggr3g470r/src/c44f41db98dc70de8c8d4a039939229d7d4f8119/source/binarytree.py
 [3]: https://bitbucket.org/cedricbonhomme/pyaggr3g470r/src/c44f41db98dc70de8c8d4a039939229d7d4f8119/source/testbinarytree.py
 [4]: http://api.mongodb.org/python/current/api/pymongo/cursor.html
