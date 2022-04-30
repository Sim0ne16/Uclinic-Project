package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.PazienteDAO;
import model.Paziente;



@WebServlet("/modificaPaziente")
public class modificaPaziente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public modificaPaziente() {
        super();

    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
	

			int idPaz = Integer.parseInt( request.getParameter("id"));	
	
		    String email = request.getParameter("uEmail");
			String nome = request.getParameter("uNome");
			String cognome = request.getParameter("uCognome");
			String et = request.getParameter("uEta");	
			int eta = Integer.parseInt(et);
			String regione = request.getParameter("uRegione");
			String citta = request.getParameter("uCitta");
			String cf = request.getParameter("uCf");
		
			
			Paziente p = new Paziente(idPaz,nome,cognome,eta,cf,email,citta,regione);
			
			PazienteDAO.modificaUtente(p);
			request.getSession().setAttribute("utenteP", p);
			response.sendRedirect("modificaProfiloUtenteSuccess.jsp?id="+idPaz);
			
	}

	}


