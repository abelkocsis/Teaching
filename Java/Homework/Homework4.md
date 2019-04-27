**Házi feladat 4**

* A [otdk.txt](http://abelkocsis.web.elte.hu/2018-19-2/java/files/otdk.txt) fájlban OTDK előadások pontszámait tároljuk a következő módon:

    * A fájl egy sora egy résztvevő adatait tartalmazza.

    * Az adatokat szóköz választja el egymástól.

    * Egy résztvevőről a következő adatok szerepelnek ebben a sorrendben:

        * Résztvevő azonosítója (szöveg, space nélkül)

        * Előzetes bírálat alapján kapott pont (szám)

        * Előadásra adott pont, zsűri1 (szám)

        * Előadásra adott pont, zsűri2 (szám)

        * Előadásra adott pont, zsűri3 (szám)

        * Tagozat azonosítója (szám)

* Készítsünk Results osztályt, mely main metódusában beolvassuk az adatokat különböző tömbökbe.

* Írjunk getResult metódust, mely egy String bemenetet vár, a versenyző azonosítóját, és kiírja annak összpontszámát (a végleges az előadásra adott pontok átlagának és az előzetesen kapott pontjának összege)!

* Írjunk winners metódust, mely kiírja minden szekcióban a legtöbb összpontszámút (a végleges az előadásra adott pontok átlagának és az előzetesen kapott pontjának összege)!

* Beépített metódusok segítségével hajtsuk végre az alábbi műveleteket a megadott tömbökön, írjuk ki az eredményüket:

    * Rendezzük betűrendbe növekvően az azonosítókat tartalmazó tömböt

    * Rendezzük növekvő sorrendbe az előzetes bírálat alapján kapott pontszámokat

    * Az első zsűri pontszámaiből készítsünk új tömböt, mely a 3.-tól (22) a 7. pontszámig tartalmazza a pontokat (28)!

    * Másoljuk le értékek szerint a harmadik zsűri pontjaiból álló tömböt egy zsuri3_2 nevű tömbbe!

    * Hasonlítsuk össze, hogy a második és harmadik zsűri ugyan annyi pontokat adott-e. (A két lista emgegyezik-e)

    * Hozzunk létre egy arr nevű tömböt, tölsük fel 100 darab 12-es értékkel

* Beépített metódusok segítségével hajtsuk végre az alábbi műveteleteket a pllm27-es azonosítójú résztvevő előzetes pontszámán beépített metódusok segítségével, írjuk ki az eredményeket:

    * Írassuk ki 2-es számrendszerben

    * A adjuk meg a legmagasabb helyiértéken lévő bitjének helyiértékét

    * Adjuk meg hány darab nullával kezdődik a számot kódoló bitsorozat

    * Adjuk meg a szignumát a számnak

* Saját metódusok tesztelése: hívjuk meg a main metódusban a következő metódusokat:

    * getResult(q38kcs) -> Helyes eredmény: 60 

    * getResult(pmy4i6) -> Helyes eredmény: 47

    * winners() -> Helyes eredmény: pllm27, mxw17s

**Extra feladat**

*Forrás: TEPV 3. forduló*

**Feladat**

Egy dinnyeárus N napon keresztül feljegyezte, hogy kilogrammonként hány forintért tudta eladni a dinnyéjét. Általában a legkorábbi dinnyék a legdrágábbak és utána folyamatosan csökken az áruk – de ez nem igaz feltétlenül minden napra.
Készíts programot, amely minden napra megadja, hogy az adott nap előtt hány napon kellett az adott napi árnál olcsóbban adni a dinnyéjét, valamint az azt követő napok közül hány napon tudta drágábban adni!

**Bemenet**

A standard bemenet első sorában a napok száma van (1≤N≤20000). A következő N sorban a napi dinnyeárak vannak (1≤Di≤100).

**Kiemenet**

A standard kimenet i. sorába azon napok számát kell írni, ahány azt megelőző napon ol- csóbban adta a dinnyét, valamint ahány azt követő napon drágábban adta!
Megjegyzés: a kimenet első sor első száma, valamint az utolsó sor második száma biztosan 0!

A bemeneti és kimeneti fájlok [innen](http://abelkocsis.web.elte.hu/2018-19-2/java/files/hw4.zip) letölthetőek.




