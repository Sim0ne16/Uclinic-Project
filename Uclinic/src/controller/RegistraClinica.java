package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.ConnessioneDB;
import dao.ClinicaDAO;
import dao.PazienteDAO;
import model.Clinica;

@WebServlet("/RegistraClinica")
public class RegistraClinica extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public RegistraClinica() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ConnessioneDB con = new ConnessioneDB();
		try (PrintWriter out = response.getWriter()) {
			String email = request.getParameter("regC-email"); // nome campi html
			String password = request.getParameter("regC-password");
			String password2 = request.getParameter("regC-password2");
			String nome = request.getParameter("regC-nome");
			String rec = request.getParameter("regC-recapito");
			int recapito = Integer.parseInt(rec);
			String citta = request.getParameter("regC-citta");
			String regione = request.getParameter("regC-regione");
			String indirizzo = request.getParameter("regC-indirizzo");
			Clinica clinica = new Clinica(nome, regione, citta, indirizzo, email, password, recapito);
			
			if( ClinicaDAO.check(email,password,password2) == false) {			
			try {
				request.getSession().setAttribute("clinicaC", clinica); // Sessione
				ClinicaDAO.registraClinica(clinica);
				out.println("Registrazione avvenuta con successo");
				response.sendRedirect("home.jsp"); // temporaneo
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
			}
			else {
				response.sendRedirect("regClinicaFail.jsp");
			}
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
