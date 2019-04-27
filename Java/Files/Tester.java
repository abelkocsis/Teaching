//4
package test;
import country.com.Town;

public class Tester{
    public static void main(String[] args){
        Town s = new Town();
        Town p = new Town();
        s.setName("Sopron");
        System.out.println(s.getName());
        //5
        System.out.println(p.getName());
        System.out.println(p.getPopulation());
        
        Town b = new Town("Budapest", 2000000);
        System.out.println(b.getName() + ": " + b.getPopulation());

        //10
        //b.setPopulation(1985763);

        //11
        //System.out.println("Finished.");

        //12
        try {
            b.setPopulation(1985763);
        } catch (Exception e) {
            System.out.println(e);
        }

        System.out.println("Finished.");

        //14
        p.setName("Pecs");
        s.setPartnerTown(p);
        System.out.println(s.getPartnerTown(0).getName());

        //15
        s.setPopulation(75000);
        p.setPopulation(60000);
        System.out.println(Town.getTotalPopulation());

        //17 trivialis
        int k = 1;
        int[][] TriMatrix0 = new int [10][10];
        for (int i = 0; i < 10; i++) {
            for (int j = i; j < 10; j++) {
                TriMatrix0[i][j] = k;
                k++;
            }
        }

        for (int[] sor : TriMatrix0) {
            for (int j : sor) {
                System.out.print(j + " ");
            }
            System.out.println();
        }

        //nemtriv
        k = 1;
        int[][] TriMatrix1 = new int[10][];
        for (int i = 0; i < 10; i++) {
            TriMatrix1[i] = new int[10-i];
            for (int j = 0; i+j < 10; j++) {
                TriMatrix1[i][j] = k;
                k++;
            }
        }

        for (int[] sor : TriMatrix1) {
            for (int x : sor) {
                System.out.print(x+" ");
            }
            System.out.println();
        }

        //megj: ez nem fordul:
        //int[][] TriMatrix1 = new int[][10];



    }
}