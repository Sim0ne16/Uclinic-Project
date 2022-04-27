package model;

public class MedicalHistory {
	
	private int idPaziente;
	private double peso;
	private int altezza;
	private String gsangue;
	

	public MedicalHistory() {
		
	}
	
	public MedicalHistory(int idPaziente, double peso, int altezza, String gsangue) {
		super();
		this.idPaziente = idPaziente;
		this.peso = peso;
		this.altezza = altezza;
		this.gsangue = gsangue;
	}
	
	
	public MedicalHistory(double peso, int altezza, String gsangue) {
		super();
		this.peso = peso;
		this.altezza = altezza;
		this.gsangue = gsangue;
	}
	
	
	
	
	public int getIdPaziente() {
		return idPaziente;
	}
	public void setIdPaziente(int idPaziente) {
		this.idPaziente = idPaziente;
	}
	public double getPeso() {
		return peso;
	}
	public void setPeso(double peso) {
		this.peso = peso;
	}
	public int getAltezza() {
		return altezza;
	}
	public void setAltezza(int altezza) {
		this.altezza = altezza;
	}
	public String getGsangue() {
		return gsangue;
	}
	public void setGsangue(String gsangue) {
		this.gsangue = gsangue;
	}

}
