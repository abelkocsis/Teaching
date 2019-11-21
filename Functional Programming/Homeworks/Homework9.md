**Házi feladat 9**

Határidő: november 26. (kedd) 23:59

A függgvények definíciója előtt most NEM kötelező megadnod a típusaikat.

**Feladat 1**

Definiáld az `addOneIf` függvényt, mely a listában szereplő számokhoz hozzáad egyet, ha az adott számra teljesül a paraméterben kapott függvény.

Tesztesetek:

            addOneIf :: (Integer -> Bool) -> [Integer] -> [Integer]
            
            addOneIf even [1,2,3,4,5,6] == [1,3,3,5,5,7]
            addOneIf (\x -> True) [1..100] == [2..101]
            addOneIf (\n -> n < 5) [1..10] == [2,3,4,5,5,6,7,8,9,10]

**Feladat 2**

Definiáld az `ifThen` függvényt, mely ha a lista elemére teljesül az első függvény, alkalmazza rá a másodikat, egyébként változatlanul hagyja.

Tesztesetek:

            ifThen :: (a -> Bool) -> (a -> a) -> [a] -> [a]

            ifThen even (\n -> n + 1) [1,2,3,4,5] == [1,3,3,5,5]
            ifThen (\n -> n == 3) (\n -> n - 3) [1,2,3,4] == [1,2,0,4]
            ifThen not not [True, True, False, True, False] == [True,True,True,True,True]

**Feladat 3**

Definiálj egy `cubeEvens` függvényt, mely a páros számokat a harmadik hatványra emeli, a többit eldobja.

A megoldásban használj magasabb rendű függvényeket!

Tesztesetek:

            cubeEvens [] == []
            cubeEvens [1,2,3,4] == [8,64]
            cubeEvens [1,1,1,1,6,8,10] == [216,512,1000]

**Feladat 3**

Hozd létre (kommentként) a következő függvények névtelen megfelelőjét!

            func a = a + 1
            fuggveny lista elem = lista ++ [elem]
            upperToLower s = map' toLower (filter' isUpper s)
            fst (a,b) = a
            getFirstFirst ((a,b):xs) = a

Példa megoldás:

            -- func:
            -- (\a -> a + 1)