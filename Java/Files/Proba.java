//mi van, ha ide irok valtozot?
//int x = 12;

public class Proba{
	public static void main(String[] args){ //Mi van, ha nem ezek az argumentumai? 
		System.out.println("Hello World!");
		//operators, Precedence, Associativity
		boolean t = true, f = false;
		boolean g = t && 12 < 24 + 54;
		int a, b;
		System.out.println(a = b = 5);
		
		//block statement
		int c = 12; //all class can see it
		
		{
			int asd = 12;
			asd++;
		}
		
		//asd = 24; //forditasi ideju hiba
		
		//1
		int szam = 12;
		szam = szam + 1;
		szam = szam * 6;
		szam = szam % 2;
		System.out.println(szam);
		
		//2
		int szam2;
		szam2 = (12 + 1) * 6 % 2;
		System.out.println(szam2);
		
		//2_2
		int szam3 = 12;
		szam3++;
		szam *= 6;
		szam %= 2;
		System.out.println(szam2);
		
		//3
		for (int i = 1; i <= 100; ++i){
			if (i % 2 == 0)
				System.out.print(i + " ");
		}
		System.out.println("");
		
		//4
		for (int i = 2; i <= 100; i += 2){
				System.out.print(i + " ");
		}
		System.out.println("");
		
		//5
		for (int i = 0; i < args.length; ++i){
			System.out.println(args[i]);
		}
		for (int i = 0; i < args.length; ++i){
			args[i] = "elte";
		}
		for (int i = 0; i < args.length; ++i){
			System.out.println(args[i]);
		}
		
		//6
		for (int i = 0; i < args.length; ++i){
			System.out.println(args[i].charAt(0));
		}
		
		//7
		for (int i = 0; i < args.length; ++i){
			args[i] = args[i].toUpperCase();
		}
		for (int i = 0; i < args.length; ++i){
			System.out.println(args[i]);
		}
		
		//8


		String str0 = "Java";

		//8 eleje
		{
			String str3 = "Java";
			str3 = "Java1";
			str3 = "Java";
			System.out.println(str0==str3);
			str3 = "J";
			str3 = str3.concat("ava");
			
			System.out.println();
			System.out.println(str0 + " " + str3);
			System.out.println(str0==str3);
			
		}

		
		String str1 = new String ("Java gyakorlat");
		String str2 = new String ("Java gyakorlat");
		

		if (str1 == str2){
			System.out.println("They are equal.");
		}
		else{
			System.out.println("They are NOT equal.");
		}
		
		if (str1.equals(str2)){
			System.out.println("Now they are equal.");
		}
		else{
			System.out.println("Now they are NOT equal.");
		}

		
	
		// Hozzunk letre sajat, szamokbol allo tombot!
		int[] szamok1;
		int szamok2[];
		
		int[]szamok3 = {1,2,3,4,5,6};
		szamok3[2] = 0;
		for (int x : szamok3){
			System.out.print(x + " ");
		}
		System.out.println("");
		
		int[] szamok4 = new int[10];
		for (int x : szamok4){
			System.out.print(x + " ");
		}
		System.out.println("");
		//Extra feladat:
		//Eratoszthenesz szitaja
		int primek[] = new int [1001];
		for (int i = 2; i <= 1000; i++){
			primek[i] = i; 
		}
		for (int i = 2; i < 1000; i++){
			if (primek[i] != 0){
				System.out.print(primek[i] + " ");
				for (int j = 0; j < 1000; j += i){
					primek[j] = 0;
				}
			}
		}
		
	}
}
