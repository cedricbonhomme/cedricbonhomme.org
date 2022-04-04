---
title: Trois simples étapes pour tester Debian GNU/Hurd
slug: trois-simples-etapes-pour-tester-debian-gnuhurd
author: Cédric Bonhomme
type: post
date: 2013-08-06T07:37:39+00:00
tags:
  - debian
  - GNU
  - Hurd
  - kvm
  - qemu
  - virtualization

---
Quelques étapes et 15 minutes environ. C'est parti:

```bash
$ wget http://people.debian.org/~sthibault/hurd-i386/installer/cdimage/cd-1.iso
$ kvm-img create hurd-install.qemu 3G
$ kvm -m 1G -drive file=hurd-install.qemu,cache=writeback -cdrom cd-1.iso -boot d
```

L'installation est quasiment identique à celle d'un système Debian GNU/Linux, avec
possibilité d'avoir une interface graphique durant l'installation.

À l'avenir démarrer la machine virtuelle de cette manière:

```bash
$ kvm -m 1G -drive file=hurd-install.qemu,cache=writeback
```
