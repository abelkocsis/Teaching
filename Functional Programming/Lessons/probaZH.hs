import Data.Char --6. feladathoz
--1
f :: [(Int, Int)] -> Int

f [(a,b), (c,d)] = a + b + c + d
f (x:y:xs) = f [x,y]

--2
timeAdd :: (Int, Int) -> (Int, Int) -> (Int, Int)

timeAdd (h1, m1) (h2, m2) = (mod (h1+h2) 24 + div (m1+m2) 60, mod (m1 + m2) 60 )

--3
isEye ':' = True
isEye ';' = True
isEye _ = False

isMouth ')' = True
isMouth ']' = True
isMouth '}' = True
isMouth _ = False

isSmile :: String -> Bool

isSmile [x, y] = isEye x && isMouth y
isSmile _ = False

--4
bimBam :: Int -> String

bimBam x 
    | mod x 3 == 0 && mod x 5 == 0 = "BimBam"
    | mod x 3 == 0 = "Bim"
    | mod x 5 == 0 = "Bam"
    | otherwise = ""

--5
minList :: [Int] -> [Int] -> [Int]

minList [] _ = []
minList _ [] = []
minList (x:xs) (y:ys)
    | x < y = x : minList xs ys
    | otherwise = y : (minList xs ys)

--6
--import a fájl elején!
wordNumWithCapital :: String -> Int

wordNumWithCapital [] = 0
wordNumWithCapital (x:xs)
    | isUpper x = 1 + wordNumWithCapitalSeged xs 
    | otherwise = wordNumWithCapitalSeged xs

wordNumWithCapitalSeged [] = 0
wordNumWithCapitalSeged [_] = 0
wordNumWithCapitalSeged (x:y:xs)
    | x == ' ' && isUpper y = 1 + wordNumWithCapitalSeged (y:xs)
    | otherwise = wordNumWithCapitalSeged (y:xs)

--7
oneMatrix :: Int -> [[Int]]

oneMatrix n = replicate n (replicate n 1)
