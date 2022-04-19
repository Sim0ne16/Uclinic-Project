package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import connection.ConnessioneDB;

import model.Paziente;

public class PazienteDAO {
	

	public static boolean registraPaziente(Paziente paziente) throws ClassNotFoundException, SQLException {
		boolean result = false;
		ConnessioneDB con = new ConnessioneDB();
		try {
			con.connect();
			String query = "INSERT INTO paziente (nome, cognome, eta, cFisc, email, password,regione,citta) VALUES"
					+ "(?,?,?,?,?,?,?,?);";
		PreparedStatement	pst = con.getCon().prepareStatement(query);
			pst.setString(1, paziente.getNome());
			pst.setString(2, paziente.getCognome());
			pst.setInt(3, paziente.getEta());
			pst.setString(4, paziente.getcFisc());
			pst.setString(5, paziente.getEmail());
			pst.setString(6, paziente.getPassword());
			pst.setString(7, paziente.getRegione());
			pst.setString(8, paziente.getCitta());

			if(pst.executeUpdate()>0) {
				result = true;
			}
			System.out.println("Paziente Aggiunto");
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
	
public static boolean check(String email,String password1,String password2,int eta,String cf) {
	boolean esito = false;
	ConnessioneDB con = new ConnessioneDB();
	try {
		con.connect();
		String query = "select * from paziente where email =?";
		PreparedStatement pst = con.getCon().prepareStatement(query);
	    pst.setString(1, email);          
	    ResultSet rs = pst.executeQuery();
	    //controlli per una registrazione 

	    if(rs.next()) {
	    	esito = true;
	    }
	    
	    if(password1 != password2) {
	    	esito = true;
	    }
	    
	    if(password1.length()<5) {
	    	esito = true;
	    }
	    
	    if(eta>110 || eta<18) {
	    	esito = true;
	    }
	    
	    if(cf.length()<16) {
	    	esito=true;
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
return esito;
}
	
	
	
	public static Paziente loginPaziente(String email, String password) {
		Paziente paziente = null;
		ConnessioneDB con = new ConnessioneDB();
		try {
			con.connect();
		String query = "select * from paziente where email=? and password=?";
			PreparedStatement pst = con.getCon().prepareStatement(query);
			pst.setString(1, email);
			pst.setString(2, password);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				paziente = new Paziente();
				paziente.setIdPaziente(rs.getInt("idPaziente"));
				paziente.setNome(rs.getString("nome"));
				paziente.setCognome(rs.getString("cognome"));
				paziente.setRegione(rs.getString("regione"));
				paziente.setCitta(rs.getString("citta"));
				paziente.setEta(rs.getInt("eta"));
				paziente.setcFisc(rs.getString("cFisc"));
				paziente.setEmail(rs.getString("email"));
				paziente.setPassword(rs.getString("password"));
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
		return paziente;
	}
	
	

	
	  
	    

	 
	
	

}
