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


		try (PrintWriter out = response.getWriter()) {
			String email = request.getParameter("regCemail"); // nome campi html
			String password = request.getParameter("regCpassword");
			String nome = request.getParameter("regCnome");
			String rec = request.getParameter("regCrecapito");
			String citta = request.getParameter("regCcitta");
			String regione = request.getParameter("regCregione");
			String indirizzo = request.getParameter("regCindirizzo");
			Clinica clinica = new Clinica(nome, regione, citta, indirizzo, email, password, rec);
			
		
	       if(ClinicaDAO.checkEmail(clinica.getEmail())==false) {
	    	   try {
				ClinicaDAO.registraClinica(clinica);
				request.getSession().setAttribute("utenteC", clinica); 
				int x = ClinicaDAO.recuperaIdClinica(clinica);
				response.sendRedirect("profiloClinica.jsp?id="+x);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	       }else {
	    	   response.sendRedirect("formClinica.jsp");
	       }
		}
	}
			
		

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
