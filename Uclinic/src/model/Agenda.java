package model;

import java.util.HashMap;
import java.util.List;


public class Agenda {
	
	private HashMap<Dottore,List<Appuntamento>> agenda;
	private int data;
	
	public HashMap<Dottore, List<Appuntamento>> getAgenda() {
		return agenda;
	}
	public void setAgenda(HashMap<Dottore, List<Appuntamento>> agenda) {
		this.agenda = agenda;
	}
	public int getData() {
		return data;
	}
	public void setData(int data) {
		this.data = data;
	}
	
}

