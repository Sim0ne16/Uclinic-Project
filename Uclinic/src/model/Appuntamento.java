package model;

public class Appuntamento {
	
	private int idAppuntamento;
	private int codClinica;
	private int codDottore;
	private int codPaziente;
	private int giorno;
	private int mese;
	private int anno;
	private int ora;
	private int prenotazione;
	
	
	public Appuntamento(int codClinica, int codDottore, int codPaziente, int giorno, int mese, int anno, int ora) {
		super();
		this.codClinica = codClinica;
		this.codDottore = codDottore;
		this.codPaziente = codPaziente;
		this.giorno = giorno;
		this.mese = mese;
		this.anno = anno;
		this.ora = ora;
	}
	
	
	public Appuntamento(int codClinica, int codDottore, int codPaziente, int giorno, int mese, int anno, int ora,int prenotazione) {
		super();
		this.codClinica = codClinica;
		this.codDottore = codDottore;
		this.codPaziente = codPaziente;
		this.giorno = giorno;
		this.mese = mese;
		this.anno = anno;
		this.ora = ora;
		this.prenotazione = prenotazione;
	}
	
	public Appuntamento() {
		super();
	}
	
	
	public int getPrenotazione() {
		return prenotazione;
	}
	public void setPrenotazione(int prenotazione) {
		this.prenotazione = prenotazione;
	}
	
	
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
	public int getGiorno() {
		return giorno;
	}
	public void setGiorno(int giorno) {
		this.giorno = giorno;
	}
	public int getMese() {
		return mese;
	}
	public void setMese(int mese) {
		this.mese = mese;
	}
	public int getAnno() {
		return anno;
	}
	public void setAnno(int anno) {
		this.anno = anno;
	}
	public int getOra() {
		return ora;
	}
	public void setOra(int ora) {
		this.ora = ora;
	}
	

}


