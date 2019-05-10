package com.classes;
import com.abstracts.Moveable;

public class Vechile extends Moveable{
    protected String name;
    protected int passengers;
    protected int tyres;

    public Vechile(String name, int passengers, int tyres){
        this.name = name;
        this.passengers = passengers;
        this.tyres = tyres;
    }

    public void setName(String name){
        this.name = name;
    }
    public String getName(){
        return name;
    }
    public void setPassengers(int passengers){
        this.passengers = passengers;
    }
    public int getPassengers(){
        return passengers;
    }
    public void setTyres(int tyres){
        this.tyres = tyres;
    }
    public int getTyres(){
        return tyres;
    }
    public String getVechile(){
        return this.name;
    }
}