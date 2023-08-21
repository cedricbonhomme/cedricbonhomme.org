---
title: pyAggr3g470r 5.1 – Changelog
slug: pyaggr3g470r-5-1-changelog
author: Cédric Bonhomme
type: post
date: 2014-05-13T21:08:34+00:00
categories:
  - Programming
tags:
  - changelog
  - python
  - Heroku
  - postmark
  - pyAggr3g470r

---
Le changelog est court pour [cette version][1]:

  * la [page de création de compte][2] contient maintenant un captcha (comme annoncé précédemment);
  * un email de confirmation de création de compte est maintenant envoyé aux utilisateurs. Pour cela le service [Postmark][3] est utilisé. J'ai ajouté cette fonctionnalité car quelques personnes utilisent déjà de fausses adresses emails.

 [1]: https://freecode.com/projects/pyaggr3g470r/releases/363683
 [2]: https://pyaggr3g470r.herokuapp.com/signup/
 [3]: https://addons.heroku.com/postmark
