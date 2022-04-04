---
title: 'pyAggr3g470r: stockage distant des articles avec MongoDB'
author: Cédric Bonhomme
type: post
date: 2012-03-04T00:04:12+00:00
categories:
  - MongoDB
  - Python
tags:
  - python
  - MongoDB
  - nosql
  - pyAggr3g470r
  - pymongo

---
[pyAggr3g470r][1] a en ce moment une [branche de développement][2] dans le but de remplacer la base SQLite par une base MongoDB. Après une petite journée de travail [les fonctionnalités de base sont implémentées][3].

Avec cette nouvelle branche il sera possible de consulter les articles via l'interface Web installée localement, depuis n'importe où. Je ferai des tests avec ma base MongoDB sur AlwaysData. Pour le moment je teste avec une base MongoDB en _localhost_. Le client pyAggr3g470r se charge de stocker les nouveaux articles dans la base MongoDB et de les récupérer lorsque la personne veut lire depuis un autre endroit.

Évidemment l'accès sera sécurisé. Il sera aussi possible d'avoir une personne disposant d'un client pyAggr3g470r avec un accès en lecture/écriture et une autre personne avec uniquement un accès en lecture.

Lorsque ce sera un peu plus mature jimporterai la base actuelle (SQLite) de pyAggr3g470r dans la nouvelle base MongoDB. Un peu plus de 30.000 articles. Ça fera un excellent test!

[Cette page][4] présente rapidement les avantages (notamment la vitesse décriture et les accès concurrentiels en écriture/lecture) de cette évolution.

Pour tester:

<pre class="brush:shell">hg clone http://hg.cedricbonhomme.org/pyaggr3g470r/
hg update "MongoDB development"
</pre>

Pour revenir à la stabilité:

<pre class="brush:shell">hg update default
</pre>

 [1]: https://git.sr.ht/~cedric/pyAggr3g470r
 [2]: http://hg.cedricbonhomme.org/pyaggr3g470r/branches
 [3]: http://hg.cedricbonhomme.org/pyaggr3g470r/shortlog
 [4]: http://hammerprinciple.com/databases/items/sqlite/mongodb