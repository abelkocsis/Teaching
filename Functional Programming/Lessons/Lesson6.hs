--https://people.inf.elte.hu/poor_a/fp5.pdf
import Data.List

--6
alphabet = zip [0..] ['a'..'z']

--7
everyThird = ['c', 'f'..'z']
everyThird' = [x | (i, x) <- alphabet, i `mod` 3 == 2]
everyThird'' = [c | (i, c) <- alphabet2, i == 2]
    where alphabet2 = zip (cycle [0,1,2]) ['a'..'z']


--8
courses =
    [ ("Programozasi nyelvek II.", [("Horvath", "Istvan", "BDE91E"), ("Fodros", "Aniko", "DDA3KX")])
    , ("Imperativ programozas",    [("Nemeth", "Eniko", "ALX1K0"), ("Horvath", "Istvan", "BDE91E")])
    , ("Funkcionalis programozas", [("Kiss", "Elemer", "ABCDE6"), ("Nagy", "Jakab", "CDE560")])
    ]
 
students c = [nk | (t, l) <- courses, (_, _, nk) <- l, t == c]

--9
calendar = [(h, n) | h <- [1..12], n <- [1..31], n < 29 || h /= 2, n < 31 || h `elem` [1,3,5,7,8,10,12]]

--10
--import!
compress l = [(n, x) | (x:xs) <- group l, let n = length (x:xs)]