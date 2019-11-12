--https://people.inf.elte.hu/poor_a/fp6.pdf
--11

value k [] = error "no key"
value k ((fk,fe):xs)
    | k == fk = fe
    | otherwise = value k xs

--https://people.inf.elte.hu/poor_a/fp7.pdf
--1
sum' [] = 0
sum' (x:xs) = x + sum' xs 

--2
last' [x] = x
last' (x:xs) = last' xs

--3
and' [] = True
and' (x:xs) = x && and' xs

--4
or' [] = False
or' (x:xs) = x || or' xs

--5
replicate' 0 x = []
replicate' n x = x : replicate' (n-1) x

--6
format n l
    | n <= length l = l
    | otherwise = replicate' (n - length l) ' ' ++ l

--7
insert a [] = [a]
insert a (x:xs)
    | a < x = a : (x:xs)
    | otherwise = x : (insert a (xs))

--8
sort [] = []
sort (x:xs) = insert x (sort xs)

--9
merge [] a = a
merge a [] = a
merge (x:xs) (y:ys) 
    | x < y = x : (merge xs (y:ys))
    | otherwise = y : (merge (x:xs) ys)

--10
mergeSort [] = []
mergeSort [a] = [a]
mergeSort l = merge (mergeSort l1) (mergeSort l2)
    where 
        l1 = take (div (length l) 2) l
        l2 = drop (div (length l) 2) l

--11
breakOn a [] = ([], [])
breakOn a (x:xs)
    | a == x = ([], xs)
    | otherwise = (x : s1, s2)
        where (s1, s2) = breakOn a xs

--12
splitOn a [] = []
splitOn a l = s1 : (splitOn a s2)
    where (s1, s2) = breakOn a l

--13
csv l = [lines a | a <- splitOn '\n' l]