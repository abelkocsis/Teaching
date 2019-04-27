//1
package country.com;

public class Town{
    //2
    boolean city;
    //3
    int population;
    //3
    String name;

    public boolean getCity(){
        return city;
    }

    public int getPopulation(){
        return population;
    }

    public void setPopulation(int population){
        if (population < 2000000)
            this.population = population;
        else{
            //10
            throw new IllegalArgumentException("Population is too big!"); //First use just this
        }
        //15
        this.totalPopulation += population;
            
    }

    public String getName(){
        return name;
    }

    public void setName (String name){
        this.name = name;
    }
    //6
    public Town(String name, int population){
        this.name = name;
        this.population = population;
    }
    //7
    public Town(){
    }

    //13
    Town[] partnerTowns = new Town[10];
    int nextPartnerTown = 0;
    public void setPartnerTown(Town pt){
        partnerTowns[nextPartnerTown++] = pt;
    }
    public Town getPartnerTown(int i){
        return partnerTowns[i];
    }

    //15
    static int totalPopulation = 0;

    public static int getTotalPopulation(){
        return totalPopulation;
    }
}