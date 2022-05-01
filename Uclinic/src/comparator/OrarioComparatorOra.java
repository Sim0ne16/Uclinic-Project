package comparator;

import java.util.Comparator;
import model.Orario;

public class OrarioComparatorOra implements Comparator<Orario> {

	@Override
	public int compare(Orario a1, Orario a2) {
		int val = 0;
		if (a1.getOraI()>a2.getOraI()) 
		{
			
			     val = 1;
			
		} 
		else if (a1.getOraI()<a2.getOraI())
		{
			
			val = -1; 
			
		}
		return val;
	}

}
