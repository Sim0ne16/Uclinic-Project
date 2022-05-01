package comparator;

import java.util.Comparator;

import model.Orario;

public class OrarioComparatorAnno implements Comparator<Orario> {

	@Override
	public int compare(Orario a1, Orario a2) {
		int val = 0;
		if (a1.getAnno()>a2.getAnno()) 
		{
			
			     val = 1;
			
		} 
		else if (a1.getAnno()<a2.getAnno())
		{
			
			val = -1; 
			
		}
		return val;
	}

}
