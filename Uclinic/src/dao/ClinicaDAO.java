package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import connection.ConnessioneDB;
import model.Clinica;
import model.Dottore;

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
			pst.setInt(7, clinica.getRecapitoTel());
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
			clinica = new Clinica();
			if (rs.next()) {
				clinica.setIdClinica(rs.getInt("idClinica"));
				clinica.setNome(rs.getString("nome"));
				clinica.setRegione(rs.getString("regione"));
				clinica.setCitta(rs.getString("citta"));
				clinica.setIndirizzo(rs.getString("indirizzo"));
				clinica.setEmail(rs.getString("email"));
				clinica.setPassword(rs.getString("password"));
				clinica.setRecapitoTel(rs.getInt("recapitoTel"));
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
	
	public static boolean aggiungiDottore(Dottore d, int idClinica) {
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
		    pst.setInt(5, d.getRecapitoTel());
		    pst.setString(6, d.getSpecializzazione());
		    pst.setDouble(7, d.getCostoVisita());
		    pst.executeUpdate();
		    System.out.println("Dottore Aggiunto");
		     
		   String  query2 = "INSERT INTO personale (idClinica, idDottore) VALUES (?,?)";
	        pst = con.getCon().prepareStatement(query2);
		    pst.setInt(1, d.getIdDottore());
		    pst.setInt(2, idClinica);
		    pst.executeUpdate();
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
			pst.setInt(5, d.getRecapitoTel());
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
}
