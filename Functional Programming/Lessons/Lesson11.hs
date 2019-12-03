--https://people.inf.elte.hu/poor_a/fp10.pdf

--monogram w = unwords (map (\l-> head l : ".") (words w))
monogram w = (unwords . map (\l-> head l : ".") . words) w

--https://people.inf.elte.hu/poor_a/fp12.pdf
--1
data Day = Hetfo | Kedd | Szerda | Csutortok | Pentek | Szombat | Vasarnap
    deriving Show
--adatkonstruktor
--Show: típusosztály

-- ghci: 
--  :t Hetfo
--  asd = Hetfo
--  asd
-- probléma -> deriving Show

nextDay :: Day -> Day
nextDay Hetfo = Kedd
nextDay Kedd  = Szerda
nextDay Szerda = Csutortok
nextDay Csutortok = Pentek
nextDay Pentek = Szombat
nextDay Szombat = Vasarnap
nextDay Vasarnap = Hetfo
--totális függvény

today :: Day -> Day
today d = d

--2
isFirstDayOfWeek :: Day -> Bool
isFirstDayOfWeek Hetfo = True
isFirstDayOfWeek _ = False

--3
isWeekend :: Day -> Bool
isWeekend Szombat = True
isWeekend Vasarnap = True
isWeekend _ = False

--típusszinonima:
type Hours = Integer
type Minutes = Integer

--4
data Time = T Hours Minutes
    deriving Show
-- ghci: :t T

--5
showTime :: Time -> [Char]
showTime (T a b) = show a ++ "." ++ show b

--megjegyzés:
--instance Show Time where
--    show (T a b) = show a ++ "." ++ show b
--megjegyzés vége

--6
eqTime :: Time -> Time -> Bool
eqTime (T h1 m1) (T h2 m2) = h1 == h2 && m1 == m2

--7
isEarlier :: Time -> Time -> Bool
isEarlier (T h1 m1) (T h2 m2) = h1 < h2 || h1 == h2 && m1 < m2

--8
isBetween t1 t2 t3 = isEarlier t1 t2 && isEarlier t2 t3 || isEarlier t3 t2 && isEarlier t2 t1

--9
time :: Hours -> Minutes -> Time
time h m 
    | h < 0 || h > 23 || m < 0 || m > 59 = error "Invalid time"
    | otherwise = T h m 

--10
data USTime = AM Hours Minutes | PM Hours Minutes
    deriving (Eq, Show)

--11
showUSTime :: USTime -> [Char]
showUSTime (AM h m) = show h ++ "." ++ show m ++ " am"
showUSTime (PM h m) = show h ++ "." ++ show m ++ " pm"

--12
usTimeToTime (AM 12 m) = T 0 m
usTimeToTime (AM h m) = T h m
usTimeToTime (PM 12 m) = T 12 m
usTimeToTime (PM h m) = T (h+12) m

--13
timeToUSTime (T h m)
    | h == 0 = AM 12 m    
    | h < 12 = AM h m
    | h == 12 = PM 12 m
    | otherwise = PM (h-12) m

