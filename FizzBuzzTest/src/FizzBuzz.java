
public class FizzBuzz {
	public String fizzBuzz(int number) {
		String sStr = "";
		if(number%3 == 0) {
			sStr+="fizz";
		}
		if(number%5 == 0) {
			sStr+="buzz";
		}
		sStr = (sStr =="") ? Integer.toString(number) : sStr;
		
		return sStr;
	}

}
