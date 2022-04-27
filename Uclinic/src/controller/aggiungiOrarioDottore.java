package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClinicaDAO;
import model.Orario;


@WebServlet("/aggiungiOrarioDottore")
public class aggiungiOrarioDottore extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public aggiungiOrarioDottore() {
        super();

    }



	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		int giorno =Integer.parseInt(request.getParameter("giorno")); 
		int mese = Integer.parseInt(request.getParameter("mese")) ;
		int anno = Integer.parseInt(request.getParameter("anno")) ;
		int orai = Integer.parseInt(request.getParameter("oraI")) ;
		int oraf = Integer.parseInt(request.getParameter("oraF")) ;
		int idDottore = Integer.parseInt(request.getParameter("idDottore")) ;
		Orario o = new Orario(idDottore,anno,mese,giorno,orai,oraf);
		
		ClinicaDAO.aggiungiOrario(o);
		//redirect orarioaggiuntosuccess
	}

}
