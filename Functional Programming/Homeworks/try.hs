type Name = [Char]
type Kredits = Int
data Subject = BSc Name Kredits | MSc Name Kredits
    deriving (Show, Eq)

showSubject :: Subject -> [Char]
showSubject (BSc n k) = "BSc, " ++ n ++ ", " ++ show k ++ " kredit"
showSubject (MSc n k) = "MSc, " ++ n ++ ", " ++ show k ++ " kredit"

data Result = R Subject Integer
    deriving Show

equalsResults (R s1 i1) (R s2 i2) 
    | s1 == s2 = error "Same subjects!"
    | otherwise = i1 == i2