import Data.Maybe
--https://people.inf.elte.hu/poor_a/fp13.pdf
--1
data Privilege = Unprivileged | Admin
    deriving (Eq, Show)
--2
data Cookie = LoggedIn [Char] Privilege | LoggedOut
    deriving (Eq, Show)
--3
db :: [([Char], [Char], Privilege)]
db = [("dumbledore","abracadabra",Unprivileged), ("root", "secret", Admin), ("bela", "korte", Unprivileged)]

--4
register :: [Char] -> [Char] -> Cookie -> [([Char], [Char], Privilege)] -> [([Char], [Char], Privilege)]
register name pwd (LoggedIn _ Admin) d = (name, pwd, Unprivileged) : d
register _ _ _ d = d

--5
getUser :: [Char] -> [([Char], [Char], Privilege)] -> Maybe ([Char], Privilege)
getUser _ [] = Nothing
getUser user ((u,pa,pr):xs)
    | user == u = Just (pa, pr)
    | otherwise = getUser user xs

--6
--import a fájl elején!
login :: [Char] -> [Char] -> [([Char], [Char], Privilege)] -> Cookie
login name pwd d 
    | result == Nothing = LoggedOut
    | fst (fromJust result) /= pwd = LoggedOut
    | otherwise = LoggedIn name (snd (fromJust result))
        where result = getUser name d

--7
passwd :: [Char] -> Cookie -> [([Char], [Char], Privilege)] -> [([Char], [Char], Privilege)]
passwd _ LoggedOut d = d
passwd _ _ [] = []
passwd newpwd (LoggedIn name p) ((n,pa,pr):xs)
    | name == n = (n,newpwd,pr) : xs
    | otherwise = (n,pa,pr) : (passwd newpwd (LoggedIn name p ) xs)

--8
delete :: [Char] -> Cookie -> [([Char], [Char], Privilege)] -> [([Char], [Char], Privilege)]
delete _ _ [] = []
delete _ LoggedOut db = db
delete _ (LoggedIn _ Unprivileged) db = db
delete name (LoggedIn user Admin) ((n,pa,pr):xs)
    | name == n = xs
    | otherwise = ((n,pa,pr) : delete name (LoggedIn user Admin) xs)

--9
users :: [([Char], [Char], Privilege)] -> [[Char]]
users [] = []
users ((n,pa,pr):xs) = n : users xs