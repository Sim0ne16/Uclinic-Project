package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClinicaDAO;
import model.Orario;


@WebServlet("/ModificaOrario")
public class ModificaOrario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ModificaOrario() {
        super();

    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		int idOrario = Integer.parseInt(request.getParameter("idOrario"));
		
		int idDottore = Integer.parseInt(request.getParameter("codDottore"));
		int giorno = Integer.parseInt(request.getParameter("giorno"));
		int mese = Integer.parseInt(request.getParameter("mese"));
		int anno = Integer.parseInt(request.getParameter("anno"));
		int oraI = Integer.parseInt(request.getParameter("oraI"));
		int oraF = Integer.parseInt(request.getParameter("oraF"));
		
		Orario o = new Orario(idOrario,idDottore,anno,mese,giorno,oraI,oraF);
		ClinicaDAO.modificaOrario(o);
		 response.sendRedirect("gestisciOrariDottore.jsp?id="+idDottore);
		
		
		
	}

}
