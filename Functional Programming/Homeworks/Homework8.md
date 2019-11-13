**Házi feladat 8**

Határidő: november 19. (kedd) 23:59

A függgvények definíciója előtt most NEM kötelező megadnod a típusaikat.

**Feladat 1**

Definiáljuk újra a concat függvényt, amely sok listát fűz össze!

Segítség:  concat' :: [[ a ]] -> [ a ]

Tesztesetek:

            concat' [] == []
            concat' [[1,2], [3,4], [5,6]] == [1, 2, 3, 4, 5, 6]
            concat' [[1..i] | i <- [1..5]] == [1, 1, 2, 1, 2, 3, 1, 2, 3, 4, 1, 2, 3, 4, 5]

**Feladat 2**

Definiáljuk újra az elemenkénti párosítást!

Segítség: zip' :: [ a ] -> [ b ] -> [ (a,b) ]

Tesztesetek:

            zip' [1,2] "abc" == [(1, 'a'), (2, 'b')]
            zip' [1..] ['a'..'f'] == [(1, 'a'), (2, 'b'), (3, 'c'), (4, 'd'), (5, 'e'), (6, 'f')]

**További gyakorló feladatok**

http://lambda.inf.elte.hu/Recursion.xml

