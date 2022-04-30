package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
			String email = request.getParameter("regPemail");
			String password = request.getParameter("regPpassword");
			String nome = request.getParameter("regPnome");
			String cognome = request.getParameter("regPcognome");
			String et = request.getParameter("regPeta");
			int eta = Integer.parseInt(et);
			String citta = request.getParameter("regPcitta");
			String regione = request.getParameter("regPregione");
			String cFisc = request.getParameter("regPcf");
			Paziente paziente = new Paziente(nome, cognome, eta, cFisc, email, password, regione, citta);
			
			
			if(PazienteDAO.checkEmail(paziente.getEmail())==false) {
				try {
					PazienteDAO.registraPaziente(paziente);
					int x  =PazienteDAO.recuperaIdPaziente(paziente);
					paziente.setIdPaziente(x);
					request.getSession().setAttribute("utenteP", paziente);		
					response.sendRedirect("profiloUtente.jsp?id="+x);
				} catch (ClassNotFoundException e) {			
					e.printStackTrace();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				
			}else {
				response.sendRedirect("formUtente.jsp");
			}


		}
	}
		

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}