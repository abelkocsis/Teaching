--https://people.inf.elte.hu/poor_a/fp4.pdf
isLetter :: Char -> Bool
isLetter a = elem a ['A'..'z']

isDigit :: Char -> Bool
isDigit a = elem a ['0' .. '9']

mountain :: Integer -> [Integer]
mountain a = [1..a] ++ [a-1,a-2..1]

--http://lambda.inf.elte.hu/Comprehensions.xml
--Feladat: A 2 hatványai [*]
fel1 = [2^i | i <- [0..10]]

--Feladat: Az első 10 négyzetszám kétszerese
fel2 = [2*i*i | i <- [0..9]]

--Feladat: False és True felváltva
fel3 = take 10 (cycle [False, True])
--fel3 = [even n | n<-[1..10]] :: [Bool]

--Feladat: Nagy 2 hatvány keresés [*]
fel4 = head [2^x | x <- [1..], 2^x > 10^20]

--Feladat: Prímvizsgálat [*]
fel5 = [n | n<-[2.. floor (sqrt 123457)], (123457 `mod` n == 0)] == []

--Feladat: Dominók [*]
fel6 = [(i, j) | i <- [0..9], j <- [i..9]]

--Feladat: Hónapok és napok [*]
fel7 = [(h, n) | h <- [1..12], n <- [1..31], (n < 31 || elem h [1,3,5,7,8,10,12]) && (n < 29 || h /= 2)]

--Feladat: Sorszámozás [*]
fel8 = zip [1..] ['a'..'z']

--Feladat: Az összes természetes számpár
fel9 = [(a, n-a) | n <- [0..], a <- [0..n]]

--Feladat: 1, 2, 2, 3, 3, 3, … [*]
fel10 = [i | i <- [1..], j <- [1..i]]

--Feladat: 1, 2, 1, 2, 3, 2, 1, … [*]
fel11 = concat [[a | a <- [1..n]] ++ [n-1,n-2..2] | n <- [2..]] d