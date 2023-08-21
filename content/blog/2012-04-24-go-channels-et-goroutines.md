---
title: 'Go: Channels et Goroutines'
slug: go-channels-et-goroutines
author: Cédric Bonhomme
type: post
date: 2012-04-24T20:42:53+00:00
tags:
  - go
  - programming

---
![gophercolor](/images/blog/2012/04/gophercolor.png)

Je me suis [lancé dans l'apprentissage][1] du langage [Go][2].
Lorsque Go a été lancé publiquement en 2009 je my étais intéressé que de loin, à mon
regret. Car finalement ce langage est bien intéressant et présente certains avantages,
particulièrement concernant la [programmation concurrente][3]. Ce qui peut résoudre des
problèmes de programmation réseau. Pour le moment les aspects qui me plaisent le plus
sont donc les [channels][4] et les [goroutines][5].

Voici une illustration avec le problème du producteur/consommateur:

```go
package main

import ("fmt")

var done = make(chan bool)
var cake = make(chan int)

func produce (firstname string) {
    for i := 0; i < 10; i++ {
        fmt.Printf("%s make cake %d\n", firstname, i)
        cake <- i
    }
    done <- true
}

func consume (firstname string) {
    for {
      cake_number := <-cake
      fmt.Printf("%s eat cake %d\n", firstname, cake_number)
   }
}

func main () {
   go produce("Alice")
   go consume("Bob")
   go consume("Maxime")
   <- done
} 
```

Aux lignes 24, 25 et 26 nous lançons 3 _goroutines_. Il s'agit en fait de 3
_threads_. Alice va faire des gâteaux pendant que Bob et Maxime vont les manger.

À la ligne 6 nous définissons un _channel_ nommé _cake_. On peut voir un channel
comme un tube FIFO (First In, First Out). Tant que l'envoie de données
(**cake <- i**) dans le tube n'est pas terminé, il n'est pas possible de
recevoir des données (**cake_number := <-cake**) de l'autre côté. Ce qui
permet de synchroniser des _goroutines_ sans utiliser de mutex ou autres
verrous.

Voici donc le résultat de l'exécution de ce petit programme:

```bash
cedric@kubuntu:~$ 6g produc-consum.go
cedric@kubuntu:~$ 6l -o produc-consum produc-consum.6
cedric@kubuntu:~$ ./produc-consum 
Alice make cake 0
Alice make cake 1
Bob eat cake 0
Alice make cake 2
Maxime eat cake 1
Alice make cake 3
Bob eat cake 2
Alice make cake 4
Maxime eat cake 3
Maxime eat cake 4
Alice make cake 5
Alice make cake 6
Bob eat cake 5
Alice make cake 7
Maxime eat cake 6
Alice make cake 8
Bob eat cake 7
Alice make cake 9
Maxime eat cake 8
Bob eat cake 9
```

Personnellement j'aime assez l'idée des _channels_.
Voici [un autre exemple intéressant][4].

 [1]: http://www.librarything.com/work/12464239/book/84651285
 [2]: http://golang.org
 [3]: http://en.wikipedia.org/wiki/Concurrent_computing
 [4]: http://tour.golang.org/#62
 [5]: http://tour.golang.org/#61
