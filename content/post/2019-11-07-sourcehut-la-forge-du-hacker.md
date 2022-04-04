---
title: sourcehut – la forge du hacker
slug: sourcehut-la-forge-du-hacker
author: Cédric Bonhomme
type: post
date: 2019-11-07T21:28:12+00:00
categories:
  - Programming
tags:
  - open-source
  - sourcehut

---
[sourcehut][1] est un _nouveau_ projet initié par [Drew DeVault][2] (notamment connu pour [sway][3]). Il s'agit d'une forge composée de différents outils connectés. sourcehut est __sous licence GNU Affero General Public License. Principalement programmé en [Python][4] (avec le micro-_framework_ [Flask][5]). L'interface Web n'utilise pas JavaScript et nen est pas moins agréable à usiter sur différents types d'écrans.

De prime abord le service peu paraître déroutant et austère. sourcehut est composé de _mini-services_ interconnectés ([git.sr.ht][6] pour Git, [hg.sr.ht][7] pour Mercurial, [todo.sr.ht][8] pour gérer les tickets ou _issues_, [man.sr.ht][9] pour la documentation, [builds.sr.ht][10] pour l'intégration continue, [lists.sr.ht][11] pour gérer des _mailing lists_, etc.).

La documentation de sourcehut utilise sourcehut comme par exemple pour [Git][12] ou [paste][13]. Et les annonces à propos des évolutions régulières de la plateforme se font [ici][14] via le service de _mailing lists_. Bref c'est déjà vraiment très complet et super efficace. sourcehut repose sur un paradigme bien différent de GitHub ou de GitLab.

Pour moi c'est vraiment la forge du hacker. De par son pragmatisme, sa souplesse et le fait quelle repose sur des technologies ouvertes. Mais je reviendrai là-dessus plus tard. Attention, sourcehut n'est pas pour le développeur qui compte ces _followers_ ou _stars_ de ces projets. Et ne me faites pas dire ce que je n'ai pas dit. Je pense qu'un aspect un peu plus social pourrait aussi y être intégré. Mais de façon plus saine et pragmatique. Peut être simplement avec un mini-service de communication synchrone (contrairement aux emails) inter-équipe.

Une différence majeure entre sourcehut et GitHub réside dans lusage de Git. Particulièrement le processus de contribution à des projets. Tout le monde connaît bien les _pull requests_. Et bien avec sourcehut c'est beaucoup plus simple. Vous travaillez localement sur votre branche de votre propre dépôt (ou _fork_) et vous pouvez contribuer (en _upstream_) simplement en envoyant un patch par email. Oui je vous entend, mais lisez la suite avant de réagir comme ça. Des milliers de contributeurs de Linux et d'autres gros projets travaillent de cette manière encore aujourd'hui. En fait Git a été conçu pour travailler de cette manière. Envoyer des patchs par email en 2019 peut paraître _old school_, mais pour [avoir essayé][15] je peux vous dire que c'est vraiment simple et même plus rapide que de passer par une interface Web. Dans mon cas j'ai utilisé [cette extension Git][16] qui permet denvoyer un set de commits en _upstream_ par email. Et une fois lextension bien configurée, il suffit par exemple de taper `git send-email HEAD~2`. Qui en quelques sortes est léquivalent d'une _pull request_ sur GitHub. Ensuite le mainteneur [peut appliquer le patch][17]. Aussi l'avantage de l'email pour contribuer à des projets est que vous utilisez des technologies open source. Vous pouvez ainsi utiliser des clients comme Thunderbird ou KMail. Ou directement SMTP si vous utilisez le module Git send-email. Et comme on peut le voir, il est naturellement possible de [discuter sur un patch][18] soumis avant qu'une contribution soit acceptée. Comme une discussion sur GitHub. Sauf que ces discussions je peux les suivre depuis KMail et y prendre part sans ouvrir mon navigateur Web. Alors certes, j'aime beaucoup ce navigateur Web qui est Firefox. Mais ces derniers temps il est beaucoup utilisé pour interagir avec des services propriétaires. Et je trouve ceci assez ironique. Le fait qu'une bonne veille application de bureau permette finalement de communiquer en utilisant des standards, dans le cadre de contributions à des projets open source. Bon, c'est un autre sujet…

Pour finir ce que je trouve assez rigolo avec le service sourcehut ([sr.ht][19]), c'est la page [pricing][20]. C'est exactement mon esprit. Je n'ai jamais dépensé un cent pour GitHub ou GitLab alors que je contribue déjà financièrement à sourcehut. Pour l'instant à hauteur de 50 euros par an. Et si nécessaire je nhésiterai pas à donner plus.

 [1]: https://sourcehut.org/
 [2]: https://drewdevault.com
 [3]: https://github.com/swaywm/sway
 [4]: https://www.python.org
 [5]: https://palletsprojects.com/p/flask/
 [6]: https://git.sr.ht
 [7]: https://hg.sr.ht
 [8]: https://todo.sr.ht
 [9]: https://man.sr.ht
 [10]: https://builds.sr.ht
 [11]: https://lists.sr.ht
 [12]: https://man.sr.ht/git.sr.ht/
 [13]: https://man.sr.ht/paste.sr.ht/
 [14]: https://lists.sr.ht/~sircmpwn/sr.ht-announce
 [15]: https://lists.sr.ht/~sircmpwn/sr.ht-dev/patches/8920
 [16]: https://git-send-email.io
 [17]: https://git.sr.ht/~sircmpwn/todo.sr.ht/commit/732329c04edba96e3ce351f983ad1523e37fa10c
 [18]: https://lists.sr.ht/~sircmpwn/sr.ht-dev/patches/8901
 [19]: https://meta.sr.ht
 [20]: https://sourcehut.org/pricing/