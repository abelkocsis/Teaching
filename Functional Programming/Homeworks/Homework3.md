**Házi feladat 3.**

Határidő: október 1. (kedd) 23:59

A függgvények definíciója előtt ne felejtsd el megadni azok típusait!

Figyelem! A feladatok nem feltétlenül mintaillesztéses feladatok.

**Feladat 1**

Keress [Hoogle](https://hoogle.haskell.org)-ön egy olyan típusosztályt, amiről nem beszéltünk órán! Írd le a lényegét, annak pár példányát, és azok jelentőségét!
(A megoldásodat ne a fealdatokkal együtt, hanem utána hozzászólásban add meg!)

**Feladat 2**

Definiálj egy *mul* függvényt, mely képes két Real típusosztályba tartozó számot összeszorozni, és egy Float típussal tér vissza!

Segítség:

- (12::Int) jelentése: a 12-re "rákényszerítjük", hogy Int típusú legyen

- Típusosztályok hierarchiája: http://lambda.inf.elte.hu/Syntax.xml

- Konverziós függvények: http://lambda.inf.elte.hu/Conversion.xml 


Tesztesetek:

            mul 6 3 == 18.0
            mul 6.7 (4/2) == 13.4
            mul (12::Int) (6::Integer) == 72.0
            mul (14.5::Float) (23.4::Double) == 339.3


**Feladat 3**

Írj egy swap függvényt, mely megcseréli egy pár két elemét.

Segítség: típus: swap :: (a, b) -> (b, a)

Tesztesetek:

            swap (3, "hi") == ("hi", 3)
            swap (1, 2) == (2, 1)
            swap ("asd", True) = (True, "asd")


**Feladat 4**

Definiáljuk a moduló 3 szorzást mintaillesztéssel!

Tesztesetek:

        mul3 2 2 == 1
        mul3 0 2 == 0
        2 `mul3` 1 == 2
