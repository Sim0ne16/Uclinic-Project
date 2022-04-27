package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClinicaDAO;
import model.Clinica;



@WebServlet("/ModificaClinica")
public class ModificaClinica extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ModificaClinica() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		int idClinica = Integer.parseInt(request.getParameter("id"));	
		
	    String nome = request.getParameter("cNome");
		String regione = request.getParameter("cRegione");
		String citta = request.getParameter("cCitta");
		String indirizzo = request.getParameter("cIndirizzo");
		String email = request.getParameter("cEmail");
		String password = request.getParameter("cPassword");
		String recapitoTel = request.getParameter("cRecapitoTel");
		
		Clinica c = new Clinica(idClinica,nome,regione,citta,indirizzo,email,password,recapitoTel);
		
		ClinicaDAO.modificaClinica(c);
		request.getSession().setAttribute("utenteC", c);
		response.sendRedirect("modificaClinicaSuccess.jsp?id="+idClinica);
		
		
	}

}
