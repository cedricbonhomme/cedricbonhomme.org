---
title: Installation propre de pyAggr3g470r avec Python 3.3.1
author: Cédric Bonhomme
type: post
date: 2013-04-08T08:03:49+00:00
categories:
  - Python
tags:
  - python
  - distribute
  - GNU/Linux
  - pip
  - pyAggr3g470r

---
Le script ci-dessous permet dinstaller [pyAggr3g470r][1] avec [Python][2] 3.3.1 et [pip][3] de la manière la plus propre possible. Il faudra juste penser à avoir déjà installé [MongoDB][4] sur votre distribution GNU/Linux.

<pre class="brush:bash"># Installation of Python
wget http://www.python.org/ftp/python/3.3.1/Python-3.3.1.tar.bz2
tar -xvjf Python-3.3.1.tar.bz2
rm Python-3.3.1.tar.bz2
cd Python-3.3.1/
./configure
make
sudo make install
cd ..
sudo rm -Rf Python-3.3.1/
# Installation of Distribute and PIP
wget https://pypi.python.org/packages/source/d/distribute/distribute-0.6.36.tar.gz
tar -xzvf distribute-0.6.36.tar.gz
rm distribute-0.6.36.tar.gz
cd distribute-0.6.36/
sudo python3.3 setup.py install
cd ..
sudo rm -Rf distribute-0.6.36/
wget https://github.com/pypa/pip/archive/develop.tar.gz -O pip-develop.tar.gz
tar -xzvf pip-develop.tar.gz
rm pip-develop.tar.gz
cd pip-develop/
sudo python3.3 setup.py install
cd ..
sudo rm -Rf pip-develop/
# Core requirements for pyAggr3g470r
sudo pip-3.3 install feedparser
sudo pip-3.3 install beautifulsoup4
sudo pip-3.3 install mako
sudo pip-3.3 install pymongo
# CherryPy, Minimalist Python Web Framework
wget  https://bitbucket.org/cherrypy/cherrypy/get/3.2.4.tar.gz
tar -xzvf 3.2.4.tar.gz
rm 3.2.4.tar.gz
cd cherrypy-cherrypy-cd8acbc5f2b3/
sudo python3.3 setup.py install
cd ..
sudo rm -Rf cherrypy-cherrypy-cd8acbc5f2b3/
# Language detection
hg clone https://bitbucket.org/spirit/guess_language/
cd guess_language/
sudo python3.3 setup.py install
cd ..
sudo rm -Rf guess_language/
sudo pip-3.3 install pyenchant
# Pillow, for the generation of QR Code
sudo pip-3.3 install pillow
# Finally, download pyAggr3g470r
hg clone https://git.sr.ht/~cedric/pyAggr3g470r
cd pyaggr3g470r/source/
cp cfg/pyAggr3g470r.cfg-sample cfg/pyAggr3g470r.cfg
exit 0
</pre>

Le script est tenu à jour [ici][5]. Vous verrez quavec Python 3.3.1 les performances sont relativement bonnes, surtout avec une base contenant beaucoup d'articles.

 [1]: https://git.sr.ht/~cedric/pyAggr3g470r
 [2]: http://www.python.org/
 [3]: https://en.wikipedia.org/wiki/Pip_(Python)
 [4]: http://www.mongodb.org/
 [5]: https://pyaggr3g470r.readthedocs.org/en/latest/#script-of-installation