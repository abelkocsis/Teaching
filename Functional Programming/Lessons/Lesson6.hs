--https://people.inf.elte.hu/poor_a/fp5.pdf
import Data.List

--6
alphabet = zip [0..] ['a'..'z']

--7
everyThird = [x | (i, x) <- alphabet, i `mod` 3 == 2]

--8
courses =
    [ ("Programozasi nyelvek II.", [("Horvath", "Istvan", "BDE91E"), ("Fodros", "Aniko", "DDA3KX")])
    , ("Imperativ programozas",    [("Nemeth", "Eniko", "ALX1K0"), ("Horvath", "Istvan", "BDE91E")])
    , ("Funkcionalis programozas", [("Kiss", "Elemer", "ABCDE6"), ("Nagy", "Jakab", "CDE560")])
    ]
 
students c = [nk | (t, l) <- courses, (_, _, nk) <- l, t == c]

--9
calendar = [(h, n) | h <- [1..12], n <- [1..31], n < 29 || h /= 2, n < 31 || h `elem` [1,3,5,7,8,10,12]]

--10
--import!
compress l = [(n, x) | (x:xs) <- group l, let n = length (x:xs)]

--11
decompress l = concat [replicate n x | (n, x) <- l]

--https://people.inf.elte.hu/poor_a/fp6.pdf

--1
fact 0 = 1
fact 1 = 1
fact n = n * fact (n-1)

--2
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

--4
pow 0 _ = 0
pow _ 0 = 1
pow a n = a * pow a (n-1)

--5
range a b
    | a == b = [a]
    | otherwise = a : range (a+1) b

--6
range' a b
    | a <= b = range a b
    | otherwise = reverse (range b a)


--7
length' [] = 0
length' (x:xs) = 1 + length' xs