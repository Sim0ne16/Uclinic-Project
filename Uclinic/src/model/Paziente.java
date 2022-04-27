package model;

public class Paziente {
	
	private int idPaziente;
	private String nome;
	private String cognome;
	private int eta;
	private String cFisc;
	private String email;
	private String password;
	private String citta;
	private String regione;
	
	public Paziente(String nome, String cognome, int eta, String cFisc, String email, String password, String citta,
			String regione) {
		super();
		this.nome = nome;
		this.cognome = cognome;
		this.eta = eta;
		this.cFisc = cFisc;
		this.email = email;
		this.password = password;
		this.citta = citta;
		this.regione = regione;
	}
	
	public Paziente(int id,String nome, String cognome, int eta, String cFisc, String email, String citta,
			String regione) {
		super();
		this.idPaziente = id;
		this.nome = nome;
		this.cognome = cognome;
		this.eta = eta;
		this.cFisc = cFisc;
		this.email = email;
		this.password = password;
		this.citta = citta;
		this.regione = regione;
	}
	
	public Paziente(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}

	public Paziente() {
		super();
	}



	public int getIdPaziente() {
		return idPaziente;
	}
	public void setIdPaziente(int idPaziente) {
		this.idPaziente = idPaziente;
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
	public String getcFisc() {
		return cFisc;
	}
	public void setcFisc(String cFisc) {
		this.cFisc = cFisc;
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
	public String getCitta() {
		return citta;
	}
	public void setCitta(String citta) {
		this.citta = citta;
	}
	public String getRegione() {
		return regione;
	}
	public void setRegione(String regione) {
		this.regione = regione;
	}
	
}


