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

public class ClinicaDAO {

	 public static boolean checkEmail(String email ) {
    	 boolean esito = false;
    	 ConnessioneDB con = new ConnessioneDB();
    	 try {
			con.connect();
			String sql="Select * from clinica where email like ?";
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

	  public static int recuperaIdClinica(Clinica clinica) {
	    	 int id =0 ;
	    	 ConnessioneDB con = new ConnessioneDB();
	    	 try {
				con.connect();
				String sql = "Select idClinica from clinica where email like ?";
				PreparedStatement stm = con.getCon().prepareStatement(sql);
				stm.setString(1,clinica.getEmail());
				ResultSet rs = stm.executeQuery();
				if(rs.next()) {
					id= rs.getInt("idClinica");
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
	
	
	public static boolean modificaClinica(Clinica c) {
		boolean esito = false; 
		ConnessioneDB con = new ConnessioneDB();
		try 
		{
			con.connect();
			String sql = "UPDATE clinica SET nome = ? , regione = ? , citta = ? , indirizzo = ? , email = ? , password = ? , recapitoTel = ? where idClinica = ?";
			PreparedStatement pst = con.getCon().prepareStatement(sql);
			pst.setString(1, c.getNome());
			pst.setString(2, c.getRegione());
			pst.setString(3, c.getCitta());
			pst.setString(4, c.getIndirizzo());
			pst.setString(5, c.getEmail());
			pst.setString(6 ,c.getPassword());
			pst.setString(7, c.getRecapitoTel());
			pst.setInt(8, c.getIdClinica());
			if(pst.executeUpdate()>0) 
			{
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

	
	
	 public static Clinica visualizzaClinica(int id) {
			Clinica c = new Clinica();
			ConnessioneDB con = new ConnessioneDB();
			try {
				con.connect();
				String sql= "select * from clinica where idClinica = ?" ;
				PreparedStatement stm = con.getCon().prepareStatement(sql);
				stm.setInt(1, id);
				ResultSet rs = stm.executeQuery();
				if(rs.next()) 
				{
		         	String nome = rs.getString("nome");
					String regione = rs.getString("regione");
					String citta = rs.getString("citta");
					String indirizzo = rs.getString("indirizzo");
					String email = rs.getString("email");
					String password = rs.getString("password");
					String recapito = rs.getString("recapitoTel");
					
					c.setIdClinica(id);
					c.setNome(nome);
					c.setRegione(regione);
					c.setCitta(citta);
					c.setIndirizzo(indirizzo);
					c.setEmail(email);
					c.setPassword(password);
					c.setRecapitoTel(recapito);
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
				} catch (SQLException e) 
				{
					e.printStackTrace();
				}
				}
			return c;
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
	
	
	public static int recuperaIdDottore(Dottore d) {
		int id = 0;
		ConnessioneDB con = new ConnessioneDB();
		try {
			con.connect();
			String sql = "Select idDottore from dottore where nome like ? and cognome like ? and eta like ?";
			PreparedStatement stm = con.getCon().prepareStatement(sql);
			stm.setString(1, d.getNome());
			stm.setString(2, d.getCognome());
			stm.setInt(3,d.getEta());
			ResultSet rs = stm.executeQuery();
			if ( rs.next()) {
				id = rs.getInt("idDottore");
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
	
	

	
	public static boolean eliminaDottore(int id) { 
		boolean esito = false;
		ConnessioneDB con = new ConnessioneDB();
		try {
			con.connect();
			String query = "DELETE FROM dottore WHERE idDottore = ? ";
			PreparedStatement pst = con.getCon().prepareStatement(query);
			pst.setInt(1, id);	
			pst.executeUpdate();
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
			pst.setString(2, d.getCognome());
			pst.setInt(3, d.getEta());
			pst.setString(4, d.getEmail());
			pst.setString(5, d.getRecapitoTel());
			pst.setString(6, d.getSpecializzazione());
			pst.setDouble(7, d.getCostoVisita());
			pst.setInt(8, d.getIdDottore());
		if(	pst.executeUpdate()>0) {
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


	public static List<Paziente> cercaPaziente(Clinica c, String ricerca) {
		ConnessioneDB con = new ConnessioneDB();
		List<Paziente> listaP = new ArrayList<Paziente>();
		Paziente p = null;
		try 
		{
			con.connect();
			
			String sql = "SELECT DISTINCT idPaziente,nome,cognome,eta,cFisc,email,regione,citta "
					+ "FROM paziente "
					+ "join appuntamento where paziente.idPaziente = appuntamento.codPaziente "
					+ "and appuntamento.codClinica=" + c.getIdClinica() + " and "
					+ "(paziente.cFisc like '%" + ricerca + "%' "
							+ "or paziente.nome like '%" + ricerca + "%' "
									+ "or paziente.cognome like '%" + ricerca + "%');";
			PreparedStatement pst = con.getCon().prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {	
			p= new Paziente();
			p.setIdPaziente(rs.getInt("idPaziente"));
			p.setNome(rs.getString("nome"));
			p.setCognome(rs.getString("cognome"));
			p.setEta(rs.getInt("eta"));
			p.setcFisc(rs.getString("cFisc"));
			p.setEmail(rs.getString("email"));
			p.setRegione(rs.getString("regione"));
			p.setCitta(rs.getString("citta"));
	        if(!p.getNome().equals("paziente")) {
				listaP.add(p);
			}
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
		return listaP;
		
	}

	
	public static Paziente recuperaPaziente(int id) {
		Paziente paz = new Paziente();
		ConnessioneDB con = new ConnessioneDB();
		try {
			con.connect();
			String sql = "Select * from paziente where idPaziente like ?";
			PreparedStatement stm = con.getCon().prepareStatement(sql);
			stm.setInt(1, id);
			ResultSet rs = stm.executeQuery();
			if(rs.next()) {
				String nome = rs.getString("nome");
				String cognome = rs.getString("cognome");
				int eta = rs.getInt("eta");
				String cf = rs.getString("cFisc");
				String email = rs.getString("email");
				String regione = rs.getString("regione");
				String citta = rs.getString("citta");
				
				paz.setNome(nome);
				paz.setCognome(cognome);
			    paz.setEta(eta);
			    paz.setIdPaziente(id);
			    paz.setEmail(email);
			    paz.setCitta(citta);
			    paz.setRegione(regione);
			    paz.setcFisc(cf);
				
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
		return paz;
	}
	
	
	




}



