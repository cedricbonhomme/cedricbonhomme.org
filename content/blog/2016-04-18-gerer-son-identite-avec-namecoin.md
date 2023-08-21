---
title: Gérer son identité avec Namecoin
slug: gerer-son-identite-avec-namecoin
author: Cédric Bonhomme
type: post
date: 2016-04-18T21:43:14+00:00
categories:
  - cryptography
  - Security
tags:
  - cryptography
  - identity
  - keybase
  - namecoin
  - security

---
Comment gérer son identité en ligne ?
Une question récurrente, y compris sur ce blog. Évidemment, nous avons besoin
de **cryptographie**. Dans un [billet précédent][1] j’avais présenté le service
Keybase ([mon profil][2], [accès sans Tor][3]) qui est génial pour un tas de
raisons. Par exemple, ceci permet de prouver mon identité sur le réseau GitHub:

```bash
$ keybase id cedricbonhomme@github
▶ INFO Identifying cedricbonhomme
✔ public key fingerprint: 55F5 D60E EFCA 3591 0089 18E7 A1CB 94DE 57B7 A70D
฿ bitcoin 1GVmhR9fbBeEh7rP1qNq76jWArDdDQ3otZ
✔ "cedricbonhomme" on hackernews: https://news.ycombinator.com/user?id=cedricbonhomme [cached 2016-04-03 10:13:45 CEST]
✔ admin of www.cedricbonhomme.org via HTTP: http://www.cedricbonhomme.org/keybase.txt [cached 2016-04-03 10:13:45 CEST]
✔ "cedricbonhomme" on github: https://gist.github.com/e8cba56e5b85517c6758 [cached 2016-04-03 10:13:45 CEST]
```

La preuve, générée avec ma clé privée, est donc [ici][4].
Le défaut est que nous dépendons d’un service et qu’une connexion Internet est
nécessaire.

Une autre possibilité est d’utiliser Namecoin. Namecoin est une base de données
clés-valeurs **distribuée** basée sur [Block chain][5] et utilisant les
[preuves de travail][6]. Il est donc possible de stocker des informations dans
cette base de données (ce qui permet par exemple d’avoir une
[alternative au DNS][7]).

Pour ça, il va falloir payer avec des Namecoins. Soit directement en achetant
des Namecoins, soit en minant (je ne pense pas qu’aujourd’hui ce soit encore
_facilement_ possible) ou en échangeant des Bitcoins. J’ai choisi d’échanger
quelques Bitcoins (on peut voir la transaction [ici][8]). J’ai ensuite pu
demander l’enregistrement du nouveau champ _cedric_ dans l’espace de noms _id_.
Une fois que cette transaction sera confirmée (quelques heures d’attente), j’ai
pu mettre à jour ce nom avec des informations au format JSON (ce format n’est
pas obligatoire).

```bash
$ namecoind name_filter id/cedric
[
{
"name" : "id/cedric",
"value" : "{\"name\":\"Cedric Bonhomme\",\"email\": \"cedric+namecoin@cedricbonhomme.org\", \"weblog\":\"https://www.cedricbonhomme.org\",\"GitHub\":\"https://github.com/cedricbonhomme\",\"photo_url\":\"https://www.cedricbonhomme.org/cedricbonhomme.png\",\"gpg\":\"55F5 D60E EFCA 3591 0089 18E7 A1CB 94DE 57B7 A70D\"}",
"expires_in" : 35997
}
]
```

Pourquoi ce format ? Car il existe un site Web qui index l’espace de noms _/id_:
[OneID][9] (Génial !). Ce qui permet d’avoir une petite interface Web pour
consulter ces informations et évite d’utiliser la commande `name_filter` de
Namecoin.

 [1]: {{< ref "blog/2015-01-12-keybase.md" >}}
 [2]: http://fncuwbiisyh6ak3i.onion/cedricbonhomme
 [3]: https://keybase.io/cedricbonhomme
 [4]: https://gist.github.com/e8cba56e5b85517c6758
 [5]: https://en.wikipedia.org/wiki/Block_chain_(database)
 [6]: https://en.wikipedia.org/wiki/Proof-of-work
 [7]: http://www.bortzmeyer.org/namecoin.html
 [8]: https://blockexplorer.com/tx/047119c4b094f342bf53e4ae971364924af30acdc99c986ef2705d224e1fdde5
 [9]: http://oneid.io/cedric
