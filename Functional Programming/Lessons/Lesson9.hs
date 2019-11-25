--https://people.inf.elte.hu/poor_a/fp10.pdf

import Data.Char --3. feladathoz

--1
map' f l = [f a | a <- l ]

--2
filter' f l = [ a | a <- l, f a ]

--3
--import a fájl elején
upperToLower s = map' toLower (filter' isUpper s)

--4
all' _ [] = True
all' f (x:xs) = f x && all' f xs

--5
any' _ [] = False
any' f (x:xs) = f x || any' f xs

--6
hasLongLines w = any' (\l -> length (words l) >= 3) (lines w)

--7
elem' n l = any' (\a -> n == a) l

--8
elem'' l n = any' (\a -> n == a) l
--hasAny a b = any' (elem'' b) a
hasAny a b = any' (`elem` b) a