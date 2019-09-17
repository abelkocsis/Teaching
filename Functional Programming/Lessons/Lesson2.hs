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

fracAdd :: Double -> Double -> Double -> Double -> Double
fracAdd a b p q = (a * q + p * b) / (b * q)

fracAddTuple :: (Double, Double) -> (Double, Double) -> (Double, Double)
fracAddTuple (a, b) (p, q) = ((a * q + p * b), (b * q))

matches :: (Integer, Integer) -> (Integer, Integer) -> Bool
matches (a, b) (c, d) = b == c
