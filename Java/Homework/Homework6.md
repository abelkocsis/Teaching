A házifeladat megoldása opcionális, maximum 2 pontot lehet szerezni vele, ami az év végi értékelésbe beleszámít.

**Feladat**

* A com.interfaces package-ben hozzunk létre egy VisitStations interface-t, mely rendelkezik egy void takeIn (int) és egy void takeOff (int) metódussal.

* A com.abstracts package-ben lévő Moveable absztrakt osztály rendelkezzen egy protected maxSpeed (int) mezővel, egy getMaxSpeed() metódussal, mely visszaadja a maxSpeedet, és egy String getVehicle() metódus, melynek törzsét később írjuk meg (a Vehicle nevével tér vissza).

* A com.classes-beli Vehicle osztály örökölje a Moveable osztály adattagjait, ezen kívül rendelkezzen protected String name, protected int passengers és egy protected int tyres mezővel, utóbbi a közlekedési eszköz kerekeinek számát tárolja. Írjunk hozzájuk gettert és settert, az osztálynak egy két paraméteres konstruktora legyen, melyben a nevet és a kerékszámot állítjuk be.

* A com.classes.sub package-ben lévő Train osztály örökölje a Vehicle osztály adattagjait és implementálja a VisitStations interfacet, írjuk meg a szükséges metódusokat, konstruktort (paraméter nélküli). (Tegyük fel, hogy egy vonat 3 vagonból áll, a mozdonnyal együtt 16 kerékkel rendelkezik.) Kapjon a Train osztály egy public int departureTime, public int arrivingTime és egy public int destination mezőt! Írjuk meg a Train osztály helyes equals metódusát!

* Az eddigi interfaceekhez és osztályokhoz, valamint metódusaikhoz írjunk dokumentációs kommenteket!

* A hu.towns package-be hozzunk létre egy Station osztály, melynek mezője egy protected Train lista (trains), és rendelkezik egy addTrain(Train t) és egy getNextTrain() metódussal. Előbbi hozzáad az trains listánkhoz egy vonatot, utóbbi sorban visszatér az azon állomásról induló következő vonattal! (Tehát egy olyan metódus, mely először a legelőször hozzáadott induló vonattal, utána egyel későbbivel, utána a harmadikkal, stb. tér vissza.) Túlindexelés esetén dobjunk Exceptiont!

* A Station osztályhoz adjuk egy firstAvailableAt int mezőt, melyet arra fogunk használni, hogy eltároljuk, az adott napon mikor érhetünk oda leghamarabb. Alapértelmezetten legyen a maximális int érték.

* A com.classes package-be hozzunk létre egy Travel osztályt, mely rendelkezik egy statikus Stationokat tartalmazó stations listával, egy belépési metódussal és egy doTravel (int n, int t, Station d) metódussal!

* A doTravel (int n, int t, Station d) metódus a következőt hajtja végre: a stations listában n-edik helyen (0-tól indexelve) szereplő Stationból t időben indulva végrehajtja az első lehetséges utazást rekurzívan, és eltárolja a Stationokban a firstAvailableAt mezőket. Célunk a d Station firstAvailableAt minimalizálása (tehát ebből a Stationból már nem kell továbbmenni). Ha szükséges, vezessünk be segéd mezőket.

*Példa*

