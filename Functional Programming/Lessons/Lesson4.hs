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