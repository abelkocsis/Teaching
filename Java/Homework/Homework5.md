A házi feladat megoldása opcionális, de nagyban segíti a felkészülést az órai eleji és az év végi ZH-ra.


**Feladat1**

Az alábbi feladatban egy játék programozása során felmerülő problémákat oldjuk meg interfészek és osztályok segítségével. 

  * A *Buildable* interfész garantálja, hogy az osztálynak van *getCoordinate()* metódusa, mely egy int tömbbel tér vissza és nincs bemenő paramétere.
  
  * A *CanAttack* interfészt implementáló osztályok rendelkezzenek *Attack (Tower t)* metódussal.
  
  * A *Building* osztály mezői az építmény koordinátái, és implementálja a *Building* interfészt. Ezen kívül mezője az építmény neve. Írjuk meg a konstruktorát is, mely az építmény nevét és koordinátáit várja paraméterül.
  
  * A *Tower* osztály a örökölje a Building osztály adattagjait, valamint írjuk meg konstruktorát. Legyen egy hp (int) mezője, melyben az életét tároljuk.
  
  * A *Castle* osztály a *Building* leszármazottja, és van egy *createSoldier()* metódusa, mely egy *Soldier* objektumot hoz létre. Az elkészített *Soldier*eket egy listában tárolja. (A lista tehát a *Castle* adattagja.)
  
  * A *Soldier* osztály implementálja a *Buildable* és a *CanAttack* interfészt. Mezője a koordinátája és a HP-je (int). Az *Attack* metódus egy paraméterül kapott *Tower* HP-ját csökkenti.
  
  * Egy *Tester* osztályban hozzunk létre különböző példányokat, mutassunk példát a polimorfizmusra, szemléltessük a metódusok működését!
  
  

**Feladat2**

A következő feladatban előre megírt interfészekhez kell saját osztályokat írnod.

A [HW5.zip](http://abelkocsis.web.elte.hu/2018-19-2/java/files/HW5.zip)-ben található *AllowedToTeach*, *CanMove*, *CanWriteTest* és *MustLearn* interfészek segítségével hozzunk létre úgy osztályokat, hogy a *TestUniversity* forduljon és a következőt írja a konzolra:

"2 2 Benedek Sandor 12 24 12 12 12 12 6 C++ Java"

Törekedjünk a minél egyszerűbb megvalósításra, valamint a saját logikánkon kívül támaszkodjunk a tesztfájlra.
Feltehetjük, hogy a tesztfájlban nem használt variációkra később sem lez szükségünk. (Pl: nem minden embernek kell tanulnia, de minden ember tud tesztet írni és sétálni, stb.)



