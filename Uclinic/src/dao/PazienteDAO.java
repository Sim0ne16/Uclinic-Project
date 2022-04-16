package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import connection.ConnessioneDB;

import model.Paziente;

public class PazienteDAO {
	
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;

	public PazienteDAO(Connection con) {
		super();
		this.con = con;
	}

	public boolean registraPaziente(Paziente paziente) throws ClassNotFoundException, SQLException {
		boolean result = false;
		ConnessioneDB con = new ConnessioneDB();
		try {
			con.connect();
			query = "INSERT INTO paziente (nome, cognome, eta, cFisc, email, password) VALUES"
					+ "(?,?,?,?,?,?,?);";
			pst = this.con.prepareStatement(query);
			pst.setString(1, paziente.getNome());
			pst.setString(2, paziente.getCognome());
			pst.setInt(3, paziente.getEta());
			pst.setString(4, paziente.getcFisc());
			pst.setString(5, paziente.getEmail());
			pst.setString(6, paziente.getPassword());
			pst.executeUpdate();
			result = true;
			System.out.println("Paziente Aggiunto");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			con.close();
		}
		return result;
	}
	
	public Paziente loginPaziente(String email, String password) {
		Paziente paziente = null;
		ConnessioneDB con = new ConnessioneDB();
		try {
			con.connect();
			query = "select * from paziente where email=? and password=?";
			pst = this.con.prepareStatement(query);
			pst.setString(1, email);
			pst.setString(2, password);
			rs = pst.executeQuery();
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
	
	
	//aggiunto 14/04 23:50
	
	   public boolean validateP(String email,String password) throws ClassNotFoundException { //metodo validazione?
		    
		         boolean esito = false;
	        	ConnessioneDB con = new ConnessioneDB();
	          try {
					con.connect();
				     query = "select * from login where username = ? and password = ? ";
			            pst = this.con.prepareStatement(query);
						pst.setString(1, email);
						pst.setString(2, password);
						rs = pst.executeQuery();
						if (rs.next()) {
							esito = true;
						}
				} catch (SQLException e) {
					e.printStackTrace();
				} 
	          try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	          return esito;
	   }
	    

	 
	
	

}
