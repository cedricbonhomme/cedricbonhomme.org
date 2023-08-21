---
title: Pure Python RSA implementation compatible OpenSSL
author: Cédric Bonhomme
type: post
date: 2011-11-07T22:14:15+00:00
tags:
  - cryptography
  - python
  - rsa

---
```bash
$ sudo aptitude install python-pyasn1
$ git clone https://github.com/sybrenstuvel/python-rsa/
$ cd python-rsa
$ sudo python setup.py install
$ cd ..

# Generation of a private key:
$ openssl genrsa -out myprivatekey.pem 512


# To get a Python-RSA-compatible public key from OpenSSL:
$ pyrsa-priv2pub -i myprivatekey.pem -o mypublickey.pem

# Get a public key with the standard method:
$ openssl rsa -in myprivatekey.pem -out public.pem -outform PEM -pubout
writing RSA key


# Test 1: Python-RSA-compatible public key
$ echo hello there > testfile.txt
$ pyrsa-encrypt -i testfile.txt -o testfile.rsa mypublickey.pem
Reading public key from mypublickey.pem
Reading input from testfile.txt
Encrypting
Writing output to testfile.rsa
$ openssl rsautl -in testfile.rsa -inkey myprivatekey.pem -decrypt
hello there


# Test 2: standard public key
$ openssl rsautl -encrypt -inkey public.pem -pubin -in testfile.txt -out file.ssl
$ pyrsa-decrypt -i file.ssl -o file.txt myprivatekey.pem 
Reading private key from myprivatekey.pem
Reading input from file.ssl
Decrypting
Writing output to file.txt
$ cat file.txt 
hello there
```

C'est le [module Python RSA][1] que j'utilise en général.

 [1]: https://stuvel.eu/software/rsa/
