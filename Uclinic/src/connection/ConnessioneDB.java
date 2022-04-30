package connection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.cj.jdbc.MysqlDataSource;

public class ConnessioneDB {
	
	private Connection con = null;
	//parametri di configurazione del DB
	private static final String NOME_DB = "uclinic_project";
	private static final int PORT = 3306;
	private static final String SERVER_NAME = "localhost";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "!%ENR54pnh";

	public Connection getCon() {
		return con;
	}

	public void setCon(Connection con) {
		this.con = con;
	}


	public void close() throws SQLException {
		try {
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	
	//metodo di connessione al db con i parametri corretti
	public void connect() throws SQLException {
		if (con == null) {

			MysqlDataSource dataSource = new MysqlDataSource();
			dataSource.setDatabaseName(NOME_DB);
			dataSource.setPortNumber(PORT);
			dataSource.setServerName(SERVER_NAME);
			dataSource.setUser(USERNAME);
			dataSource.setPassword(PASSWORD);

			con = dataSource.getConnection();

			System.out.println("Connessione avvenuta con il database : " + con.getCatalog());

		}

	}
	
	public ResultSet executeQuery(String sql) throws SQLException{ 
		Statement st = con.createStatement(); 
		ResultSet set = st.executeQuery(sql);
		return set; 
	}

	public boolean executeUpdate(String sql)throws SQLException { 
		Statement st = con.createStatement(); 
		boolean done = st.execute(sql);
		return done; 
	}

}
