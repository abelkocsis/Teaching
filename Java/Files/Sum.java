public class Sum{
	public static void main (String[] str){
		//1
		
		int osszeg = 0;
		for (int i = 0; i < str.length; i++){
			//osszeg += str[i]; Ez így miért nem jó?
			osszeg += Integer.parseInt(str[i]);
		}
		System.out.println(osszeg);
		System.out.println(solve(1,0,-5));
		System.out.println(szamSorf(1,2,20));
		System.out.println(szamSorfRek(1,2,20));
		
		//8
		SzamSor mySor = new SzamSor();
		System.out.println(mySor.first);
		System.out.println(mySor.step);
		//9
		mySor.first = 1;
		mySor.step = 2;
		mySor.compute(20);
		System.out.println(mySor.lastResult);
		
	}
	//2
	static double solve(int a, int b, int c){
		double result;
		result = ((-1*b)+Math.sqrt(b*b-4*a*c))/2;
		return result;
	}
	//3
	static double szamSorf(int first, int step, int n){
		int result = 0;
		for (int i = 0; i < n; i++){
			result += first;
			first += step;
		}
		return result;
	}
	//4
	static double szamSorfRek(int first, int step, int n){
		if (n == 1)
			return first;
		return first+szamSorfRek(first+step, step, n-1);
	}
	
	
}
