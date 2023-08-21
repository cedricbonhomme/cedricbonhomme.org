---
title: 'Performances de Python 3.*'
slug: performances-de-python-3
author: Cédric Bonhomme
type: post
date: 2013-04-06T17:15:33+00:00
categories:
  - Programming
  - Python
tags:
  - benchmark
  - python
  - iterators
  - performance
  - pyAggr3g470r

---
Bonne nouvelle, il semble que les performances de Python 3 saméliorent significativement. Nous sommes nombreux à avoir constaté un effondrement des performances surtout lors de l'utilisation ditérateurs. J'avais [évoqué ce problème][1] en comparant les temps de construction d'un arbre binaire à partir de données récupérées depuis une base MongoDB (avec pymongo). Pour mémoire le chargement de 50.563 articles dans le graphe prenait environ 0,9 secondes avec Python 2.7.3 et 12,9 secondes avec Python 3.2.3. La différence est énorme.

<table>
  <caption>Tableau récapitulatif (temps exprimé en secondes)</caption> 
  
  <tr>
    <td>
      Nombre d'articles chargés<br />dans le graphe
    </td>
    
    <td>
      50.563
    </td>
    
    <td>
      50.563
    </td>
    
    <td>
      50.563
    </td>
    
    <td>
      50.563
    </td>
    
    <td>
      52.912
    </td>
  </tr>
  
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
      3.3.1rc1
    </th>
    
    <th>
      3.3.1rc1
    </th>
  </tr>
  
  <tr>
    <td>
      Chargement des articles
    </td>
    
    <td>
      <i>0,94903397</i>
    </td>
    
    <td>
      5,785764
    </td>
    
    <td>
      12,9370689
    </td>
    
    <td>
      <i>0,5322029</i>
    </td>
    
    <td>
      0,5537478
    </td>
  </tr>
  
  <tr>
    <td>
      Génération de l'arbre
    </td>
    
    <td>
      4,757379
    </td>
    
    <td>
      4,3168029
    </td>
    
    <td>
      2,733838
    </td>
    
    <td>
      2,491816
    </td>
    
    <td>
      3,000731
    </td>
  </tr>
  
  <tr>
    <td>
      Exécution globale du script
    </td>
    
    <td>
      5,950
    </td>
    
    <td>
      11,461
    </td>
    
    <td>
      15,958
    </td>
    
    <td>
      3,225
    </td>
    
    <td>
      3,771
    </td>
  </tr>
</table>

Observez les temps en italique dans le tableau (phase _Chargement des articles_). Python 3.3.1 fait mieux que Python 2.7.3 alors que Python 2.7.3 était beaucoup plus rapide que Python 3.2.3. Le progrès est incontestable, je n'ai rien changé au code utilisé pour ce _benchmark_. Les améliorations concernant les itérateurs profitent largement à [pyAggr3g470r][2]. Si vous utilisez pyAggr3g470r, je vous recommande donc chaudement dinstaller Python 3.3.

Pour la phase _Génération de l'arbre_, avec Python 3.3.1 nous sommes à 2,49 secondes et avec Python 2.7.3 à 4,75 secondes. C'est beaucoup mieux et les itérateurs ne sont pas utilisés à ce niveau. Voyez l'[implémentation de l'arbre binaire ordonné][3] utilisée.

Le développement de Python va dans la bonne direction. J'espère que Python 3
sera bientôt par défaut sur la majeure partie des distributions GNU/Linux.

 [1]: {{< ref "/blog/2013-03-18-iterateurs-python-2-7-vs-python-3-2.md" >}}
 [2]: https://git.sr.ht/~cedric/pyAggr3g470r
 [3]: https://bitbucket.org/cedricbonhomme/pyaggr3g470r/src/tip/source/binarytree.py
