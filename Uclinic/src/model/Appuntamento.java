package model;

public class Appuntamento {
	
	private int idAppuntamento;
	private int codClinica;
	private int codDottore;
	private int codPaziente;
	private String data;
	private int orario;
	private int durata;
	private boolean disponibilita;
	
	
	public int getIdAppuntamento() {
		return idAppuntamento;
	}
	public void setIdAppuntamento(int idAppuntamento) {
		this.idAppuntamento = idAppuntamento;
	}
	public int getCodClinica() {
		return codClinica;
	}
	public void setCodClinica(int codClinica) {
		this.codClinica = codClinica;
	}
	public int getCodDottore() {
		return codDottore;
	}
	public void setCodDottore(int codDottore) {
		this.codDottore = codDottore;
	}
	public int getCodPaziente() {
		return codPaziente;
	}
	public void setCodPaziente(int codPaziente) {
		this.codPaziente = codPaziente;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public int getOrario() {
		return orario;
	}
	public void setOrario(int orario) {
		this.orario = orario;
	}
	public int getDurata() {
		return durata;
	}
	public void setDurata(int durata) {
		this.durata = durata;
	}
	public boolean isDisponibilita() {
		return disponibilita;
	}
	public void setDisponibilita(boolean disponibilita) {
		this.disponibilita = disponibilita;
	}

}


