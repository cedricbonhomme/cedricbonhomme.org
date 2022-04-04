---
title: Heroku contre Google App Engine
author: Cédric Bonhomme
type: post
date: 2014-02-12T18:34:41+00:00
categories:
  - Cloud
  - Programming
tags:
  - App Engine
  - cloud-computing
  - python
  - Heroku
  - PaaS

---
Pour introduire ce billet j'annonce que l'application (tout à fait inutile) [Cédric, on mange où à midi?][1] peut maintenant être déployée sur Google App Engine ([instance de test][2]) et sur Heroku ([instance de test][3]). Ceci avec le même code source et sans configurations spécifiques requises. J'ai ainsi pu faire une petite comparaison des deux principales plateformes PaaS. Pour faire court, je préfère le service Heroku.

D'abord je trouve les plateformes PaaS plutôt pratiques pour déployer des applications Web rapidement et sans avoir à se soucier de linfrastructure. Malheureusement ces services sont assez onéreux. Mais les offres de base (gratuites) permettent de faire des choses assez intéressantes (comme déployer un démonstrateur pour une conférence, une application débile «daide à la décision», etc.). Les plateformes IaaS comme Amazon EC2 et Google Compute Engine sont également exorbitantes. Je suis plus intéressé par les services PaaS car ils mapportent une simplicité de déploiement et forcent à structurer correctement le projet (c'est quand même super de pouvoir déployer avec Git un projet sur différentes plateformes PaaS ainsi que sur son serveur privé, sans avoir à modifier une librairie tierce ou le code). Mettant de côté l'avantage des ressources «élastiques», une plateforme IaaS na à mes yeux pas de grands avantages par rapport à une solution classique (serveur privé ou mutualisé). Et finalement une application déployée sur Heroku est cloisonnée dans une _stack_ AWS [(Celadon) cedar][4] de base (je ne pense pas que loffre dentrée permet d'avoir une instance en Europe).  
À noter quAWS offre actuellement un service PaaS, [Elastic Beanstalk][5], que je n'ai pas encore testé.

Pour en revenir aux plateformes PaaS, le service Heroku est à mon avis clairement plus simple à utiliser que Google App Engine. Il suffit de comparer les documentations de ces plateformes respectives pour déployer une application Flask. Avec Heroku il est essentiellement requis de connaitre Python (bien sûr si vous déployez une application Python) et Git (un minimum). Tandis que App Engine nécessite l'installation d'un _framework_ (à importer dans le code car il propose un certain nombre de fonctionnalités, notamment pour le stockage de données car sur une plateforme PaaS on ne peut généralement pas écrire de fichiers. Ainsi le _framework_ fournit le [Datastore][6]) et quelques fichiers de configurations à placer dans votre projet (c'est donc un peu plus invasif dans votre application et ça ne la concerne pas directement).

Une autre différence notable est la manière dont les librairies tierces de votre application sont gérées. Avec Heroku il faut spécifier les dépendances dans un fichier nommé _requirements.txt_ (comme de coutume pour un projet Python) afin quelles soient automatiquement installées côté plateforme. Avec App Engine il faut installer les librairies localement (avec pip) puis les envoyer en même temps que votre application grâce à un script Python inclus dans le SDK. Je pense que cette différence est principalement dû au fait que Heroku est basé sur des conteneurs Linux ([LinuX Containers][7]), comme le service [Docker][8]. Cette approche me plait bien mais je ne sais pas si les problèmes de sécurité connus de LXC sappliquent dans un contexte PaaS (l'accès à la console ne se fait que _via_ le client Heroku en utilisateur normal).

Le _Dashboard_ de Google App Engine est plus complet (et bien plus compliqué) que celui dHeroku, il est possible de contrôler beaucoup de choses (logs, facture très détaillée, charge de l'application, etc.). Mais je pense quavec un compte payant des choses se débloquent sur Heroku.

D'un point de vue temps de réponse, Google App Engine semble faire un peu mieux que Heroku, surtout lorsqu'un nouveau processus doit être initié après une période de repos de l'application. Je n'ai pas de mesures précises sur ce point et ça ne me pose pas vraiment de problème. À noter aussi quavec Heroku HTTPS est utilisé par défaut.

Finalement, vous pouvez utiliser mon petit projet «daide à la décision» pour les indécis comme tutoriel. C'est toujours mieux que le _Hello World_ du tutoriel de Google App Engine. Et vous pourrez ainsi vous faire votre propre idée.

 [1]: https://gitlab.com/cedric/cedric-onmange-ou
 [2]: http://deep-equator-438.appspot.com/
 [3]: https://peaceful-refuge-5673.herokuapp.com/
 [4]: https://devcenter.heroku.com/articles/cedar#using-cedar
 [5]: https://aws.amazon.com/elasticbeanstalk/
 [6]: https://developers.google.com/appengine/docs/java/gettingstarted/usingdatastore
 [7]: https://en.wikipedia.org/wiki/LXC
 [8]: https://www.docker.io/