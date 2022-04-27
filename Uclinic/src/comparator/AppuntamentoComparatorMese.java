package comparator;

import java.util.Comparator;

import model.Appuntamento;

public class AppuntamentoComparatorMese implements Comparator<Appuntamento> {
	@Override
	public int compare(Appuntamento a1, Appuntamento a2) {
		int val = 0;
		if (a1.getMese()>a2.getMese()) 
		{
			
			     val = 1;
			
		} 
		else if (a1.getMese()<a2.getMese())
		{
			
			val = -1; 
			
		}
		return val;
	}

}
