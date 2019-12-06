**Házi feladat 10**

Határidő: december 10. (kedd) 23:59

A függgvények definíciója előtt add meg a típusaikat.

**Feladat 1**

Hozz létre egy `Subject` adattípust, mely tárgyat jellemez a szintjével (BSc vagy MSc), nevével (String) a kreditértékével (Int)! Ahol lehet, használj típusszinonímát!

**Feladat 2**

Definiálj egy `showSubject` függvényt a `Subject` szöveggé alakításához!

Tesztesetek:

            showSubject (BSc "funkcionalis programozas" 5) == "BSc, funkcionalis programozas, 5 kredit"
            showSubject (BSc "anal3EA" 3) == "BSc, anal3EA, 3 kredit"
            showSubject (BSc "gtlib" 2) == "BSc, gtlib, 2 kredit"
            showSubject (MSc "halado haskell" 3) == "MSc, halado haskell, 3 kredit"

**Feladat 3**

Definiálj egy `Result` adattípust, mely egy tárgyat, és annak eredményét (Integer) tárolja!

**Feladat 4**

Definiálj egy `showSubResult` függvényt, mely szöveggé alakítja a `SubResult` értékét.

**Feladat 5**

Definiálj egy `equalsResults` függvényt, mely két eredményről eldönti, hogy megegyeznek-e! Ha nem két különböző tárgyről van szó, dobjunk errort!

Tesztesetek:

            equalsResults (R (BSc "gtlib" 2) 5) (R (BSc "anal3EA" 3) 5)
            not (equalsResults (R (BSc "gtlib" 2) 5) (R (BSc "anal3EA" 3) 4))
            equalsResults (R (BSc "gtlib" 2) 5) (R (MSc "fp" 2) 5)
            equalsResults (R (BSc "gtlib" 2) 5) (R (BSc "gtlib" 2) 4)   ---> Exception: Same subjects!
