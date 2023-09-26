---
title: HTML5 et les balises input
author: Cédric Bonhomme
type: post
date: 2010-11-15T17:21:39+00:00
categories:
  - Web
tags:
  - html
  - HTML5
  - standard
  - newspipe

---
![HTML5 input URL](/images/blog/2010/11/html5-input-url1.png)

HTML5 c'est vraiment bien. J'ai une utilisation vraiment basique du langage
HTML, cependant jessaye toujours d'avoir un code moderne et respectueux des
standards. Dans [mon bon livre][1], je viens de voir les nouvelles
[balises _input_][2] dHTML5. Et qu'est-ce que c'est bien fait! Il y a maintenant
une balise _input_ de type [URL][3] qui permet de vérifier si la donnée saisie
est au bon format (de même pour les adresses e-mail). Si le format est incorrect
le formulaire n'est pas soumis. [Cette expression][4] régulière est maintenant
inutile (je la conserve tout de même). 

J'aime bien car ça permet de traiter des bugs plus tôt (avant même que le
formulaire ne sois envoyé, sans java script) et il suffit d'insérer une petite
balise. 

Un autre exemple avec la balise _input_ de type [number][5] qui vient de me
faire économiser [quelques lignes de codes][6].

![HTML5 input number](/images/blog/2010/11/html5-input-number.png)

Pour finir, la balise _input_ de type [month][7]:

![HTML5 input month](/images/blog/2010/11/date-picker.png)

Une ligne de code.


 [1]: http://www.amazon.com/HTML5-Up-Running-Mark-Pilgrim/dp/0596806027
 [2]: http://diveintohtml5.org/detect.html#input-types
 [3]: http://www.whatwg.org/specs/web-apps/current-work/multipage/states-of-the-type-attribute.html#url-state
 [4]: http://bitbucket.org/cedricbonhomme/pyaggr3g470r/src/tip/utils.py#cl-84
 [5]: http://www.whatwg.org/specs/web-apps/current-work/multipage/number-state.html#number-state
 [6]: http://bitbucket.org/cedricbonhomme/pyaggr3g470r/changeset/d74ac70a2650#chg-pyAggr3g470r.py_newline286
 [7]: http://www.whatwg.org/specs/web-apps/current-work/multipage/states-of-the-type-attribute.html#month-state
