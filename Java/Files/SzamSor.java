public class SzamSor{
	//5
	public int first;
	public int step;
	public int lastResult;
	String name;
	//6
	private void Sum (int n){
		int result = 0;
		for (int i = 0; i < n; i++){
			result += first;
			first += step;
		}
		lastResult = result;
	}
	//7
	public void compute(int n){
		Sum(n);
	}
	//10
	public SzamSor(int first, int step){
		this.first = first;
		this.step = step;
	}
	public SzamSor(){
	}
	
}
