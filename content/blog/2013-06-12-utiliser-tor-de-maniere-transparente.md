---
title: Utiliser Tor de manière transparente
slug: utiliser-tor-de-maniere-transparente
author: Cédric Bonhomme
type: post
date: 2013-06-12T12:34:44+00:00
tags:
  - anonymity
  - Privoxy
  - Security
  - Tor

---
Voici la procédure si vous désirez que toutes vos applications clientes
(navigateurs, kmail, apt-get, etc.) passent par Privoxy/Tor pour les connexions
HTTP.

## Éditez le fichier /etc/privoxy/config

Vous devez avoir:

```bash
forward-socks5   /               127.0.0.1:9050 .
listen-address 127.0.0.1:8118
accept-intercepted-requests 1
```

## Configurez iptables

```bash
iptables -t nat -A OUTPUT -p tcp --dport 80 -m owner --uid-owner root -j ACCEPT
iptables -t nat -A OUTPUT -p tcp --dport 80 -m owner ! --uid-owner privoxy -j REDIRECT --to-port 8118
```

Test:

```bash
curl -s http://check.torproject.org | grep -i 'Congratulations'
```

## Autre solution

Valable si vous utilisez KDE. Un panneau de configuration permet de demander
aux applications KDE de passer par le proxy, comme le montre la capture
ci-dessous.

![kdesecure](/images/blog/2013/06/kdesecure.png)
