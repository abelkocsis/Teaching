**Házi feladat 6.1**

Határidő: november 5. (kedd) 23:59

A függgvények definíciója előtt ne felejtsd el megadni azok típusait!

**Feladat 1**

Definiálj egy decompress függvényt, mely visszaállítja a karaktersorozatot a tömörített formából! (Tömörítás az [órai] (https://people.inf.elte.hu/poor_a/fp5.pdf) anyag alapján.)

*Tipp:* itt hasznos lehet a concat :: [[a]] -> [a] és a replicate :: Int -> a -> [a] függvény.

Tesztesetek:

            decompress [(4,'a'), (1,'b'), (2,'c'), (2,'a'), (1,'d'), (4,'e')]            == "aaaabccaadeeee"
            decompress [(1,'o'),(1,'h'),(1,' '),(1,'h'),(1,'e'),(2,'l'),(1,'o'),(2,'!')] == "oh hello!!"
            decompress [] == ""

**Feladat 2**

A tanulók adatait (azonosító, vezetéknév, keresztnév, életkor, teszt eredmények) egy, a következő listához hasonló listában tároljuk:

students = [
    (0, ("Kiss", "Janos", 24), [0,1,1,2,2,1,2,0,0,1]),
    (1, ("Nagy", "David", 11), [0,0,0,0,1,1,0,0,1,0,1]),
    (2, ("Horvath", "Jozsef", 20), [1,1,2,2,1,2,0,1,2])
    ]

Definiáljunk egy *studentResults* egyparaméteres függvényt, mely kigyűjti a 15 évnél idősebb és 25 évnél fiatalabb emberek tesztjeinek összegét a nevükkel együtt egy listába. A függvény a praméterben megadott listával dolgozzon.

Tesztesetek:

            studentResults students == [("Kiss Janos",10),("Horvath Jozsef",12)]


**Feladat 3**

Állítsuk elő azt a *stringEncode* függvényt, mely elkódolja a paraméterül kapott karakterlistát a következő szabály alapján: a szöveg minden betűt a 2-vel utána lévő karakterre cserél, az utolsó két betűt pedig 'z'-re.

*Tipp:* Először állítsuk elő a *coder* listát, ami (betű, betűelkódolás) párokból áll. A *zip* függvény segíthet.

Tesztesetek:

            stringEncode "a" == "c"
            stringEncode "e" == "g"
            stringEncode "aaabbcc" == "cccddee"
            stringEncode "szia" == "uzkc"

**Kérdőív**

Kérlek, szánj pár percet a kérdőív kitöltésére, ezzel segítve a gyakorlatok jobbá tételét! :)

Link: https://forms.gle/h2TukqrrfMM4nETo9