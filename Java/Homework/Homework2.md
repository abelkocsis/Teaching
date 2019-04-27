A feladat megoldása opcionális, de nagyban segíti a felkészülést az óra eleji ZH-ra és az év végi vizsgára is.

**Házi feladat**

  * Hozzunk létre egy Student osztályt, melynek mezői: name (String), zh1(int), zh2(int), potzh(int).
  
  * Készítsünk hozzá konstruktort mely egy paramétert vár bemenetként (name)! A zh1, zh2, potzh alapértéke legyen 1!
  
  * Hozzunk létre egy Semester nevű osztályt, melynek legyen belépési metódusa (main)! Ebben hozzuk létre "Ádám" és "Gergő" nevű Studenteket, állítsuk be a következő étékeket:
  
      * Ádám első ZH-ja 3-as
      
      * Ádám mádosik ZH-ja 4-es
      
      * Gergő első ZH-ja 1-es
      
      * Gergő második ZH-ja 4-es
      
      * Gergő pótZH-ja 3-as
      
  * Írjunk egy result metódust, a Student osztályba, mely egy egész számot ad vissza, a tanuló végső jegyét. Ezt a következő alapján számolja:
  
    * Ha az első két ZH egyike sem egyes, akkor a két szám átlaga, felfelé kerekítve (Ez egy ilyen ideális világ...).
    
    * Különben ha a pótZh is egyes, akkor az eredmény egy.
    
    * Különben a két nem egyes ZH átlaga, kerekítve lefelé.
    
  * A Semester osztály main függvényében hívjuk meg és írassuk ki a két diákunk eredményét!
  
  * Hozzunk létre a Student osztályon belüli boolean visszatérésű equals (Student) metódust, mely eldönti, hogy két diák azonos-e. Két diákot akkor tekintünk azonosnak, ha a neveik megegyeznek, és az eddigi eredményük is! A Semester osztályban szemléltessük működését!
 <br/>
 <br/>
 <br/>

**Kicsit extra feladat** (Nem nehéz, de munkás)

  * A Semester osztályban hozzunk létre egy 100 diákból álló tömböt, legyenek az egyszerűség kedvéért "Tanulo0", "Tanulo1", stb. nevűek.
  
  * Tudjuk, hogy az első ZH-ra minden 5-tel osztható sorszámú tanuló készült csak fel rendesen (azaz Tanulo0, Tanulo5, Tanulo10,...), és ők ötöst is szereztek. Rajtuk kívül minden 3-mal osztható sorszámú tanuló (azaz Tanulo3, Tanulo6, Tanulo9,...) körülbelül felkészült, ők hármasra tudták (volna) maguktól. Tudjuk, hogy aki mellett olyan ült, aki nála jobban tudta, az lesett. Ha mindkét oldalán jobban tudó ült, akkor arról lesett, aki többet tudott. Mivel voltak felügyelők a teremben, ezért a lesés során nem sikerült mindent lelesni, csak egy jeggyel rosszabbra lehetett.
  
   *Pl: 5-tel oszthatók tudták, szóval az eredmények, ha csak őket nézzük: 5 1 1 1 1 5 1 1 1 1 5 1 ...*
  
   *3-mal oszthatókat is belevéve: 5 1 1 3 1 5 3 1 1 3 5 1 ...*
  
   *Lesésekkel együtt: 5 4 3 3 4 5 4 3 3 4 5 4 ...*
  
  * A második ZH-ban már más volt a helyzet, jóval nehezesbbre sikerült. Ott minden 7-gyel oszthatú sorszámú tanult rendesen, de csak 4-esre tudták, mindenki más kettesre tudta magától. A lesések az előzőhöz hasonlóan működtek.
  
  * Ki hányast kapott év végén, ha a pótvizsgán senki sem ment át?
  <br/>
  <br/>
  <br/>
  
  
  
  
**Korábbi gyakorló feladat**

  * Hozzunk létre egy Gyakorlas osztályt, mely rendelkezzen main belépési ponttal! A args bemeneten hajtsuk végre a következő műveleteket:
  
     * Írassuk ki minden elem esetén, hogy hányadik helyen fordul elő utoljára az 'x' karakter!
     
     * Írassuk ki minden 4-nél hosszabb elem esetén azt a részszót, amit az eredeti szót 2-estől a 4-es karakteréig olvasunk! (Pl: "anyaésapa" esetén "nya")
     
     * Tegyük az összes szót kisbetűssé!
     
  * Hozzunk létre egy fact (int n) metódust, melynek visszatérési értéke egy egész szám, és kiszámolja az n szám faktoriálisát rekurzívan!
  
  
  <br/>
  <br/>
  <br/>
  
  
**Extra feladat**

  * Az előző 100 diákunk a következő félévi első ZH-jában 10 diák készült fel ötösre, a többiek nem készültek. Megegyeztek, hogy úgy ülnek le, hogy semmelyik jól felkészült diák se kerüljön se egy sorba, se egy oszlopba, se egy átlóba. Végre tudják-e hajtani ezt egy 10*10 pados termben? Ha igen, rajzoljuk ki a konzolra a megoldást, és hogy ki hányast kapott. (Akik tanultak 5, mellettük ülők 4, stb., az eddigiek alapján.)
  
  * Oldjuk meg tetszőleges n*n-es teremre és n darab jól felkészült diák esetére!
