package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import connection.ConnessioneDB;
import model.Clinica;
import model.Dottore;

public class ClinicaDAO {

	private Connection con;
	private String query;
	private String query2;
	private PreparedStatement pst;
	private ResultSet rs;

	public ClinicaDAO(Connection con) {
		super();
		this.con = con;
	}

	public boolean registraClinica(Clinica clinica) throws ClassNotFoundException, SQLException {
		boolean result = false;
		ConnessioneDB con = new ConnessioneDB();
		try {
			con.connect();
			query = "INSERT INTO clinica (nome, regione, citta, indirizzo, email, password, recapitoTel) VALUES"
					+ "(?,?,?,?,?,?,?);";
			pst = this.con.prepareStatement(query);
			pst.setString(1, clinica.getNome());
			pst.setString(2, clinica.getRegione());
			pst.setString(3, clinica.getCitta());
			pst.setString(4, clinica.getIndirizzo());
			pst.setString(5, clinica.getEmail());
			pst.setString(6, clinica.getPassword());
			pst.setInt(7, clinica.getRecapitoTel());
			pst.executeUpdate();
			result = true;
			System.out.println("Clinica Aggiunta");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			con.close();
		}
		return result;
	}

	public Clinica loginClinica(String email, String password) {
		Clinica clinica = null;
		ConnessioneDB con = new ConnessioneDB();
		try {
			con.connect();
			query = "select * from clinica where email=? and password=?";
			pst = this.con.prepareStatement(query);
			pst.setString(1, email);
			pst.setString(2, password);
			rs = pst.executeQuery();
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
			else {
				
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
	
	public boolean aggiungiDottore(Dottore d, int idClinica) {
		boolean esito = false;
		ConnessioneDB con = new ConnessioneDB();
		try {
			con.connect();
			query = "INSERT INTO dottore (nome, cognome, eta, email, recapitoTel, specializzazione, costoVisita) VALUES (?,?,?,?,?,?,?)";
			pst = this.con.prepareStatement(query);
			pst.setString(1, d.getNome());
			pst.setString(2, d.getCognome());
		    pst.setInt(3, d.getEta());
		    pst.setString(4, d.getEmail());
		    pst.setInt(5, d.getRecapitoTel());
		    pst.setString(6, d.getSpecializzazione());
		    pst.setDouble(7, d.getCostoVisita());
		    pst.executeUpdate();
		    System.out.println("Dottore Aggiunto");
		     
		    query2 = "INSERT INTO personale (idClinica, idDottore) VALUES (?,?)";
		    pst = this.con.prepareStatement(query2);
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
	
	public boolean eliminaDottore(Dottore d, int idClinica) { //elimina dottore solo dal personale
		boolean esito = false;
		ConnessioneDB con = new ConnessioneDB();
		try {
			con.connect();
			query = "DELETE FROM personale WHERE idDottore = ? AND idClinica = ?";
			pst = this.con.prepareStatement(query);
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
	
	public boolean modificaDottore(Dottore d) { //modifica dottore solo in dottore nel db
		boolean esito = false;
		ConnessioneDB con = new ConnessioneDB();
		try {
			con.connect();
			query = "UPDATE dottore SET nome = ? , cognome = ? , eta = ?, email = ?, recapitoTel = ?, specializzazione = ?, costoVisita = ? where idDottore = ?";
			pst = this.con.prepareStatement(query);
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
