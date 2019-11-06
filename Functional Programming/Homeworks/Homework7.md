**Házi feladat 7**

Határidő: november 5. (kedd) 23:59

A függgvények definíciója előtt most NEM kötelező megadnod a típusaikat.

**Feladat 1**

Állítsuk előz az `[1,4..]` lista n. elemét rekurzívan!

Tesztesetek:

            rec 0 == 1
            rec 1 == 4
            rec 3 == 10
            rec 253 == 760

**Feladat 2**

Definiálj egy függvényt, mely kigyűjti egy lista minden második elemét!

*Segítség:* A `fuggvenynev (x:xs)` mintájára használhatunk `fuggvenynev (x:y:xs)` mintát is. Ekkor `x` az első elem, `y` a második elem, `xs` petig a többi elem. **Fontos!** Ekkor a minta csak 2 vagy több elemű listákra illeszkedik.

Tesztesetek:

            everySecond "Haskell" == "akl"
            everySecond "H" == ""
            everySecond "java" == "aa"
            everySecond "" == ""


**Feladat 3**

Definiáld újra az *elem* függvényt, mely rekurzívan leellenőrzi, hogy egy elem megtalálható-e egy listában!

*Segítség:* elem' :: Eq a => a -> [a] -> Bool

*Segítség2:* Az `Eq` olyan típusosztály, melybe azok a típusok tartoznak, amiket össze tudunk hasonlítani. Az eddigi típusaink (Int, Integer, Bool, Char, stb.) mind ilyenek.

Tesztesetek:

            elem' 'l' "Haskell"
            not (elem' 'v' "Lujza")
            not (elem' 'x' "")