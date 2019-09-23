--http://lambda.inf.elte.hu/Syntax.xml
-- Feladat: Másodpercek száma
mp = 60 * 60 * 24 * 365

-- Feladat: Gömb térfogata
v = 4 * 1.01 ^ 3 * pi / 3

-- Feladat: Oszthatóság
oszthato = 532253373 `mod` 23

-- Feladat: Zárójelezés
mego = 1 + ((2 * (3 ** 4)) / 5)

--http://abelkocsis.web.elte.hu/2019-20-1/fp/gy2.php

x1 :: Int
x1 = 3^100

x2 :: Integer
x2 = 3^100

x3 :: Rational
x3 = 3

x4 :: Rational
x4 = 3.5

x5 :: Rational
x5 = 8 / 12

x6 :: Double 
x6 = 12

--x7 :: Num  Error!

even' :: Integer -> Bool
even' a = a `mod` 2 == 0

distance :: Integer -> Integer -> Integer
--distance :: Num a => a -> a -> a
distance a b = abs (a - b)

fracMul :: Double -> Double -> Double -> Double -> Double
fracMul a b p q = (a * p) / (b * q)

myFirstTuple :: (Integer, Integer) -> Integer
myFirstTuple (a, b) = a

mySecondTuple :: (Integer, Bool) -> Bool
mySecondTuple (a, b) = b

fracMulTuple :: (Double, Double) -> (Double, Double) -> (Double, Double)
fracMulTuple (a, b) (p, q) = (a * p, b * q)

matches :: (Integer, Integer) -> (Integer, Integer) -> Bool
matches (a, b) (c, d) = b == c

--Zárójelezés:

-- 3 + 2 * 3 / 2       ==       (3 + ((2 * 3) / 2))

-- 3 / 3 * 2 ^ 3 + 1       ==       (((3 / 3) * (2 ^ 3)) + 1)

-- 1 + mod 12 3 ^ 2      ==       (1 + ((mod 12 3) ^ 2))

-- inc 3 + 2 - 4 * 23 `div` 2 * 12 ^ 6      ==      (((inc 3) + 2) - (((4 * 23) `div` 2) * (12 ^ 6)))

-- 3 * 2 + 23 / 7 == 12 && True || 0 == div 12 2 ^ 3      ==      (((((3 * 2) + (23 / 7)) == 12) && True) || (0 == ((div 12 2) ^ 3))) 

-- ((3 * (2 + 1)) - (2 ^ (3 + 1)))      ==      3 * (2 + 1) - 2 ^ (3 + 1)

-- ((+) (3 + 1) ((4 * 5) + (1 / 3))) - (5 * 4)      ==      (+) (3 + 1) (4 * 5 + 1 / 3) - 5 * 4

-- ((3 * 2) - ((+) 3 2 ^ 3)) - (12 * (5 / 7)) / ((/) 12 (7 - 2))      ==      3 * 2 - (+) 3 2 ^ 3 - 12 * (5 / 7) / (/) 12 (7 - 2)

