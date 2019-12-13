**12. házi feladat**

A házi feladat megoldása nem kötelező, de segít a vizsgára való készülésben.

**Feladatleírás**

Legyenek adottak a következő típusszinonímák és saját típusok:
```
data Bizottsag = Tudomanyos | Kozossegi | Kommunikacios
    deriving(Eq,Show)

type Nev = [Char]

data ValasztmanyiTag = Elnok Nev | Alelnok Nev | BizottsagiElnok Nev Bizottsag
    deriving(Eq,Show)
```

**1. feladat**
Írjunk függvényt, mely lekéri a választmányi tag nevét!

            getName :: ValasztmanyiTag -> Nev
            getName (Elnok "Joska Pista") == "Joska Pista"
            getName (Alelnok "Alelnok Aladar") == "Alelnok Aladar"
            getName (BizottsagiElnok "Bizottsagi Bernadett" Kommunikacios) == "Bizottsagi Bernadett"

**2.feladat**

Készítsünk függvényt, mely az adott tag tisztségét képes szövegként visszaadni.


            getPosition :: ValasztmanyiTag -> [Char]
            getPosition (Elnok "Joska Pista") == "Elnok"
            getPosition (BizottsagiElnok "Bizottsagi Bernadett" Kommunikacios) == "Kommunikacios bizottsag elnoke"
            getPosition (Alelnok "Alelnok Aladar") == "Alelnok"

Másoljuk be a következő típusszinonímát és listát a fájlunkba!

```
type Valasztmany = [ValasztmanyiTag]
aktualisValasztmany :: Valasztmany
aktualisValasztmany = [(Elnok "Kocsis Abel"), (Alelnok "Remai Martin"), (BizottsagiElnok "Toth Lilla" Kommunikacios)]
```

**3. feladat**

A következő függvény lekéri egy adott nevű ember pozicióját Maybe típusba csomagolva. Ha nincs neki, az eredmény `Nothing`.

            getCurrentPosition :: Nev -> Valasztmany -> Maybe [Char]
            getCurrentPosition "Kocsis Abel" aktualisValasztmany == Just "Elnok"
            getCurrentPosition "Toth Lilla" aktualisValasztmany == Just "Kommunikacios bizottsag elnoke"
            getCurrentPosition "Joska Pista" aktualisValasztmany == Nothing

**4. feladat**

Ha tudunk, adjunk hozzá új embert a listához! Ha már tagja, az eredmény legyen `Nothing`!

            addTag :: ValasztmanyiTag -> Valasztmany -> Maybe Valasztmany
            addTag (BizottsagiElnok "Sinka Andor Denes" Tudomanyos) aktualisValasztmany == Just [BizottsagiElnok "Sinka Andor Denes" Tudomanyos,Elnok "Kocsis Abel",Alelnok "Remai Martin",BizottsagiElnok "Toth Lilla" Kommunikacios]
            addTag (Alelnok "Remai Martin") aktualisValasztmany  == Nothing

**Tipp**

A megoldásodba másold be a feladatban meghatározott típusokat és szinonímákat is!