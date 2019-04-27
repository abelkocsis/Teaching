//5
import java.io.*; 

public class FRTester{
    public static void main(String[] args) throws IOException{
        myArrayList myAL1 = new myArrayList();
        //System.out.println(myAL1.getAllElements()); ez igy nem jo!
        System.out.println(myArrayList.getAllElements());
        myArrayList myAL2 = new myArrayList();
        System.out.println(myArrayList.getAllElements());
        //System.out.println(myAL1.arr[1]);

        //4
        System.out.println(myAL1.get(5));
        myAL1.set(5, 99);
        System.out.println(myAL1.get(5));
        read();
        readArr();

        //10
        int n = Integer.parseInt(args[0]);
        System.out.println(n+5);
        System.out.println(Integer.reverse(12));
        System.out.println(Integer.toBinaryString(321));
        System.out.println(Integer.toBinaryString(Integer.reverse(321)));
    }

    public static void read() /*throws IOException*/{ //throws exception beleirasa csak az error utan!
        
        File file = new File ("toRead.txt");
        /*
        FileReader fr = new FileReader(file);
        BufferedReader br = new BufferedReader(fr); 
        String st; 
        while ((st = br.readLine()) != null) 
            System.out.println(st); 
        br.close();*/   
        //6-os: egeszet tegyuk bele egy try-ba
        
        //egyszerubben irva:
        // BufferedReader br = new BufferedReader(new FileReader(file)); 
        try {
            BufferedReader in =
                       new BufferedReader(new FileReader(file));
            try {
                String line = in.readLine();
                System.out.println(line);
            } finally {
                in.close();
            }
        } catch( IOException | IllegalArgumentException e ){
            System.err.println(e);
            System.err.println("Nothing happened!");
    }
    }

        public static void readArr() throws IOException{ 
        
        File file = new File ("toArrRead.txt");
        
        FileReader fr = new FileReader(file);
        BufferedReader br = new BufferedReader(fr); 
        String st; 
        String [] splitted = new String[10];
        int[] readed = new int [10];
        if ((st = br.readLine()) != null) {
            {
                splitted = st.split(" ");
            }
        br.close();   
        for(int i = 0; i < 10; i++){
            readed[i] = Integer.parseInt(splitted[i]);
        }
        System.out.println(readed[5]);
        }

        }
    }
