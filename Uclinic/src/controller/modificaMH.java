package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PazienteDAO;
import model.MedicalHistory;


@WebServlet("/modificaMH")
public class modificaMH extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public modificaMH() {
        super();
    
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
	
		int idPaz = Integer.parseInt(request.getParameter("id"));
		double peso = Double.parseDouble(request.getParameter("peso"));
		int altezza = Integer.parseInt(request.getParameter("altezza"));
		String sangue = request.getParameter("sangue");
		
		MedicalHistory m = new MedicalHistory(idPaz,peso,altezza,sangue);
		

		
		if(PazienteDAO.controllaMh(idPaz)==false) {
			PazienteDAO.inserisciMh(m);
			response.sendRedirect("profiloUtente.jsp?id="+idPaz);
		}else {
			PazienteDAO.modificaMh(m);
			response.sendRedirect("profiloUtente.jsp?id="+idPaz);
		}
		
		
	}

}
