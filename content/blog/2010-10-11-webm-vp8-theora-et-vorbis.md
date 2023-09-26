---
title: WebM, VP8, Theora et Vorbis
slug: webm-vp8-theora-et-vorbis
author: Cédric Bonhomme
type: post
date: 2010-10-11T20:41:11+00:00
tags:
  - ffmpeg
  - HTML5
  - Theora
  - video
  - Vorbis
  - VP8
  - Web
  - WebM

---
L'objectif de ce billet est déclaircir un peu les choses à propos des _nouveaux_ formats
dont on parle de plus en plus. J'espère qu'il vous sera utile, il l'est pour moi.
_Lets go_.

[WebM][1] (.webm) est un **conteneur vidéo** très proche du format [Matroska][2] (.mkv)
conteneur vidéo libre de haute qualité. WebM a été annoncé lors du [Google I/O 2010][3].
Un autre excellent conteneur très connu est [Ogg][4] (.ogv).

Ce qui est important c'est que WebM sera supporté nativement (sans plug-ins) par
Chromium, Google Chrome, Mozilla Firefox et Opera. De plus, voici [un billet][5] d'Adobe
annonçant que Flash supportera également WebM (maintenant pensez à [Google TV][6].
    Pour le moment H.264 est conseillé en cas d'utilisation de Flash 10.1).

Dans un conteneur, on retrouve généralement des codecs, audio et vidéo. Parfois des
sous-titres. WebM utilise pour la vidéo **VP8** et **Vorbis** pour laudio.

### [VP8][7]

Pour expliquer ce quest le [VP8][7] il faut revenir au codec VP3. VP3 est un format
vidéo de compression à perte assez performant. Appartenant initialement à la société
[On2][8]. En juin 2002, On2 a _gracieusement_ cédé VP3 à [Xiph.org Foundation][9]. Le
codec vidéo [Theora][10] est ainsi basé sur VP3. Theora peut être embarqué dans
n'importe quel conteneur, vous le verrez souvent dans du Ogg. Firefox 3.5 supporte
nativement Theora avec le conteneur Ogg. VP8 est un autre codec vidéo dOn2 plus évolué
que VP3 et de qualité _similaire_ à H.264. Le codec vidéo VP8 est plus évolué que Theora.

Depuis le 18 mai 2010 (19 heures 13 minutes 19 secondes précisément ;-)) les
[spécifications de VP8 sont disponibles ainsi qu'un exemple de décodeur/encodeur][11]
(l'annonce dAdobe date du 19 mai 2010). Google a acquis ce format à coup de millions et
a placé son code sous licence BSD. Merci Google (cependant il reste quelques brevets,
héritage d'On2).

### [Vorbis][12]

[Vorbis][12] est la partie audio de WebM. Il s'agit donc d'un codec. Souvent retrouvé
dans des fichiers Ogg. (Personnellement, j'utilise exclusivement ce format pour ma
musique depuis au moins trois ans. Et avec Android, c'est parfait. Il me manque un
décodeur Vorbis dans la voiture…). Bref, ne dites plus jamais _Ogg Vorbis_,
techniquement cela n'existe pas. Firefox 3.5 supporte nativement Vorbis avec le
conteneur Ogg. Android également.

Les Linuxiens connaissent très bien le décodeur [ffmpeg][13] supportant Vorbis. À ce
point on comprend qu'il va être possible de générer des fichiers WebM avec ffmpeg.
ffmpeg est multi-plateformes et sous licence LGPG/GPL. C'est génial. Vorbis est à
présent contenu dans Ogg, Matroska ou WebM.

Donc si comme moi vous utilisez depuis longtemps exclusivement le format Vorbis pour
l'audio, il sera simple d'obtenir des fichiers audio WebM sans ré-encodage ni perte
(ayant compris ce que vous venez de lire ci-dessus). Voir ce [billet][14].
Pour des fichiers vidéo WebM on peut ainsi [simplement utiliser ffmpeg][15].

Comme ci ce n'était pas assez, voilà [WebP][16] (prononcez _weppy_ !).  
Google a annoncé [WebP][17] [le 30 septembre 2010][18]. Il s'agit d'une
**méthode de compression**. Ce sont des images basées sur celles du VP8 (codec vidéo)
dans un conteneur [RIFF][19] (vous connaissez bien les fichiers .wav). (Je ne sais pas
si l'objectif de WebP est de concurrencer frontalement JPEG pour la photographie. Je
n'ai pas l'impression. Je pense que WebP est vraiment là pour améliorer les connections,
faciliter le chargement des pages pour les terminaux mobiles, Google Chrome OS et autres
nouveaux petits appareils. Cependant WebP semble avoir une meilleur compression que
JPEG, surtout pour les petites images. Les sites utilisent pratiquement que des petites
images. Voici une intéressante [galerie][20] de comparaison WebP/JPEG. En tout cas si
WebP devait concurrencer JPEG pour la photographie, je suis pour WebP maintenant que je
comprends un peu mieux ce qu'il y a derrière).

Pour le moment le canal alpha (pour la transparence) n'est pas encore supporté.
(Je pense que rien que pour bouger les choses il serait bien que WebP fasse un peu
trembler le JPEG (ici le Joint Photographic Experts Group). De la même manière que WebM
a fait un chouilla bouger H.264. [Un chouilla][21].

Conseils de lecture pour approfondir:

- [HTML5: Up and Running][22];
- [MPEG-X][23];
- [A gentle introduction to video encoding][24].

 [1]: https://en.wikipedia.org/wiki/WebM
 [2]: https://en.wikipedia.org/wiki/Matroska
 [3]: https://code.google.com/events/io/2010/sessions/webm-open-video-playback-html5.html
 [4]: https://en.wikipedia.org/wiki/Ogg
 [5]: https://blogs.adobe.com/flashplatform/2010/05/adobe_support_for_vp8.html
 [6]: https://code.google.com/tv/web/docs/optimization_guide.html#flash-on-google-tv
 [7]: https://en.wikipedia.org/wiki/VP8
 [8]: https://www.on2.com
 [9]: https://www.xiph.org
 [10]: https://en.wikipedia.org/wiki/Theora
 [11]: https://www.webmproject.org/tools/vp8-sdk/
 [12]: https://en.wikipedia.org/wiki/Vorbis
 [13]: https://ffmpeg.org
 [14]: https://libre-ouvert.toile-libre.org/index.php?article31/transformer-un-ogg-vorbis-en-webm-sans-reencoder
 [15]: https://diveintohtml5.org/video.html#webm-cli
 [16]: https://en.wikipedia.org/wiki/WebP
 [17]: https://code.google.com/speed/webp
 [18]: https://blog.chromium.org/2010/09/webp-new-image-format-for-web.html
 [19]: https://en.wikipedia.org/wiki/Resource_Interchange_File_Format
 [20]: https://code.google.com/speed/webp/gallery.html
 [21]: https://standblog.org/blog/post/2010/09/02/H.264-est-toujours-non-libre-et-non-gratuit
 [22]: https://oreilly.com/catalog/9780596806033
 [23]: https://cedric.bonhomme.free.fr/rapports/mpeg.pdf
 [24]: https://pinboard.in/u:cedricbonhomme/t:give/
