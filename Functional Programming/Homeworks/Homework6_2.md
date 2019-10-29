**Házi feladat 6 - extra**

Határidő: november 5. (kedd) 23:59

Ennek a házinak a megoldása opcionális, tehát nem követelmény a jegy megszerzéséhez.

A függgvények definíciója előtt ne felejtsd el megadni azok típusait!

**Feladat**

Írj egy olyan listagenerátort, ami az összes pozitív egészet tartalmazza a négyzetszámokon kívül!

Tesztesetek:

            take 3 allExceptSquares  == [2,3,5]
            take 8 allExceptSquares == [2,3,5,6,7,8,10,11]
            take 10 (drop 130 allExceptSquares ) == [142,143,145,146,147,148,149,150,151,152]

**Feladat**

Állítsuk a *stars* listát, ami mindig egyel több csillagot tartalmaz szójözökkel elválasztva!

Segítség: Használjuk az *unwords* függvényt!

Tesztesetek:

            take 4 stars == "* **"
            take 14 stars == "* ** *** **** "
            take 34 stars == "* ** *** **** ***** ****** *******"
            take 20 (drop 100 stars) == "*** ************** *"

**Feladat**

Állítsuk elő a következő sorozatot egy *doubleMountain* nevű listába: 0,1,0,-1,0,1,2,1,0,-1,-2,-1,0,1,2,3,2,1,0,-1... !

Tesztesetek:

            take 3 doubleMountain  == [0,1,0]
            take 5 doubleMountain == [0,1,0,-1,0]
            take 12 doubleMountain == [0,1,0,-1,0,1,2,1,0,-1,-2,-1]
            take 10 (drop 460 doubleMountain) == [-10,-11,-12,-13,-14,-15,-14,-13,-12,-11]



**Feladat**

Írjunk olyan kifejezést, amely megadja π közelítő értékét a Leibniz-féle sor részleges előállításával! A képlet a következő:

π / 4 = 1 - (1 / 3) + (1 / 5) - (1 / 7) + (1 / 9) - ...

Természetesen ezt mi csak közelítjük, így elég az első ezer elem összegét venni, majd az eredményt néggyel megszorozni.

*Segítség:* Először érdemes az [1, -3, 5, -7, 9, -11, ... ] végtelen listát előállítani. Majd vegyük ezen elemek reciprokát és adjuk ezeket össze!

Tesztesetek:

            myPi == 3.140592653839794