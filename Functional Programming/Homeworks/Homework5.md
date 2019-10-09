**Házi feladat 5.**

Határidő: október 15. (kedd) 23:59

A függgvények definíciója előtt ne felejtsd el megadni azok típusait!

**Feladat 1**

Írj egy *divisors* függvényt, mely egy Integer paramétert vár, és visszatér az önmagán kívüli osztóiból álló listával!

Tesztesetek:

            divisors 2 == [1]
            divisors 12 == [1,2,3,4,6]
            divisors 27 == [1,3,9]
            divisors 32 == [1,2,4,8,16]


**Feladat 2**

Írj egy *isPerfectNumber* függvényt, mely egy Integer paramétert vár, és True-val tér vissza, ha a szám tökéletes!

Segítség: Egy szám tökéletes, ha az önmagánál kisebb osztóinak összege megegyezik a számmal. (https://hu.wikipedia.org/wiki/Tökéletes_számok)

Tesztesetek:

            not (isPerfectNumber 2)
            isPerfectNumber 6
            isPerfectNumber 28

**Feladat 3**

Definiálj egy *perfectNumbers* függvényt, mely egy egész számot vár paraméterül, és visszatér az ennél kisebb vagy egyenlő tökéletes számokból álló listával.

Segítség: használd a feljebb elkészített függvényeket!

Tesztesetek:

            perfectNumbers 2 == []
            perfectNumbers 12 == [6]
            perfectNumbers 30 == [6, 28]
            perfectNumbers 1200 == [6,28,496]

**Feladat 4**

Hozzunk létre egy olyan *modDominos* függvényt, mely egy egész paramétert vár, és egy olyan listával tér vissz, melyben az összes olyan dominó szerepel, amelyen a pöttyök összege osztója a paraméternek. Minden dominó csak egszer szerepeljen (pl a (0,1) és az (1,0) megegyezik). A dominó mindegyik odalán most 1,2,...9 pötty állhat.

Tesztesetek:

            modDominos 1 == []
            modDominos 3 == [(1,2)]
            modDominos 7 == [(1,6),(2,5),(3,4)]
            


