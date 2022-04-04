---
title: 'pyHIDS: Alertes IRC'
author: Cédric Bonhomme
type: post
date: 2013-06-13T16:16:48+00:00
categories:
  - Security
tags:
  - python
  - hids
  - pyHIDS
  - security

---
[pyHIDS][1] peut maintenant envoyer des alertes sur un channel IRC via
[irker][2], comme le montre la capture décran ci-dessous.

![pyHIDS-irker](/images/blog/2013/06/pyHIDS-irker.png)

Le channel IRC est à spécifier dans le fichier de configuration de pyHIDS.  
Évidemment ceci nempêche pas denvoyer les alertes par email ou dans le fichier
syslog en même temps.

Autre amélioration, le fichier de configuration permet maintenant de tout
configurer, enfin!

```ini
[globals]
nb_bits = 752
[irc]
channel = irc://chat.freenode.net/#testpyHIDS
[email]
enabled = 0
mail_from = pyHIDS@no-reply.com
mail_to = you_address
smtp = SMTP_server
username = your_username
password = your_password
[files]
file1 = /etc/crontab
file2 = /boot/grub/grub.cfg
file3 = /etc/shadow
file4 = /etc/networks
[rules]
rule1 = conf /etc
rule2 = list /etc/apt
[commands]
iptables = /sbin/iptables -L
```

La documentation explique le rôle des différentes sections (le fichier n'est pas
très compliqué). La première section indique la taille de la clé RSA à générer.
La section _rules_ permet de fixer des expressions régulières afin de trouver
des fichiers dans un dossier. La dernière section, _commands_ spécifie les
commandes à exécuter pour vérifier si la sortie est toujours la même.

 [1]: https://github.com/cedricbonhomme/pyHIDS
 [2]: https://gitlab.com/esr/irker