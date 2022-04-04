---
title: Quelques notes sur Python
author: Cédric Bonhomme
type: post
date: 2010-12-14T21:32:28+00:00
categories:
  - Python
tags:
  - python
  - notes
  - Python

---
[Cool things to know][1].

Avec des choses _pas jolies_ du genre:

<pre class="brush:py">>>> True / False
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
ZeroDivisionError: int division or modulo by zero</pre>

Ou plus _jolies_:

<pre class="brush:py">>>> a_list.insert(0, 'Ω')      
>>> a_list
['Ω', 'a', 1, True, 'Python', 3.1415, 'Toto', 42, False]</pre>

 [1]: http://wiki.cedricbonhomme.org/doku.php/cs_lang:python:things-to-know