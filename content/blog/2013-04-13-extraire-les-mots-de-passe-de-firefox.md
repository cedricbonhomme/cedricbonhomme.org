---
title: Extraire les mots de passe de Firefox
slug: extraire-les-mots-de-passe-de-firefox
author: Cédric Bonhomme
type: post
date: 2013-04-13T09:21:27+00:00
tags:
  - python
  - firefox
  - password
  - security

---
```python
#!/usr/bin/env python
#
# ffpwdcracker - Crack the passwords stored using Firefox browser. The script currently works only on Linux.
#
# usage: ffpwdcracker [paths_to_location_of_files]
# Run it with no paramters to extract the standard Passwords from all Profiles of the current
# logged in User.
# Required files:
#    + key3.db
#    + signongs.sqlite 
#    + cert8.db 
# are used and needed to collect the passwords.
from ctypes import *
import struct
import sys
import os
import glob
import re
import time
import base64

class SECItem(Structure):
    _fields_ = [('type', c_uint),('data', c_void_p),('len', c_uint)]
        
class secuPWData(Structure):
    _fields_ = [('source', c_ubyte),('data', c_char_p)]

(SECWouldBlock, SECFailure, SECSuccess) = (-2, -1, 0)
(PW_NONE, PW_FROMFILE, PW_PLAINTEXT, PW_EXTERNAL) = (0, 1, 2, 3)

def errorlog(row,path):
    print("----[-]Error while Decoding! writting error.log:")
    print(libnss.PORT_GetError())
    try:
        f = open('error.log','a')
        f.write("-------------------\n")
        f.write("#ERROR in: %s at %s\n" %(path,time.ctime()))
        f.write("Site: %s\n"%row[1])
        f.write("Username: %s\n"%row[6])
        f.write("Password: %s\n"%row[7])
        f.write("-------------------\n")
        f.close()
    except IOError:
        print("Error while writing logfile - No log created!")

# reads the signons.sqlite which is a sqlite3 Database (>Firefox 3)
def readsignonDB(userpath,dbname):
    if libnss.NSS_Init(userpath)!=0:
        print("""Error Initalizing NSS_Init,\n
                propably no usefull results""")
    print("Dirname: %s" % os.path.split(userpath)[-1])
    import sqlite3
    conn = sqlite3.connect(userpath + os.sep + dbname)
    c = conn.cursor()
    c.execute("SELECT * FROM moz_logins;")
    for row in c:
        print("Site: %s" % row[1])
        uname.data  = cast(c_char_p(base64.b64decode(row[6])), c_void_p)
        uname.len = len(base64.b64decode(row[6]))
        passwd.data = cast(c_char_p(base64.b64decode(row[7])), c_void_p)
        passwd.len = len(base64.b64decode(row[7]))
        if libnss.PK11SDR_Decrypt(byref(uname), byref(dectext), byref(pwdata)) == -1:
            errorlog(row, userpath + os.sep + dbname)
        print("Username: %s" % string_at(dectext.data, dectext.len))
        if libnss.PK11SDR_Decrypt(byref(passwd), byref(dectext), byref(pwdata)) == -1:
            errorlog(row, userpath + os.sep + dbname)
        print("Password: %s" % string_at(dectext.data, dectext.len))
        print("")
    c.close()
    conn.close()
    libnss.NSS_Shutdown()

if __name__ == "__main__":
    # Point of entry in execution mode.
    ordner = sys.argv[1:]
    #Load the libnss3 linked file
    libnss = CDLL("libnss3.so")

    pwdata = secuPWData()
    pwdata.source = PW_NONE
    pwdata.data=0

    uname = SECItem()
    passwd = SECItem()
    dectext = SECItem()

    for user in ordner:
        signonfiles = glob.glob(user+os.sep+"signons*.*")
        for signonfile in signonfiles:
            (filepath,filename) = os.path.split(signonfile)
            filetype = re.findall('\.(.*)',filename)[0]
            if filetype.lower() == "sqlite":
                readsignonDB(filepath,filename)
            else:
                print("Unhandled Signons File: %s" % filename)
                print("Skipping") 
```

J'ai trouvé ce script sur Internet et je n'ai pas modifié grand chose.
Il est pratique si vous voulez récupérer vos mots de passe rapidement.
Certaines personnes reposent uniquement sur la fonctionalité denregistrement de
mots de passe de Firefox, ce qui peut vite devenir embêtant avec un grand nombre
didentifiants si par mégarde vous perdez le fichier _signongs.sqlite_.
De plus comme on peut le voir ici, il n'est pas très compliqué de récupérer ces
informations.

Pour moi les meilleures solutions (certes contraignantes) pour stocker vos
identifiants de manière sécurisée sont:

- dans un simple fichier texte chiffré avec votre clé privée. Le fichier reste
  chez vous, de préférence pas sur la même machine que la clé;
- sur une feuille de papier. La feuille reste chez vous. Accessoirement le
  masochiste pourra par exemple appliquer un petit ROT13 à la main;
- avec un logiciel comme KDE Wallet. Certainement la solution la moins
  contraignante.

Si un cambrioleur est attiré par votre maison pour ces informations vous avez
d'autres problèmes que moi.