---
title: Déploiement d’applications Web avec Heroku
slug: deploiement-dapplications-web-avec-heroku
author: Cédric Bonhomme
type: post
date: 2013-03-08T22:04:11+00:00
categories:
  - Cloud
  - Web
tags:
  - cloud
  - python
  - Flask
  - Heroku
  - PaaS

---
Depuis quelques temps je m’intéresse au service [PaaS][1] offert par [Heroku][2] (équivalent de Google App Engine). Ce service permet de déployer des applications (entre autres: node.js, Ruby, Clojure, Python et Scala) sans se soucier de ladministration du serveur (et donc une partie des problèmes de sécurité). Et cela vraiment simplement et rapidement.

Pour preuve, voici ci-dessous les étapes afin d'avoir une première application Python basée sur [Flask][3], juste après la création d'un compte.

```bash
debian:/home/cedric# wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

cedric@debian:~$ git clone git://github.com/heroku/python-sample.git
Cloning into python-sample…
remote: Counting objects: 12, done.
remote: Compressing objects: 100% (8/8), done.
remote: Total 12 (delta 1), reused 11 (delta 0)
Receiving objects: 100% (12/12), done.
Resolving deltas: 100% (1/1), done.

cedric@debian:~$ cd python-sample/

cedric@debian:~/python-sample$ heroku create
Enter your Heroku credentials.
Email: kimble.mandel@gmail.com
Password (typing will be hidden):
Found existing public key: /home/cedric/.ssh/id_rsa.pub
Uploading SSH public key /home/cedric/.ssh/id_rsa.pub… done
Creating peaceful-refuge-5673… done, stack is cedar
http://peaceful-refuge-5673.herokuapp.com/ | git@heroku.com:peaceful-refuge-5673.git
Git remote heroku added

cedric@debian:~/python-sample$ git push heroku master
The authenticity of host 'heroku.com (50.19.85.156)' can't be established.
RSA key fingerprint is 8b:48:5e:67:0e:c9:16:47:32:f2:87:0c:1f:c8:60:ad.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added 'heroku.com,50.19.85.156' (RSA) to the list of known hosts.
Enter passphrase for key '/home/cedric/.ssh/id_rsa':
Counting objects: 12, done.
Delta compression using up to 2 threads.
Compressing objects: 100% (7/7), done.
Writing objects: 100% (12/12), 1.13 KiB, done.
Total 12 (delta 1), reused 12 (delta 1)

-----> Python app detected
-----> No runtime.txt provided; assuming python-2.7.3.
-----> Preparing Python runtime (python-2.7.3)
-----> Installing Distribute (0.6.34)
-----> Installing Pip (1.2.1)
-----> Installing dependencies using Pip (1.2.1
.
.
.
-- snip --
.
.
.
-----> Discovering process types
       Procfile declares types -> web

-----> Compiled slug size: 23.7MB
-----> Launching… done, v4
       http://peaceful-refuge-5673.herokuapp.com deployed to Heroku

To git@heroku.com:peaceful-refuge-5673.git
 * [new branch]      master -> master
```

Et voici [le résultat][4]. Il faut savoir quHeroku repose en fait sur le service IaaS [EC2][5] d'Amazon (équivalent de Google Compute Engine). Vous êtes donc [dépendant de la qualité de service d'Amazon][6].

Le service est _élastique_ et de nombreuses configurations sont [possibles][7]. J'utilise un compte gratuit. Pour la persistance des données de votre application vous pouvez utiliser l_addon_ [MongoHQ][8] avec 512 Mo de stockage offert.

On va voir ce qu'on peut faire avec ça…

 [1]: https://en.wikipedia.org/wiki/Platform_as_a_service
 [2]: https://www.heroku.com/
 [3]: http://flask.pocoo.org/
 [4]: https://peaceful-refuge-5673.herokuapp.com/
 [5]: http://aws.amazon.com/ec2/
 [6]: http://venturebeat.com/2012/06/29/amazon-outage-netflix-instagram-pinterest/
 [7]: https://www.heroku.com/pricing
 [8]: https://addons.heroku.com/mongohq
