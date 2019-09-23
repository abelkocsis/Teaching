
and' :: Bool -> Bool -> Bool
and' True True = True
and' True False = False
and' False True = False
and' False False = False

or' :: Bool -> Bool -> Bool
or' True True = True
or' True False = True
or' False True = True
or' False False = False

or'' :: Bool -> Bool -> Bool
or'' True _ = True
or'' _ True = True
or'' _ _ = False

xor :: Bool -> Bool -> Bool
xor True False = True
xor False True = True
xor _ _ = False

add2 :: Integer -> Integer -> (Integer, Integer)
add2 0 0 = (0, 0)
add2 1 0 = (1, 0)
add2 0 1 = (1, 0)
add2 1 1 = (0, 1)

paren :: Char -> Char -> Bool
paren '(' ')' = True
paren '[' ']' = True
paren '{' '}' = True
paren _ _ = False

calc :: Integral a => (a, Char, a) -> a
calc (a, '+', b) = a + b
calc (a, '-', b) = a - b 
calc (a, '*', b) = a * b
calc (a, '/', b) = div a b

isSpace :: Char -> Bool
isSpace ' ' = True
isSpace _ = False

inc a = a + b
    where b = 1

inc' a = f
    where f = a + 1

quadratic :: Float -> Float -> Float -> (Float, Float)
quadratic x y z = (mego1 , mego2)
    where 
        mego1 = ((-y) - sqrt (y^2-4*x*z)) / (2 * x)
        mego2 = ((-y) + sqrt (y^2-4*x*z)) / (2 * x)