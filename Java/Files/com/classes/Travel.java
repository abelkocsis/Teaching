package com.classes;
import com.classes.*;
import com.classes.sub.*;
import hu.towns.Station;
import java.util.ArrayList;
import java.util.Random;

public class Travel{
    public static ArrayList<Station> stations = new ArrayList<Station>();
    public static void main(String[] args){
        
        Vechile v1 = new Vechile("auto", 4, 4);
        Vechile v2 = new Vechile("busz", 50, 6);
        Train t = new Train ();
        Train t2 = new Train();
        Vechile v5 = new Vechile("repulo", 4, 0);


        Vechile v3 = t;
        Vechile v4 = t2;
        ArrayList<Vechile> vechiles = new ArrayList<Vechile> ();
        vechiles.add(v1);
        vechiles.add(v2);
        vechiles.add(v3);
        vechiles.add(v4);
        vechiles.add(v5);
        int osszkerekszam = 0;
        for (int i = 0; i < vechiles.size(); i++) {
            osszkerekszam += vechiles.get(i).getTyres();
        }
        System.out.println(osszkerekszam);  

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

    static void doTravel (int n, int t, Station d){
        
        if (t < stations.get(n).firstAvailableAt)
            stations.get(n).firstAvailableAt = t;

        if (stations.get(n).equals(d)){
            return;
        }
            
        boolean found = false;
        while(!found){
            try{
                
                Train train = stations.get(n).getNextTrain();
                
                if (train.departureTime >= t){
                    found = true;
                    doTravel(train.destination, train.arrivingTime, d);
                }
            }
            catch(Exception e){
                System.out.println(e);
                found = true;
            }
        }
        
    }

    static void clearFirstAvailableAt(){
        for (int i = 0; i < stations.size(); i++) {
            stations.get(i).firstAvailableAt = Integer.MAX_VALUE;
            stations.get(i).count = 0;
        }

    }
}