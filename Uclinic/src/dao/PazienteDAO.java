package dao;

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
	

     public static boolean checkEmail(String email ) {
    	 boolean esito = false;
    	 ConnessioneDB con = new ConnessioneDB();
    	 try {
			con.connect();
			String sql="Select * from paziente where email like ?";
			PreparedStatement stm = con.getCon().prepareStatement(sql);
			stm.setString(1, email);
			ResultSet rs = stm.executeQuery();
			if(rs.next()) {
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
	
     public static int recuperaIdPaziente(Paziente paziente) {
    	 int id =0 ;
    	 ConnessioneDB con = new ConnessioneDB();
    	 try {
			con.connect();
			String sql = "Select idPaziente from paziente where email like ?";
			PreparedStatement stm = con.getCon().prepareStatement(sql);
			stm.setString(1,paziente.getEmail());
			ResultSet rs = stm.executeQuery();
			if(rs.next()) {
				id= rs.getInt("idPaziente");
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
    	 return id; 
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
	
	
	public static boolean prenotaAppuntamento(Appuntamento app, Paziente p) {
		ConnessioneDB con = new ConnessioneDB();
		boolean esito = false;
		try 
		{
			con.connect();
			String sql = "update appuntamento set codPaziente=?, disponibilita=1 where idAppuntamento=?";
			PreparedStatement pst = con.getCon().prepareStatement(sql);
			pst.setInt(1, p.getIdPaziente());
			pst.setInt(2, app.getIdAppuntamento());
			if(pst.executeUpdate()>0) 
			{
				esito=true;
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

	
public static List<Dottore> cercaDottore(String ricerca) {
	ConnessioneDB con = new ConnessioneDB();
	List<Dottore> listaD = null;
	try {
		con.connect();
		String sql = "SELECT * FROM dottore where nome like '%" + ricerca + "%' or cognome like '%" + ricerca + "%' or specializzazione like '%" + ricerca +"%'";
		PreparedStatement pst = con.getCon().prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		listaD = new ArrayList<Dottore>();
		while (rs.next()) {
			Dottore d = new Dottore();
			d.setIdDottore(rs.getInt("idDottore")); // sempre meglio portarsi dietro l'id!
			d.setNome(rs.getString("nome"));
			d.setCognome(rs.getString("cognome"));
			d.setEmail(rs.getString("email"));
			d.setRecapitoTel(rs.getString("recapitoTel"));
			d.setSpecializzazione(rs.getString("specializzazione"));
			listaD.add(d);
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
	return listaD;
}


	
public static List<Clinica> cercaClinica(String ricerca) {
	ConnessioneDB con = new ConnessioneDB();
	List<Clinica> listaC = null;
	try 
	{
		con.connect();
		String sql = "SELECT * FROM clinica where nome like '%" + ricerca + "%'";
		PreparedStatement pst = con.getCon().prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		listaC = new ArrayList<Clinica>();
		while (rs.next()) 
		{
			Clinica c = new Clinica();
			c.setIdClinica(rs.getInt("idClinica")); // sempre meglio portarsi dietro l'id!
			c.setNome(rs.getString("nome"));
			c.setRegione(rs.getString("regione"));
			c.setCitta(rs.getString("citta"));
			c.setIndirizzo(rs.getString("indirizzo"));
			c.setEmail(rs.getString("email"));
			c.setRecapitoTel(rs.getString("recapitoTel"));
			listaC.add(c);
		}
	} catch (SQLException e) 
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
	return listaC;
}


public static Clinica recuperaClinica(int id) {
	Clinica C = new Clinica();
	ConnessioneDB con = new ConnessioneDB();
	try {
		con.connect();
		String sql = "Select * from clinica where idClinica like ?";
		PreparedStatement stm = con.getCon().prepareStatement(sql);
		stm.setInt(1, id);
		ResultSet rs = stm.executeQuery();
		if(rs.next()) {
			String nome = rs.getString("nome");
			String indirizzo = rs.getString("indirizzo");	
			String recapito = rs.getString("recapitoTel");
			String email = rs.getString("email");
			String regione = rs.getString("regione");
			String citta = rs.getString("citta");
			
			C.setNome(nome);
			C.setIndirizzo(indirizzo);	    
		    C.setIdClinica(id);
		    C.setEmail(email);
		    C.setCitta(citta);
		    C.setRegione(regione);
		    C.setRecapitoTel(recapito);
		 
			
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
	return C;
}

}
	    

	 
	
	

