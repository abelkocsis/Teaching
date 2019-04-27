A házi feladat megoldása opcionális, de nagyban segíti a felkészülést az órai eleji és az év végi ZH-ra.

**Feladat**

  * Hozzunk létre egy com.spanish.divisionuno package-ben lévő Team osztályt!
  
  * Hozzunk létre egy com.international package-ben lévő Player osztály!
  
  * A Team osztálynak legyenek a következő privát mezői: name (String), playersNum (int), players(Player tömb, maximum 4 elemmel)!
  
  * A Player osztálynak legyenek a következő privát mezői: name (String), goal (int), érték(int)!
  
  * Írjunk a Player osztályhoz is konstruktort *name* bemenő adattal!
  
  * Hozzunk létre setter metódust az érték mezőnek! Ha az adat negatív, dobjunk *IllegalArgumentException*-t!
  
  * Írjunk a Team osztályhoz olyan konstruktort, melynek paraméterei: csapatnev (string), jatekosnev1(string), jatekosnev2(string), jatekosnev3(string), jatekosnev4(string), jatekosertek1(int), jatekosertek2(int), jatekosertek3(int), jatekosertek4(int)! Írjuk meg a konstruktort úgy, hogy a bejövő adatok alapján létrehozza a csapat játékosait, beállítja a megfelelő mezőket (érték), és berakja a játékosokat a players tömbbe!
  
  * Kezeljük le, ha a Player osztály Exception-t dob!
  
  * A Team osztályban legyen olyan paraméter nélküli metódusunk, mely megadja, hogy a benne szereplő legértékesenn 3 játékosok összesen mennyit ér.
  
  * A Team osztályban legyen egy olyan (*static*) winner metódusunk, mely két csapatot vár paraméterként, és azzal a csapattal tér vissza, amely legértékesebb 3 játékosának értékének összege nagyobb!
  
  * A Team osztályban legyen egy olyan változónk, mely tárolja az összes csapat összes játékosának értékét!
  
  * A Team osztályban hozzunk létre egy metódust, mely két játékos csapatok közötti cseréjét hajtja végre!
  
  * Hozzunk létre egy hu.hungarian.mb1 package-be lévő Team osztály, melynek mezői a com.spanish.divisionuno.Team-nek megfelelőek!
  
  * Hozzunk létre a hu.hungarian.mb1.Team osztályban egy winner metódusunk, mely két magyar csapatot vár paraméterként, és kisorsolja, melyik nyer, és ezzel tér vissza!
  
  * Hozzunk létre a com.test package-ban egy BajnokokLigaja osztályt!
  
  * A BajnokokLigaja osztálynak legyen egy olyan winner metódusa, mely egy magyar és egy spanyol csapatról eldönti, melyik nyert, mégpedig a következő képpen:
  
      * Ha a magyar az értékesebb, akkor a magyar nyert
      
      * Ha a spanyol értékesebb, de a magyar legalább fele annyit ér, mint a spanyol, akkor 50%, hogy a spanyol nyer
      
      * Különben 75%, hogy a spanyol nyer.
      
  * Szemléltessük a BajnokokLigaja osztály belépési metódusában a fentiek működését!
  
  
