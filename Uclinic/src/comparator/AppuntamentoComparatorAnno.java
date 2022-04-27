package comparator;

import java.util.Comparator;

import model.Appuntamento;

public class AppuntamentoComparatorAnno implements Comparator<Appuntamento> {

	@Override
	public int compare(Appuntamento a1, Appuntamento a2) {
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
