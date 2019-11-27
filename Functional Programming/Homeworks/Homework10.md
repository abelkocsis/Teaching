**Házi feladat 10**

Határidő: december 3. (kedd) 23:59

A függgvények definíciója előtt most NEM kötelező megadnod a típusaikat.

**Feladat 1**

Definiáld két vektor skaláris szorzatát! Használd a `zipWith`-et.

Tesztesetek:

            dotProduct [1, 2] [3, 4] == 11 
            dotProduct [2, 2, 2] [5, 4, 3] == 24 
            dotProduct [3] [2] == 6 
            dotProduct [1..10] [1..10] == 385

**Feladat 2**

Állítsunk elő súlyozott összeget! A súlyok az értékek elé vannak párosítva egy listában.

*Segítség:* `weightedSum :: Num a => [(a,a)] -> a`

Tesztesetek:

            weightedSum [(1,1), (2,2)] == 5
            weightedSum [(1,1)] == 1
            weightedSum [(2,1)] == 2
            weightedSum [(2,1), (3,2), (4,3)] == 20

**Feladat 3**

Állítsuk elő az `editList` függvényt, mely egy a lista végéről eldobja a páros, a lista elejéről pedig a páratlan számokat.

*Tipp:* A reverse függvény jól jöhet, akár többször is.

Tesztesetek:

            editList [1,1,1,2,2,2,3,3,3] == [2,2,2,3,3,3]
            editList [1,1,2,2] == []
            editList [1,1,2,3,4,5,2,2] == [2,3,4,5]

