---
title: IP-Link – Twelve years after
slug: ip-link-twelve-years-after
author: Cédric Bonhomme
type: post
date: 2022-01-27T22:28:45+00:00
categories:
  - Network
tags:
  - python
  - IP-Link
  - network
  - visualization

---
![GraphViz visualization](/images/blog/2022/01/graphviz.png)

It is now about twelve years that I maintain
[IP-Link](https://git.sr.ht/~cedric/ip-link). No big new features since recently
but the code is still working well, evolving and using up-to-date libraries.
Even better, I am now using [Pypacker](https://gitlab.com/mike01/pypacker) for
the parsing of the network captures. Its a quite a cool improvement.
The parsing is way faster than before, like **wayyyyyy faster!**

The picture above represents approximately five minutes of a classical network
activity of my desktop computer just after I turn it on. Some IRC, XMPP, Web
browsing, email checking, RSS fetching, etc.

You can try with the simple example from the README file:

```bash
$ mkdir captures data
$ sudo tcpdump -p -i eth0 -s 0 -w captures/snif.pcap
$ ip-link/pcap_to_object.py -i captures/snif.pcap -o data/dic.pyobj
$ ip-link/object_to_graphviz.py -i ./data/dic.pyobj
$ dot -Tpng -o ./data/graphviz.png ./data/ip.dot
```

Before, you will have to install few dependencies. This can be achieved easily
with [Poetry](https://python-poetry.org). Everything is explained in the README
file (RTFM, please ;-). The whole thing is also a lot easier to install.
It was not the case at all when i started this project.

If you care, more details below about my PCAP analysis.

```bash
$ mkdir captures data

(ip-link-862Mi5xF-py3.10) cedric@numero5:~/git/IP-Link$ sudo tcpdump -p -i enp5s0 -s 0 -w captures/snif.pcap
&#91;sudo] password for cedric: 
tcpdump: listening on enp5s0, link-type EN10MB (Ethernet), snapshot length 262144 bytes
^C126799 packets captured
126804 packets received by filter
0 packets dropped by kernel

(ip-link-862Mi5xF-py3.10) cedric@numero5:~/git/IP-Link$ ls -lh captures/
total 154M
-rw-r--r-- 1 tcpdump tcpdump 154M janv. 27 22:57 snif.pcap
(ip-link-862Mi5xF-py3.10) cedric@numero5:~/git/IP-Link$ 
(ip-link-862Mi5xF-py3.10) cedric@numero5:~/git/IP-Link$ 
(ip-link-862Mi5xF-py3.10) cedric@numero5:~/git/IP-Link$ time ip-link/pcap_to_object.py -i captures/snif.pcap -o data/dic.pyobj
WARNING (<module>): Couldn't load netifaces, some utils won't work
Reading pcap file…
Serialization…

real    0m4,074s
user    0m3,978s
sys     0m0,097s

(ip-link-862Mi5xF-py3.10) cedric@numero5:~/git/IP-Link$ time ip-link/object_to_graphviz.py -i ./data/dic.pyobj
Loading dictionary…
Creating GraphViz DOT file…
Writting file.

real    0m0,044s
user    0m0,040s
sys     0m0,004s

(ip-link-862Mi5xF-py3.10) cedric@numero5:~/git/IP-Link$ dot -Tpng -o ./data/graphviz.png ./data/ip.dot

(ip-link-862Mi5xF-py3.10) cedric@numero5:~/git/IP-Link$ xdg-open ./data/graphviz.png &
&#91;1] 20321
&#91;1]+  Done                    xdg-open ./data/graphviz.png
```

And now just for the pleasure, an other visualization.
A Chord diagram generated with IP-Link and Circos:

![CIRCOS visualization](/images/blog/2022/01/tBot-Circos.png)
