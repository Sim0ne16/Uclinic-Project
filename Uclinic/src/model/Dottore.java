package model;


import java.util.ArrayList;
import java.util.List;

public class Dottore {
	
	private int idDottore;
	private String nome;
	private String cognome;
	private int eta;
	private String email;
	private String recapitoTel;
	private String specializzazione;
	private double costoVisita;
	private List<Orario> Orari;
	

	
	//id viene assegnato dal db
	public Dottore(String nome, String cognome, int eta, String email, String recapitoTel, String specializzazione,
			double costoVisita) {
		super();
		this.nome = nome;
		this.cognome = cognome;
		this.eta = eta;
		this.email = email;
		this.recapitoTel = recapitoTel;
		this.specializzazione = specializzazione;
		this.costoVisita = costoVisita;
		//orari
		this.Orari = new ArrayList<Orario> ();
		
	}
	//id preso dal db
	public Dottore(int id,String nome, String cognome, int eta, String email,String recapitoTel, String specializzazione,
			double costoVisita) {
		super();
		this.idDottore= id;
		this.nome = nome;
		this.cognome = cognome;
		this.eta = eta;
		this.email = email;
		this.recapitoTel = recapitoTel;
		this.specializzazione = specializzazione;
		this.costoVisita = costoVisita;
		this.Orari = new ArrayList<Orario> ();
	}
	
	// Per la visualizazzione staff
	public Dottore(int id,String nome,String cognome,String specializazzione,	double costoVisita) {
		this.idDottore = id;
		this.nome=nome;
		this.cognome=cognome;
		this.specializzazione=specializazzione;
		this.costoVisita = costoVisita;
		this.Orari = new ArrayList<Orario> ();
	}
	
	
	public Dottore() {
	}
	
	
	public int getIdDottore() {
		return idDottore;
	}
	
	public void setIdDottore(int idDottore) {
		this.idDottore = idDottore;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	public int getEta() {
		return eta;
	}
	public void setEta(int eta) {
		this.eta = eta;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRecapitoTel() {
		return recapitoTel;
	}
	public void setRecapitoTel(String recapitoTel) {
		this.recapitoTel = recapitoTel;
	}
	public String getSpecializzazione() {
		return specializzazione;
	}
	public void setSpecializzazione(String specializzazione) {
		this.specializzazione = specializzazione;
	}
	public double getCostoVisita() {
		return costoVisita;
	}
	public void setCostoVisita(double costoVisita) {
		this.costoVisita = costoVisita;
	}
	public List<Orario> getOrari() {
		return Orari;
	}
	public void setOrari(List<Orario> orari) {
		Orari = orari;
	}
	
	
	
}
