data Bizottsag = Tudomanyos | Kozossegi | Kommunikacios
    deriving(Eq,Show)

type Nev = [Char]

data ValasztmanyiTag = Elnok Nev | Alelnok Nev | BizottsagiElnok Nev Bizottsag
    deriving(Eq,Show)

getName :: ValasztmanyiTag -> Nev
getName (Elnok n) = n
getName (Alelnok n) = n
getName (BizottsagiElnok n _) = n

getPosition :: ValasztmanyiTag -> [Char]
getPosition (Elnok _) = "Elnok"
getPosition (Alelnok _) = "Alelnok"
getPosition (BizottsagiElnok _ b) = show b ++ " bizottsag elnoke"

type Valasztmany = [ValasztmanyiTag]
aktualisValasztmany :: Valasztmany
aktualisValasztmany = [(Elnok "Kocsis Abel"), (Alelnok "Remai Martin"), (BizottsagiElnok "Toth Lilla" Kommunikacios)]

getCurrentPosition :: Nev -> Valasztmany -> Maybe [Char]
getCurrentPosition n [] = Nothing
getCurrentPosition n (x:xs)
    | getName x == n = Just (getPosition x)
    | otherwise = getCurrentPosition n xs

addTag :: ValasztmanyiTag -> Valasztmany -> Maybe Valasztmany
addTag vt cv  = doaddTag (getCurrentPosition (getName vt) cv)
    where
        doaddTag Nothing = Just (vt : cv)
        doaddTag _ = Nothing

