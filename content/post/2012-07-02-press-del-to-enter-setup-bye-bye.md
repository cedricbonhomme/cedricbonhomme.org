---
title: “Press DEL to enter SETUP”, bye bye?
author: Cédric Bonhomme
type: post
date: 2012-07-02T11:08:15+00:00
categories:
  - Computer
  - Security
tags:
  - bootloader
  - canonical
  - efi
  - Linux
  - microsoft
  - SecureBoot
  - Ubuntu
  - uefi

---
![Award BIOS startup in 1997](/images/blog/2012/07/AwardBIOS_startup.png)

J'aime bien ce passage:

> So EFI has this cool shell, a loadable driver framework, and other nice features. Where &#8220;nice&#8221; obviously means &#8220;much more complex than the simple things they designed in the late seventies back when people were stupid and just wanted things to work&#8221;.

Tiré de [cette conversation][1]. Ça résume tout très bien.

J'ai changé d'ordinateur au bon moment avec ma nouvelle Debian.
Les nouvelles machines pré-installées avec Ubuntu devront inclure obligatoirement une
clé signée par Microsoft ([Winqual][2]), plus une clé Ubuntu. Cependant avec EFI il est
possible dinstaller une clé générée soi-même en désactivant d'abord Secure Boot
(mais je ne pense pas qu'on puisse remplacer la clé de Microsoft).
GRUB 2 sur Ubuntu devrait laisser place à efilinux (Linux supporte EFI depuis 2000) car
des personnes chez Ubuntu pensent qu'il y a des problèmes avec la license GPLv3
(en rapport avec la clé privée que Canonical gardera sur ces serveurs).
Ce qui est [faut][3], il semble. Et donc, espérons le, daprès [ce mail][4] Canonical
devrait changer de position.

Je me demande pourquoi on ne pense pas à des alternatives comme [TrustedGRUB][5]
(dont Microsoft pourrait sinspirer) supportant TPM qui est quand même à la base fait
pour ça. Au lieu de virer BIOS qui fait bien son travail, amorcer le système
(ou laisser GRUB le faire).

Et qu'en est-il des appareils utilisant [le processus de démarage][6] de Chromium OS? 
 a lair bien intéressant et est compatible avec TPM. Je vois ici des idées plus
 innovantes et dont le but n'est pas juste de bloquer la concurrence sous prétexte
 d'augmenter la <del datetime="2012-07-02T09:02:26+00:00">complexité</del> sécurité des
 systèmes. Décidemment il y a des entreprises qui veulent vraiment faire perdre du temps
 au développement de l'informatique avec des conneries. Conneries que l'on est obligé de
 trainer pendant des années pour finalement les abandonner. Heureusement Linux avance à
 une vitesse supérieure et rend déjà EFI inutile. Via [ce patch][7] (Linux 3.3), il est
 possible de charger une image du noyau sans avoir à passer par le chargeur d’amorçage.
 L’option de configuration EFI_STUB modifie l’image du noyau bzImage en ajoutant des
 informations dans les champs libres des en‐têtes. On peut dire merci à Matt Fleming.
 La phase d'amorçage n'existe plus vraiment finallement.

 [1]: http://kerneltrap.org/node/6884
 [2]: http://en.wikipedia.org/wiki/Winqual
 [3]: http://www.fsf.org/campaigns/secure-boot-vs-restricted-boot/whitepaper-web
 [4]: https://lists.ubuntu.com/archives/ubuntu-devel/2012-June/035448.html
 [5]: http://sourceforge.net/projects/trustedgrub/
 [6]: http://www.chromium.org/chromium-os/chromiumos-design-docs/verified-boot
 [7]: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commitdiff;h=291f36325f9f252bd76ef5f603995f37e453fc60
