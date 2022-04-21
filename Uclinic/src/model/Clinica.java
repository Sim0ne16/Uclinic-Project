package model;

import java.util.ArrayList;
import java.util.List;

public class Clinica {

	private int idClinica;
	private String nome;
	private String regione;
	private String citta;
	private String indirizzo;
	private List<Dottore> personale;
	private List<Agenda> calendarioSett; // in forse?
	private List<Paziente> pazienti;
	private String email;
	private String password;
	private String recapitoTel;

	public Clinica(String nome, String regione, String citta, String indirizzo, String email, String password,
			String recapitoTel) {
		super();
		this.nome = nome;
		this.regione = regione;
		this.citta = citta;
		this.indirizzo = indirizzo;
		this.email = email;
		this.password = password;
		this.recapitoTel = recapitoTel;

		personale = new ArrayList<Dottore>();
		pazienti=new ArrayList<Paziente>();
		this.calendarioSett = new ArrayList<Agenda>();
	}

	public Clinica(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}
	
	public Clinica() {
		super();
		this.personale = new ArrayList<Dottore>();
		this.calendarioSett = new ArrayList<Agenda>();
		this.pazienti = new ArrayList<Paziente>();
	}

	public int getIdClinica() {
		return idClinica;
	}

	public void setIdClinica(int idClinica) {
		this.idClinica = idClinica;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getRegione() {
		return regione;
	}

	public void setRegione(String regione) {
		this.regione = regione;
	}

	public String getCitta() {
		return citta;
	}

	public void setCitta(String citta) {
		this.citta = citta;
	}

	public String getIndirizzo() {
		return indirizzo;
	}

	public void setIndirizzo(String indirizzo) {
		this.indirizzo = indirizzo;
	}

	public List<Dottore> getPersonale() {
		return personale;
	}

	public void setPersonale(List<Dottore> personale) {
		this.personale = personale;
	}

	public List<Agenda> getCalendarioSett() {
		return calendarioSett;
	}

	public void setCalendarioSett(List<Agenda> calendarioSett) {
		this.calendarioSett = calendarioSett;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRecapitoTel() {
		return recapitoTel;
	}

	public void setRecapitoTel(String recapitoTel) {
		this.recapitoTel = recapitoTel;
	}

	public List<Paziente> getPazienti() {
		return pazienti;
	}

	public void setPazienti(List<Paziente> pazienti) {
		this.pazienti = pazienti;
	}

}
