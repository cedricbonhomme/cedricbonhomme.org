---
title: Diaspora – Télécharger mon XML
slug: diaspora-telecharger-mon-xml
author: Cédric Bonhomme
type: post
date: 2010-12-08T21:53:52+00:00
tags:
  - diaspora
  - foss
  - freedom

---
Je viens de tester la fonction permettant de récupérer toutes les informations
nous concernant sur Diaspora. Vraiment sympa, vraiment.
Voici mes infos (j'ai retirés certaines données évidemment).

```xml
<?xml version="1.0"?>
<export>
  <user>
    <username>cedric</username>
    <serialized_private_key>-----BEGIN RSA PRIVATE KEY-----
XXX
-----END RSA PRIVATE KEY-----
</serialized_private_key>
    <person>
      <_id>[YOUR ID]</_id>
      <diaspora_handle>cedric@diasp.org</diaspora_handle>
      <url>https://diasp.org/</url>
      <profile>
        <diaspora_handle>cedric@diasp.org</diaspora_handle>
        <first_name>Cédric</first_name>
        <last_name>Bonhomme</last_name>
        <image_url>https://diasp.org/uploads/images/XXX.png</image_url>
        <image_url_small>https://diasp.org/uploads/images/XXX.png</image_url_small>
        <image_url_medium>https://diasp.org/uploads/images/XXX.png</image_url_medium>
        <birthday>Sun Jul 01 00:00:00 UTC 1984</birthday>
        <gender>Homme</gender>
        <bio>Passionate of computer science. I'm working in computer security. I'm an amateur in photography.
http://cedricbonhomme.org/</bio>
        <searchable>true</searchable>
      </profile>
      <exported_key>-----BEGIN RSA PUBLIC KEY-----
MIICCgKCAgEAytLhk4IVJeh5x+6DtTVPLlLAORKbF+FGX0W5FgHn+EK+smcB1pR9
RFneTBljPUiKnLxK7wVZrKoNcv/cX+QaAbm6AR/eviez0REwwpuSmL08s1E28Mik
588niRU0cxb67/1q9ozJEUR1pTxfB4c43K/9Ktd6RmnOsk5UXnouH7QM9sUfV/ea
pSCVUuRnUYLpw9CE3CNImUJWqJbESAkJUdc8bb82MqqsTruS/jl264gMBWsKhRjZ
FH/ErsGjof6ClgdSzEy/+YPy6qJfyvL9sCkVlQUdVewzkLWtX+RT1ydbmee/5mQM
lr+DSzBM8efOm6Dd0iS+RKbQKIhUTqlzxxuadw+BzFMHV9RZyENRcR4T9e2T+jXK
Wk3JKJv70qMWxJOa/NEiDtVmA2ctYDnzDCcrGXVoxdjA6JGtfGoEEy/hpuICfyEV
40+nd2FQ7yOvLxIDLoHTNpmx68erwAOweq8ULFkA78fe16Rayv+MSCrTJIYGtheS
QiXG56FdH/bVcJ2jqAHQ3TKbjcv+CCBPp5Tfc14mnVsSjEAdUEQ4Eo4P5Dbwdc6d
bTnknq6fo2Ao2l8cSrFFOSSfLX7RiNUQgeGl2goJzvp9J6YE7kEUn/4dzpVqp/P/
g5k0ttF95BI5z+QZFu9x5TLPELYeFeVH3z7LlRLSkH+HTVK7ISzU3qsCAwEAAQ==
-----END RSA PUBLIC KEY-----
</exported_key>
    </person>
  </user>
  <aspects>
    <aspect>
      <name>Famille</name>
      <post_ids>
        <post_id>XXX</post_id>
      </post_ids>
    </aspect>
    <aspect>
      <name>Travail</name>
      <post_ids>
        <post_id>XXX</post_id>
      </post_ids>
    </aspect>
    <aspect>
      <name>Amis</name>
      <post_ids>
        <post_id>XXX</post_id>
      </post_ids>
    </aspect>
  </aspects>
  <contacts>
    <contact>
      <user_id>XXX</user_id>
      <person_id>XXX</person_id>
      <aspects>
        <aspect>
          <name>Amis</name>
        </aspect>
      </aspects>
    </contact>
  </contacts>
  <posts>
    <status_message>
      <message>pyAggr3g470r 2.4 est prêt: http://freshmeat.net/projects/pyaggr3g470r/releases/325485 ;-)</message>
      <_id>XXX</_id>
      <diaspora_handle>cedric@diasp.org</diaspora_handle>
      <public>true</public>
      <created_at>Wed Dec 08 18:18:17 UTC 2010</created_at>
    </status_message>
  </posts>
  <people>
    <person>
      <_id>XXX</_id>
      <diaspora_handle>XXX@diasp.org</diaspora_handle>
      <url>https://diasp.org/</url>
      <profile>
        <diaspora_handle>XXX@diasp.org</diaspora_handle>
        <first_name>Aswin Lutchanah</first_name>
        <last_name></last_name>
        <birthday>Tue Jan 31 00:00:00 UTC 1984</birthday>
        <gender>male</gender>
        <bio></bio>
        <searchable>true</searchable>
      </profile>
      <exported_key>-----BEGIN RSA PUBLIC KEY-----
MIICCgKCAgEA8VVeg5/Ez+d+52l62mxS74CFDu6ZvLuL6Zj0asjjAY5zEm+a2KJ4
xI2uFgKVv4ESJlZX2iOb3EUcLK3C04k0K8ay4zS1PKZ6SCPjyKOw4lkaIH8yhnp0
c5H+AdMBbkEZKZ9hFMBY/xpyPxESzSGpK4RDrAZ17mbs5SVF/OaLdkfj5fifx4HX
UCF88vfnN31Jqoo0R23DWmLYEeMCdZu3W0oVV/5q5CsdHjHeXatSCk8NiRlTJhZR
c2b/ChqU7b3CyOU+0uqU1vSlemuKHDUuzEvFCyv7G+xPW/hlUbIs83FGW/w3hure
KU/DyYm1rgfeQTGp9ihVEN/OHSiWi/TH11yBeQEgZtG5QDo24LH6g1Hf/htcl10i
qcPXQ8zn0Jvq++dTcxG7/43Zc+2D4Xqw22iZszQtWbvMEaSlKfF34eCpY1Gh14ho
ioyZOZRPiPq7RyGmubXaEpChhpmVlhDEEi/Dp+0uruGJ+cC6T2TQ/JDw1IYxcIHh
k2sV4ZQcEJ0hpqm7dKy3VWK6hcNHm4WhMaiWEdn4P+yiIDvgfLiw5xMRDzIawbIo
cmOXVskK5lj7KYgixKt4R2IwlekEC0mTVJjDbT1FDr95tUw9Eu3gsitYmq970h4t
sRjG5o41u10yyfh8v/ohbZD4yb53FKKmvgZr058U54IoQEeozx58+ZUCAwEAAQ==
-----END RSA PUBLIC KEY-----
</exported_key>
    </person>
  </people>
</export>
```

On retrouve notamment:

- notre identifiant et adresse Diaspora;
- notre clé RSA privé et notre clé RSA publique;
- notre description, date de naissance, etc.
- nos _aspects_ (groupes) ainsi que les contacts associés;
- nos messages avec leur status (public, réservé à un _aspect_), la date, etc.

On retrouve donc dans ce fichier XML toutes les informations d'un compte
Diaspora. Très pratique pour faire une sauvegarde. On peut très bien vouloir
récupérer son compte avant de le clôturer. C'est peut être aussi pratique pour
changer de POD (mais ça je pense que c'est transparent).

J'aime beaucoup.