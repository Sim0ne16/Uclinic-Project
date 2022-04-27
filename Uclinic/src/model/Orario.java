package model;

import java.sql.Date;

public class Orario {
	
	private int idOrario;
	private int idDottore;
	private int anno;
	private int mese;
	private int giorno;
	private int oraI;
	private int oraF;
	

//orario viene assegnato automaticamente dal db
	public Orario(int idDottore, int anno, int mese, int giorno, int oraI, int oraF) {
		super();
		this.idDottore = idDottore;
		this.anno = anno;
		this.mese = mese;
		this.giorno = giorno;
		this.oraI = oraI;
		this.oraF = oraF;
	}
	
	
	//orario viene recuperato assegnato  dal db
		public Orario(int idOrario,int idDottore, int anno, int mese, int giorno, int oraI, int oraF) {
			super();
			this.idOrario = idOrario;
			this.idDottore = idDottore;
			this.anno = anno;
			this.mese = mese;
			this.giorno = giorno;
			this.oraI = oraI;
			this.oraF = oraF;
		}
		
	
	public Orario() {

	}

	
	public int getIdOrario() {
		return idOrario;
	}

	public void setIdOrario(int idOrario) {
		this.idOrario = idOrario;
	}



	public int getIdDottore() {
		return idDottore;
	}

	public void setIdDottore(int idDottore) {
		this.idDottore = idDottore;
	}

	public int getAnno() {
		return anno;
	}

	public void setAnno(int anno) {
		this.anno = anno;
	}

	public int getMese() {
		return mese;
	}

	public void setMese(int mese) {
		this.mese = mese;
	}

	public int getGiorno() {
		return giorno;
	}

	public void setGiorno(int giorno) {
		this.giorno = giorno;
	}

	public int getOraI() {
		return oraI;
	}

	public void setOraI(int oraI) {
		this.oraI = oraI;
	}

	public int getOraF() {
		return oraF;
	}

	public void setOraF(int oraF) {
		this.oraF = oraF;
	}


	
	
	
	

}
