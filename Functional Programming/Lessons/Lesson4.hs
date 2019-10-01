import Data.Char

myFirstList = [1,2,3,4]
mySecondList = [1..100]
myThirdList = [1,4..10]
myFourthList = [9,8..0]

--http://lambda.inf.elte.hu/Lists.xml
--Feladat: 10 elem sorbarendezéseinek a száma
f1 = product [1..10]

--Feladat: Kombinációk száma
f2 = div (product [1..70]) (product [1..30] * product [1..40])

--Feladatok: https://people.inf.elte.hu/poor_a/fp4.pdf
isEmptyInt :: [Integer] -> Bool 
isEmptyInt [] = True
isEmptyInt [a] = False
isEmptyInt [a, b] = False
isEmptyInt _ = False

isEmptyList :: [a] -> Bool
isEmptyList [] = True
isEmptyList _ = False

headInt :: [Integer] -> Integer
headInt [a] = a
headInt (x:xs) = x

tailInt :: [Integer] -> [Integer]
tailInt [a] = []
tailInt [a, b] = [b]
tailInt (x:xs) = xs

toUpperFirst :: [Char] -> [Char]
toUpperFirst [] = []
toUpperFirst (x:xs) = toUpper x : xs
--import fájl elején!

isLetter' :: Char -> Bool
isLetter' x = elem x ['A'..'z']

isDigit' :: Char -> Bool
--isDigit x = elem x [1..9]
isDigit' x = elem x ['0'..'9']

mountain :: Integer -> [Integer]
mountain n = [1..n] ++ [n-1,n-2..1]

myFifthList = [x | x <- [1..10]]
mySixthList a = [x | x <- [1..10], x > 5]
mySeventhList l = [ 2*x | x <- l ]

divisors :: Integer -> [Integer]
divisors 0 = [1..] --Végtelen lista??
divisors n = [x | x <- [1..n], mod n x == 0]

powersOfTwo = [2 ^ x | x <- [0..]]

leibniz = [1 / (x*2-1) * (-1) ** (x + 1) | x <- [(1.0::Float)..]]
--ell: sum (take 10000 leibniz) * 4

time = [(h, m) | h <- [0..23], m <- [0..59] ]