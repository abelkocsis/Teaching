package hu.towns;
import java.util.ArrayList;
import com.classes.sub.Train;

public class Station{
    protected ArrayList<Train> trains = new ArrayList<Train>();
    
    public void addTrain(Train t){
        trains.add(t);
    }
    public int count = 0;

    public Train getNextTrain(){
        if (count >= trains.size())
            throw new RuntimeException("Nincs ennyi vonat");
        else
            return trains.get(count++);
    }

    public int firstAvailableAt = Integer.MAX_VALUE;
}