---
title: Petite amélioration du déploiement de pyAggr3g470r dans les nuages
slug: petite-amelioration-du-deploiement-de-pyaggr3g470r-dans-les-nuages
author: Cédric Bonhomme
type: post
date: 2014-08-18T18:19:11+00:00
tags:
  - python
  - heroku
  - pyAggr3g470r
  - newspipe

---
Le processus de déploiement automatique de [pyAggr3g470r][1] a été légèrement amélioré.
Il permet dorénavant d'initialiser l'adresse email ainsi que le mot de passe du compte
administrateur. Ceci avec le formulaire généré par Heroku (voir la capture ci-dessous).  
Il est également (facultativement) possible de fixer les variables d'environnement pour
la clé API de [Postmark][2] (envoie des notifications par emails) et pour les clés
nécessaires au système [reCAPTCHA][3].

![pyAggr3g470r new deployment settings](/images/blog/2014/08/pyAggr3g470r-new-deployment-settings.png)

Ces données sont modifiables avec la commande: `heroku config:set NOM_VARIABLE=VALEUR`.
Et même certainement en passant par l'interface Web Heroku. Il faudrait vérifier.

 [1]: https://git.sr.ht/~cedric/pyAggr3g470r
 [2]: https://postmarkapp.com
 [3]: https://en.wikipedia.org/wiki/ReCAPTCHA
