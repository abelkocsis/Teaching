-- https://people.inf.elte.hu/poor_a/fp6.pdf

fact :: Integer -> Integer
fact 0 = 1
fact n = n * fact (n - 1)

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib (n-2) + fib (n-1)

pow :: Integer -> Integer -> Integer
pow 0 _ = 0
pow _ 0 = 1
pow a n = a * pow a (n-1)

range :: Integer -> Integer -> [Integer]
range a b
    | a == b = [a]
    | otherwise = a : (range (a+1) b)

range' :: Integer -> Integer -> [Integer]
range' a b
    | a <= b = range a b
    | otherwise = reverse (range b a)

length' :: [a] -> Integer
length' [] = 0
length' (x:xs) = 1 + length' xs

minimum' :: Ord a => [a] -> a
minimum' [a] = a
minimum' (x:xs)
    | x < mini = x
    | otherwise = mini
        where mini = minimum' xs

everySecond :: [a] -> [a]
everySecond [] = []
everySecond [a] = []
everySecond [a, b] = [b]
everySecond (x:y:xs) = y : everySecond xs

elem' :: Eq a => a -> [a] -> Bool
elem' a [] = False
elem' a (x:xs) 
    | a == x = True
    | otherwise = elem' a xs

value :: Eq a => a -> [(a, b)] -> b
value a [] = error "Error!"
value a ((k, e):xs) 
    | a == k = e
    | otherwise = value a xs

value' :: Eq a => a -> b -> [(a,b)] -> b
value' a b [] = b
value' a b ((k, e):xs) 
    | a == k = e
    | otherwise = value' a b xs
