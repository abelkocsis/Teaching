package com.classes.sub;

import com.interfaces.VisitStations;
import hu.towns.Station;
import com.classes.Vechile;

public class Train extends Vechile implements VisitStations{
    public Train(){
        super("train", 0, 16);
    }
    public int departureTime;
    public int arrivingTime;
    public int destination;

    public boolean equals(Train t){
        if (t == null)
            return false;
        return this.departureTime == t.departureTime && this.arrivingTime == t.arrivingTime && destination == t.destination;
    }

    public void takeOff(int n){
        passengers -= n;
    }
    public void takeIn(int n){
        passengers += n;
    }
}