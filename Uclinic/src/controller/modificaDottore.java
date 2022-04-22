package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.ClinicaDAO;
import model.Dottore;



@WebServlet("/modificaDottore")
public class modificaDottore extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public modificaDottore() {
        super();

    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
	

			int idDoc = Integer.parseInt( request.getParameter("id"));	
	
		    String email = request.getParameter("dEmail");
			String nome = request.getParameter("dNome");
			String cognome = request.getParameter("dCognome");
			String et = request.getParameter("dEta");
			String recapito = request.getParameter("dRecapito");
			int eta = Integer.parseInt(et);
			String specializzazione = request.getParameter("dSpecializzazione");
			String costoVisit = request.getParameter("dCostoVisita");
			Double costoVisita = Double.parseDouble(costoVisit);
			
			Dottore d = new Dottore(idDoc,nome,cognome,eta,email,recapito,specializzazione,costoVisita);
			
			ClinicaDAO.modificaDottore(d);
			response.sendRedirect("modificaProfiloDottoreSuccess.jsp?id="+idDoc);
		
	}

	}


