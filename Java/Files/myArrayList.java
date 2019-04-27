public class myArrayList{
    //2
    private int[] arr = new int[10];
    //3
    private static int allElements = 0;

    //8
    private int size = 0;
    
    //2
    public myArrayList(){
        for (int i = 0; i < 10; i++) {
            arr[i] = 1;
            allElements++;
        }
    }
    //3
    public static int getAllElements(){
        return allElements;
    }

    //4
    public int get(int i){
        return arr[i];
    }

    public void set (int i, int n){
        arr[i] = n;
    }

    //8
    public void doubleMe(){
        int[] atm = new int [(size-1)*2];
        for(int i = 0; i < size; i++){
            atm[i] = arr[i];
        }
        arr = atm;
    }

    

}