import Data.List --11/4-es feladathoz

--https://people.inf.elte.hu/poor_a/fp10.pdf

--9
takeWhile' _ [] = []
takeWhile' f (x:xs)
    | f x = x : takeWhile' f xs
    | otherwise = []

--10
dropWhile' _ [] = []
dropWhile' f (x:xs)
    | f x = dropWhile' f xs
    | otherwise = x:xs

--11
dropWord w = dropWhile' (\x -> x /= ' ') w

--12
users = [ ("mrbean", "4321"), ("admin", "s3cr3t"), ("finn", "algebraic")]

doesUserExist nev us = any (\(fhnev, num) -> fhnev == nev ) us

--https://people.inf.elte.hu/poor_a/fp11.pdf

--1
dropSpaces w = dropWhile (\x -> x == ' ') w

--2
trim w = reverse (dropSpaces (reverse (dropSpaces w) ))

--3
monogram nev = unwords (map (\(x:xs) -> x : ".") (words nev))

--4
--import a fájl elején!
uniq :: Ord a => [a] -> [a]
uniq l = map (\(x:xs) -> x) (group (sort l))

--5
repeated l = map (\(x:xs) -> x) (filter (\l2 -> length l2 > 1) (group (sort l)))

--6
zipWith' _ _ [] = []
zipWith' _ [] _ = []
zipWith' f (x:xs) (y:ys) = (f x y) : zipWith' f xs ys

--7
dotProduct v1 v2 = sum (zipWith' (*) v1 v2)

--8
isPrime 0 = False
isPrime 1 = False
isPrime 2 = True
isPrime n = (filter (\a -> mod n a == 0) [2..n-1]) == []

--9
primes = [a | a <- [1..], isPrime a]

--10
iterate' f a0 = a0 : (iterate' f (f a0))