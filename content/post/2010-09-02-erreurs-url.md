---
title: Erreurs URL
slug: erreurs-url
author: Cédric Bonhomme
type: post
date: 2010-09-02T14:31:40+00:00
categories:
  - Python
tags:
  - python
  - pyAggr3g470r
  - urllib2
  - newspipe

---
Lorsque lon développe une application utilisant des ressources Web il est
agréable de pouvoir tester la disponibilité de ces dernières.  
Dans le cas d'un agrégateur ne pas tester les codes erreurs du module
[urllib2][1] peut faire perdre du temps au lecteur. En effet il arrive que
l'adresse d'un blog/flux change. Il peut aussi sécouler un certain temps avant
que le lecteur constate que lagrégateur napporte plus de nouvelles provenant 
'un site (parmi quelques centaines peut être). Et là le lecteur pourrait devoir
rattraper plusieurs semaines de nouvelles. Le pauvre.  
Aussi cela aurait pour effet de laisser des _threads_ utiliser des ressources
inutilement, appeler le _parser_ inutilement, tenter de créer une connexion
inutilement, etc.  
Un agrégateur (le mien en tout cas) demande beaucoup de bande passante (bien
que ponctuellement).

Les bons agrégateurs comme [aKregator][2] testent cela et préviennent
l'utilisateur (via une petite icône pour chaque flux). Ainsi pyAggr3g470r va
bientôt permettre au lecteur de consulter à sa demande les sites ne répondants
plus (et pour quelle raison). Un test sera aussi effectué avant dappeler le
module [feedparser][3] et un message avertira clairement qu'un ou plusieurs flux
n'a pas été récupéré.  
Ceci grâce à [cette fonction][4] (sera certainement utilisée dans la version 2.0):

```python
def detect_url_errors(list_of_urls):
    """
    Detect URL errors.
    """
    errors = []
    for url in list_of_urls:
        req = urllib2.Request(url)
        try:
            urllib2.urlopen(req)
        except urllib2.HTTPError, e:
            # server couldn't fulfill the request
           errors.append((url, e.code, \
                BaseHTTPServer.BaseHTTPRequestHandler.responses[e.code][1]))
        except urllib2.URLError, e:
            # failed to reach the server
            errors.append((url, e.reason.errno ,e.reason.strerror))
    return errors
```

En passant la version 1.9 de pyAggr3g470r vient de sortir, [l'annonce][5].
La récupération du contenu des articles se fait de manière plus intelligente.
Voir [ce _commit_][6] (si vous voulez des explications détaillées…).
Ma base SQLite d'environ 10Mo contient près de 5000 articles exportables en
texte brut ou HTML. Tout va bien 😉

 [1]: http://docs.python.org/library/urllib2.html
 [2]: http://fr.wikipedia.org/wiki/Akregator
 [3]: http://feedparser.org/
 [4]: http://bitbucket.org/cedricbonhomme/pyaggr3g470r/changeset/526ab3b2ca81
 [5]: http://freshmeat.net/projects/pyaggr3g470r/releases/321360
 [6]: http://bitbucket.org/cedricbonhomme/pyaggr3g470r/changeset/57060903db1a
