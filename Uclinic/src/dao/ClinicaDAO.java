package dao;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import connection.ConnessioneDB;
import model.Appuntamento;
import model.Clinica;
import model.Dottore;
import model.Paziente;

public class ClinicaDAO {



	public static boolean registraClinica(Clinica clinica) throws ClassNotFoundException, SQLException {
		boolean result = false;
		ConnessioneDB con = new ConnessioneDB();
		try {
			con.connect();
			String query = "INSERT INTO clinica (nome, regione, citta, indirizzo, email, password, recapitoTel) VALUES"
					+ "(?,?,?,?,?,?,?);";
		 PreparedStatement	pst = con.getCon().prepareStatement(query);
			pst.setString(1, clinica.getNome());
			pst.setString(2, clinica.getRegione());
			pst.setString(3, clinica.getCitta());
			pst.setString(4, clinica.getIndirizzo());
			pst.setString(5, clinica.getEmail());
			pst.setString(6, clinica.getPassword());
			pst.setString(7, clinica.getRecapitoTel());
			if(pst.executeUpdate()>0) {
			result = true;
			}
			System.out.println("Clinica Aggiunta");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public static Clinica loginClinica(String email, String password) {
		Clinica clinica = null;
		ConnessioneDB con = new ConnessioneDB();
		try {
			con.connect();
			String query = "select * from clinica where email=? and password=?";
			PreparedStatement pst = con.getCon().prepareStatement(query);
			pst.setString(1, email);
			pst.setString(2, password);
			ResultSet rs = pst.executeQuery();	
			if (rs.next()) {
				clinica = new Clinica();
				clinica.setIdClinica(rs.getInt("idClinica"));
				clinica.setNome(rs.getString("nome"));
				clinica.setRegione(rs.getString("regione"));
				clinica.setCitta(rs.getString("citta"));
				clinica.setIndirizzo(rs.getString("indirizzo"));
				clinica.setEmail(rs.getString("email"));
				clinica.setPassword(rs.getString("password"));
				clinica.setRecapitoTel(rs.getString("recapitoTel"));
			}
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return clinica;
	}
	
	public static List<Dottore> visualizzaDottori(int idClinica){
		List<Dottore> staff = new ArrayList<Dottore>();
		Dottore d = null;
		ConnessioneDB con = new ConnessioneDB();
		try {
			con.connect();
			String sql= "select * from personale as P join dottore as D on P.idDottore = D.idDottore where P.idClinica = ? ";
			PreparedStatement stm = con.getCon().prepareStatement(sql);
			stm.setInt(1, idClinica);
			ResultSet rs = stm.executeQuery();
			while(rs.next()) {
				int id = rs.getInt("idDottore");
				String nome = rs.getString("nome");
				String cognome = rs.getString("cognome");
				String specializazzione = rs.getString("specializzazione");
				Double costo = rs.getDouble("costoVisita");
				d = new Dottore(id,nome,cognome,specializazzione,costo);		
				staff.add(d);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return staff;
	}
	
	
	public static Dottore visualizzaDottore(int id) {
		Dottore d = new Dottore();
		ConnessioneDB con = new ConnessioneDB();
		try {
			con.connect();
			String sql= "select * from dottore where idDottore = ?" ;
			PreparedStatement stm = con.getCon().prepareStatement(sql);
			stm.setInt(1, id);
			ResultSet rs = stm.executeQuery();
			if(rs.next()) {
	         	String nome = rs.getString("nome");
				String cognome = rs.getString("cognome");
				String specializzazzione = rs.getString("specializzazione");
				int eta = rs.getInt("eta");
				String email = rs.getString("email");
				String recapito = rs.getString("recapitoTel");
				Double costo = rs.getDouble("costoVisita");
				
				d.setNome(nome);
				d.setCognome(cognome);
				d.setEmail(email);
				d.setEta(eta);
				d.setRecapitoTel(recapito);
				d.setSpecializzazione(specializzazzione);
				d.setCostoVisita(costo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			}
		return d;
	}
	
	
	public static boolean check(String email,String pass1,String pass2) {
	boolean esito = false;
	ConnessioneDB con = new ConnessioneDB();
	try {
		con.connect();
		String query = "select * from clinica where email =?";
		PreparedStatement pst = con.getCon().prepareStatement(query);
	    pst.setString(1, email);          
	    ResultSet rs = pst.executeQuery();
	    
	    if(rs.next()) {
	    	esito = true;
	    }
	    
	    if(pass1 != pass2) {
	    	esito = true;
	    }
	   
	    if(pass1.length()<5) {
	    	esito = true;
	    }
	    
		
	} catch (SQLException e) {
		e.printStackTrace();
	}finally {
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	return esito;
	}
	
	public static boolean aggiungiDottore(Dottore d, Clinica clinica) {
		boolean esito = false;
		ConnessioneDB con = new ConnessioneDB();
		try {
			con.connect();
		    String query = "INSERT INTO dottore (nome, cognome, eta, email, recapitoTel, specializzazione, costoVisita) VALUES (?,?,?,?,?,?,?)";
		    PreparedStatement	pst = con.getCon().prepareStatement(query);
			pst.setString(1, d.getNome());
			pst.setString(2, d.getCognome());
		    pst.setInt(3, d.getEta());
		    pst.setString(4, d.getEmail());
		    pst.setString(5, d.getRecapitoTel());
		    pst.setString(6, d.getSpecializzazione());
		    pst.setDouble(7, d.getCostoVisita());
		    pst.executeUpdate();
		    System.out.println("Dottore Aggiunto");
		    esito = true;
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}return esito;
	}
	
	//problema con le foreign keys porcodio
	
	public static boolean aggiungiDottorePersonale(Dottore d, Clinica clinica) {
		boolean esito = false;
		ConnessioneDB con = new ConnessioneDB();
		try {
			con.connect();
			  String  query = " INSERT INTO personale (idClinica, idDottore) VALUES (?,?)";
			   PreparedStatement pst = con.getCon().prepareStatement(query);
		       pst = con.getCon().prepareStatement(query);
		       pst.setInt(1, clinica.getIdClinica());
		       pst.setInt(2, d.getIdDottore());   
			   pst.executeUpdate();
			   esito = true; 
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return esito;
	}
	
	
	
	public static boolean eliminaDottore(Dottore d, int idClinica) { //elimina dottore solo dal personale
		boolean esito = false;
		ConnessioneDB con = new ConnessioneDB();
		try {
			con.connect();
			String query = "DELETE FROM personale WHERE idDottore = ? AND idClinica = ?";
			PreparedStatement pst = con.getCon().prepareStatement(query);
			pst.setInt(1, d.getIdDottore());
			pst.setInt(2, idClinica);
			pst.executeUpdate();
			System.out.println("Il dottore ha perso il lavoro");
			esito = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}return esito;
	}
	
	public static boolean modificaDottore(Dottore d) { //modifica dottore solo in dottore nel db
		boolean esito = false;
		ConnessioneDB con = new ConnessioneDB();
		try {
			con.connect();
			String query = "UPDATE dottore SET nome = ? , cognome = ? , eta = ?, email = ?, recapitoTel = ?, specializzazione = ?, costoVisita = ? where idDottore = ?";
			PreparedStatement pst = con.getCon().prepareStatement(query);
			pst.setString(1, d.getNome());
			pst.setString(2, d.getNome());
			pst.setInt(3, d.getEta());
			pst.setString(4, d.getEmail());
			pst.setString(5, d.getRecapitoTel());
			pst.setString(6, d.getSpecializzazione());
			pst.setDouble(7, d.getCostoVisita());
			pst.setInt(8, d.getIdDottore());
			pst.executeUpdate();
			System.out.println("Il dottore si è trasformato");
			esito = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}return esito;
	}


public static Paziente cercaPazXCodFisc(Clinica c,String cFisc) {
	ConnessioneDB con = new ConnessioneDB();
	Paziente p = null;
	Appuntamento app = null;
	try 
	{
		con.connect();
		p= new Paziente();
		app= new Appuntamento();
		String sql = "select *"
				+ "from paziente as P"
				+ "join appuntamento as a"
				+ "where P.idPaziente = a.codPaziente and a.codClinica = ? and P.cFisc = ?";
		PreparedStatement pst = con.getCon().prepareStatement(sql);
		pst.setInt(1, c.getIdClinica());
		pst.setString(2, cFisc);
		ResultSet rs = pst.executeQuery();
		
		p.setIdPaziente(rs.getInt("idPaziente"));
		p.setNome(rs.getString("nome"));
		p.setCognome(rs.getString("cognome"));
		p.setEta(rs.getInt("eta"));
		p.setcFisc(rs.getString("cFisc"));
		p.setEmail(rs.getString("email"));
		p.setPassword(rs.getString("password"));
		p.setRegione(rs.getString("regione"));
		p.setCitta(rs.getString("citta"));
		
		app.setIdAppuntamento(rs.getInt("idAppuntamento"));
		app.setCodClinica(rs.getInt("codClinica"));
		app.setCodDottore(rs.getInt("codDottore"));
		app.setCodPaziente(rs.getInt("codPaziente"));
		app.setData(rs.getString("data"));
		app.setOrario(rs.getInt("orario"));
		app.setDurata(rs.getInt("durata"));
	} 
	catch (SQLException e) 
	{
		e.printStackTrace();
	}
	finally
	{
		try 
		{
			con.close();
		} 
		catch (SQLException e)
		{
			e.printStackTrace();
		}
	}
	return p;
	
}

public static boolean creaAppuntamento(Appuntamento app) {
	boolean esito = false;
    ConnessioneDB con = new ConnessioneDB();
	    try 
	    {
		     con.connect();
		     String sql = 
			   "insert into appuntamento (codClinica, codDottore, data, orario) "
			   + "values (?,?,?,?);";
		     PreparedStatement pst = con.getCon().prepareStatement(sql);
		     pst.setInt(1, app.getCodClinica());
		     pst.setInt(2, app.getCodDottore());
		     pst.setString(3, app.getData());
		     pst.setInt(4, app.getOrario());
		     if(pst.executeUpdate()>0) {
		    	 esito = true;
		     }
		 } 
		 catch (SQLException e)
         {
		 e.printStackTrace();
		 }
	     finally 
	     {
	    	try 
	    	{
				con.close();
			} 
	    	catch (SQLException e) 
	    	{
				e.printStackTrace();
			}
	    }
		return esito;
}	


}



