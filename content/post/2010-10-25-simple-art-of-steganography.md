---
title: Simple Art of Steganography
author: Cédric Bonhomme
type: post
date: 2010-10-25T19:42:57+00:00
series: ["Steganography"]
categories:
  - steganography
  - Technology
tags:
  - steganography

---
![Easter Egg](http://upload.wikimedia.org/wikipedia/commons/c/c3/Ukrainskie_pisanki.jpeg)

J'ai reçu il y a quelques jours de [Vincent][1] le mail ci-dessous.

```email
----------  Message transmis  ----------
Sujet : Simple Art of Steganography
Date : jeudi 21 octobre 2010
De : ***
À : ***

(1) Download and open "hug me.jpg" , it is a simple jpg picture, representing
my Teddy bear hugging …;  rename the extension of this file to MP3, so you'll
have "hug me.mp3" , you used to think that it wont work if you simply change
the extension of a file? well you were wrong ! try it, open it [ i used
WINAMP].

can u hear it? can you hear the picture file?!  again change the file extension
to JPG and it is still a pictre file .

(2) Download and open "veronamania.jpg",  change the file extension to RAR, so
you will have "veronamania.rar",  use WinRAR [or other RAR handlers]  to
extract this file and see the other JPG file inside !

well it is called "steganography", refere to link below for complete
definition:
http://www.garykessler.net/library/steganography.html

http://en.wikipedia.org/wiki/Steganography
-------------------------------------------------------
```

Je vais donc lui (par la même occasion, vous) répondre. Donc je pense qu'il n'y a rien
de bien compliqué. Il s'agit de la technique qui consiste à concaténer un fichier
(image, musique, etc.) à une archive. Test:


```bash
$ zip test.zip test.txt
$ cat Stop_And_Stare.ogg test.zip > Stop_And_Stare-1.ogg</pre>
```

Vous pourrez toujours écouter votre musique. En renommant lextension vous retrouverez
le fichier texte. En gros, c'est du au fait que votre logiciel se contente dinterpréter
les données qu'il attend (_tar_/_zip_ décodent les données compressées).
Je préfère de loin
[les méthodes évoquées précédemment sur ce blog]({{< ref "/post/2010-10-01-lena.md" >}}).
Elles sont plus marrantes et nagrandissent pas la taille du fichier.

Tout autre chose, les archives de [pyAggr3g470r](https://git.sr.ht/~cedric/pyAggr3g470r)
présentent maintenant mieux les articles. Évidemment on peut toujours exporter en
fichier brut.

 [1]: https://lita.sciences.univ-metz.fr/~demange/
