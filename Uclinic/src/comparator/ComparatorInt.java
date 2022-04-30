package comparator;

import java.util.Comparator;


public class ComparatorInt implements Comparator<Integer> {
	public int compare(Integer a1,Integer a2) {
		int val = 0;
		if (a1>a2) 
		{
			
			     val = 1;
			
		} 
		else if (a1<a2)
		{
			
			val = -1; 
			
		}
		return val;
	}

}
