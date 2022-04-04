---
title: Petit aperçu de Newspipe avec Bootstrap 5
slug: petit-apercu-de-newspipe-avec-bootstrap-5
author: Cédric Bonhomme
type: post
date: 2020-06-23T23:35:43+00:00
categories:
  - Programming
tags:
  - bootstrap
  - python
  - newspipe
  - pyAggr3g470r
  - wcag
  - Web

---
![Newspipe avec Bootstrap 5](/images/blog/2020/06/newspipe-with-bootstrap5.png)

Et oui pour le coup, on peut bien le dire, je suis carrément en avance.

J'ai décidé de tester Bootstrap 5 avec [Newspipe][1]. Cette nouvelle mouture du
célèbre _framework_ _frontend_ CSS est tout juste [publiée en alpha][2].
Le fait que jQuery ne soit dorénavant plus requis ma immédiatement donné envie
de tester. Bien entendu, je n'ai pas pu résister. Newspipe utilise maintenant
une version alpha de Bootstrap 😉

Pour commencer je dois avouer que j'ai été assez surpris de la facilité de la
migration. Le plus gros du boulot était de convertir mes quelques fonctions
utilisant du jQuery en JavaScript pur. En soit, la migration de Bootstrap 4
vers Bootstrap 5 a nécessité que quelques modifications des _templates_
(mais le travail n'est pas encore tout à fait terminé). Et pour moi c'est
toujours un plaisir [de réduire à ce point les dépendances JavaScript][3].
J'ai même profité de l'opportunité pour apporter quelques petites améliorations
à l'interface et rendre le menu des flux plus compact.

Une amélioration notable des [formulaires][4] est à souligner avec Bootstrap 5.
Surtout les formulaires dans une [navbar][5]. Et chose incroyable, les
_checkbox_ sont correctement alignées avec les _labels_! Si ça ce n'est pas une
bonne nouvelle. Je commençais à me demander si on y arriverai avant 2030. 

Le respect du [Web Content Accessibility Guidelines][6] (WCAG) est aussi
amélioré. Après, vous faites toujours ce que vous voulez… Disons juste
qu'il est plus simple de respecter le &#8220;standard&#8221; WCAG.

Bref, pour ne pas trop métaler disons simplement que je suis content de
Bootstrap 5. Je pense que ce projet va finalement dans la bonne direction et
Newspipe va continuer à l'utiliser.

 [1]: https://sr.ht/~cedric/newspipe
 [2]: https://blog.getbootstrap.com/2020/06/16/bootstrap-5-alpha/
 [3]: https://git.sr.ht/~cedric/newspipe/commit/952c06d16141f068287eaca9386d7bc6c43f0fbd#package-lock.json
 [4]: https://v5.getbootstrap.com/docs/5.0/forms/overview/
 [5]: https://v5.getbootstrap.com/docs/5.0/components/navbar/
 [6]: https://www.w3.org/WAI/standards-guidelines/wcag/