Tekintsük az [alábbi](http://abelkocsis.web.elte.hu/2018-19-2/java/files/graph.png) konstrukciót!
A gráf csúcsai az állomások (S1, S2, stb.), míg az élei a vonatok. Az állomások a stations listánkba az állomások a számozásnak megfelelő sorrendben vannak. (Tehát S1 a 0. helyen, S2 az 1. helyen, stb.)

A vonatok a jelölt állomásokat kötik össze, ezen kívül az adataik:

v1 - departureTime: 5 - arrivingTime: 12

v2 - departureTime: 10 - arrivingTime: 20

v3 - departureTime: 25 - arrivingTime: 30

v4 - departureTime: 12 - arrivingTime: 28

v5 - departureTime: 30 - arrivingTime: 32

v6 - departureTime: 40 - arrivingTime: 45

v7 - departureTime: 42 - arrivingTime: 40

Hívjuk meg a doTravel (0, 7, S4) metódust!

Ekkor a modellezés a következőképpen történik:

- A stations lista 0. állomásából indulunk, azaz az S1-ből.

- Célunk, hogy elérjük az S4 állomást.

- A 7-es időpillanatban indulunk.

- S1-ben vagyunk.

        - Beállítjuk az S1 firstAvailable mezőjét 7-re, hiszen ebben az időpillanatban értük el.

        - Vesszük indulási időben sorban az állomásokat. A v1 indult leghamarabb, de ezt már lekéstük (5. időpillanatban indult, és mi a 7-esben vagyunk).

        - Vesszük a v2-t, ezt elérjük, felszállunk rá. Ez - az adatai alapján - az S2-be szállít minket, és 20-ra érünk oda.

- S2-ben vagyunk.

        - az S2 firstAvailable mezőjét 20-ra, hiszen akkor értünk oda.

        - Vesszük a legelőször induló voantot, v4-et, ezt már lekéstük.

        - Vesszük a másodszorra induló vonatot, v3-at, ezt elérjük, felszállunk rá, mely elszállít minket S3-ba.

- S3-ban vagyunk.

        - Beállítjuk az S3 firstAvailable mezőjét 30-ra, hiszen akkor értünk oda.

        - Vesszük a legelőször induló voantot, v6-ot, ezt elérjük, felszállunk rá, elszállít minket S4-be.

- S4-ben vagyunk.

        - Beállítjuk az S4 firstAvailable mezőjét 45-re, hiszen akkor értünk oda.

        - Elértünk a célállomásra, nem megyünk tovább. 





* A clearFirstAvailableAt() metódus az összes Station firstAvailableAt mezőjét állítsa vissza az eredeti értékre, és a getNextTrain metódusát indítsa előről! (Tehát a következő meghívása az első vonattal térjen vissza)!

*Megjegyzés: ez természetesen nem egy korrekt bejárása a gráfnak, az egyszerűség céljából feltesszük, hogy mindig választhatjuk a lokális maximumot.*

* A Travel osztály main metódusában hajtsuk érjük el a kommentben kért feladatokat:

        public static void main(String[] args){
        
        Vehicle v1 = new Vehicle("auto", 4, 4);
        Vehicle v2 = new Vehicle("busz", 50, 6);
        Train t = new Train ();
        Train t2 = new Train();
        Vehicle v5 = new Vehicle("repulo", 4, 0);


        // Adjuk össze a fenti járművek kerékszámát for ciklus segítségével. (Segédműveletek szükségesek)
        //Eredmeny: 42

        //Tesztek:

        t.departureTime = 12;
        t.arrivingTime = 24;
        t.destination = 1;
        Station s1 = new Station();
        s1.addTrain(t);
        stations.add(s1);

        Train t4 = new Train();
        t4.departureTime = 22;
        t4.arrivingTime = 40;
        t4.destination = 2;
        t2.departureTime = 25;
        t2.arrivingTime = 31;
        t2.destination = 2;
        Station s2 = new Station();
        s2.addTrain(t4);
        s2.addTrain(t2);
        stations.add(s2);

        Train t3 = new Train();
        t3.departureTime = 33;
        t3.arrivingTime = 40;
        t3.destination = 3;
        Train t5 = new Train();
        t5.departureTime = 35;
        t5.arrivingTime = 35;
        t5.destination = 3;
        Station s3 = new Station();
        s3.addTrain(t3);
        stations.add(s3);

        Station s4 = new Station();
        stations.add(s4);



        doTravel(0,0,stations.get(3));
        System.out.println(stations.get(0).firstAvailableAt + " " + 
        stations.get(1).firstAvailableAt+ " " + stations.get(2).firstAvailableAt + " " 
        + stations.get(3).firstAvailableAt + " " );
        //Eredmeny: 0 24 31 40 

        clearFirstAvailableAt();
        doTravel(1,0,stations.get(3));
        System.out.println(stations.get(0).firstAvailableAt + " " + 
        stations.get(1).firstAvailableAt+ " " + stations.get(2).firstAvailableAt + " " 
        + stations.get(3).firstAvailableAt + " " );
        //Eredmeny: 
        //java.lang.RuntimeException: Nincs ennyi vonat
        //2147483647 0 40 2147483647 (A nagy szam valtozhat)

        clearFirstAvailableAt();
        doTravel(0,10,stations.get(2));
        System.out.println(stations.get(0).firstAvailableAt + " " + 
        stations.get(1).firstAvailableAt+ " " + stations.get(2).firstAvailableAt + " " 
        + stations.get(3).firstAvailableAt + " " );
        //Eredmeny: 10 24 31 2147483647  


        }



**Értékelés**

* Csak a tökéletes feladat kaphat maximális (2) pontot.

* Ha a feladat nem fordul, nem ér pontot. (Ebben az esetben megnézem, és adok tanácsot, ha szükséges.)

* Mivel a jegyben sokat számíthat, és beadandóról van szó, nem a kalsszikus értékelés van alkalmazva (tehát nem 50% 1 pont, stb). 

* A fél pont megszerzéséhez legalább a program felének tökéletesnek kell lennie. 

* A fordulás érdekében a main metódusból (amennyiben nem maximális pontszám a célunk) engedélyezett egyes részek kikommentelése.

* A feladatban az elvárt működéshez tetszőleg segédfüggvények vagy mezők alkalmazhatóak tetszőleges láthatósággal.

* A plágium gyanús megoldásokat szóban meg kell védeni. Plágium esetén nem ér pontot.










