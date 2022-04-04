---
title: iptables et systemd
author: Cédric Bonhomme
type: post
date: 2015-05-12T05:49:23+00:00
tags:
  - firewall
  - iptables
  - Security
  - systemd

---
L'arrivée de [systemd][1] change un tas de choses dans nos habitudes.
Il est évidemment nécessaire de comprendre un minimum son fonctionnement si on
souhaite totalement abandonner [Sysvinit][2]. Une des premières choses sur
laquelle j'ai du me pencher est la configuration du pare-feu (ainsi que des
points de montage). Bref, ce billet va rapidement vous montrer comment
configurer votre pare-feu au démarrage du système.

Tout d'abord, utilisez vous bien systemd en tant que système dinitialisation?
Voici comment avoir la réponse.

```bash
$ ls -lh /sbin/init 
lrwxrwxrwx 1 root root 20 Apr 16 17:53 /sbin/init -> /lib/systemd/systemd
```

Pour la première étape, il convient de sauvegarder les règles actuelles du
pare-feu (voici [mon pare-feu][3]).

```bash
# iptables-save > /etc/iptables.rules
```

La deuxième étape est la création d'un fichier de service systemd afin
d'exécuter iptables au démarrage du système, avec les règles précédemment
sauvegardées. Voici ce fichier:

```ini
[Unit]
Description=Firewall
After=network.target
 
[Service]
Type=oneshot
RemainAfterExit=yes
ExecStart=/bin/sh -c "/sbin/iptables-restore < /etc/iptables.rules"
 
[Install]
WantedBy=multi-user.target
```

Voici encore une des raisons pour laquelle j'aime bien systemd.
Je trouve ce formalisme très clair.

Finalement, il est nécessaire d'activer le nouveau service.

```bash
# systemctl enable iptables.service
# systemctl restart iptables.service
```

Vous pouvez vérifier l'état du service de la manière suivante.

```bash
# systemctl list-unit-files | grep iptables 
iptables.service                           enabled
 
# systemctl status iptables.service
● iptables.service - Firewall
   Loaded: loaded (/etc/systemd/system/iptables.service; enabled)
   Active: active (exited) since Mon 2015-05-11 07:40:14 CEST; 11min ago
 Main PID: 3307 (code=exited, status=0/SUCCESS)
```

C'est terminé, votre pare-feu sera automatiquement configuré aux prochains
démarrages du système.

 [1]: https://en.wikipedia.org/wiki/Systemd
 [2]: https://en.wikipedia.org/wiki/Sysvinit
 [3]: https://git.sr.ht/~cedric/dotfiles/tree/c791559c6a351f6c93009c6f9a4af6d10d109dd1/item/firewall/firewall-workstation.sh