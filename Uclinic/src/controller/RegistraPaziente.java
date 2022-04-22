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
import dao.PazienteDAO;
import model.Paziente;

@WebServlet("/RegistraPaziente")
public class RegistraPaziente extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegistraPaziente() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try (PrintWriter out = response.getWriter()) {
			String email = request.getParameter("regP-email");
			String password = request.getParameter("regP-password");
			String password2 = request.getParameter("regP-password2");
			String nome = request.getParameter("regP-nome");
			String cognome = request.getParameter("regP-cognome");
			String et = request.getParameter("regP-eta");
			int eta = Integer.parseInt(et);
			String citta = request.getParameter("regP-citta");
			String regione = request.getParameter("regP-regione");
			String cFisc = request.getParameter("regP-cf");
			Paziente paziente = new Paziente(nome, cognome, eta, cFisc, email, password, regione, citta);
			
			
			if( PazienteDAO.check(email,password,password2,eta,cFisc) == false) {			
			try {
				request.getSession().setAttribute("utenteP", paziente);
				PazienteDAO.registraPaziente(paziente);
				response.sendRedirect("home.jsp");
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}

			}
			else {
				response.sendRedirect("regUtenteFail.jsp");
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}