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
import model.Paziente;

@WebServlet("/LoginPaziente")
public class LoginPaziente extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginPaziente() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		ConnessioneDB con = new ConnessioneDB();
		try (PrintWriter out = response.getWriter()){
			String email = request.getParameter("login-emailP"); // temporaneo guardare form
			String password = request.getParameter("login-passwordP");
			Paziente paziente = PazienteDAO.loginPaziente(email, password);
			if (paziente != null) {  // controllare logga sempre
				request.getSession().setAttribute("utenteP", paziente);
				response.sendRedirect("home.jsp");
			} else {
			response.sendRedirect("LoginErrore.html");// temporaneo inserire pagina	
			}
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}
}