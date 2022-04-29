package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.ClinicaDAO;
import model.Clinica;
import model.Orario;


@WebServlet("/eliminaOrarioDottore")
public class eliminaOrarioDottore extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public eliminaOrarioDottore() {
        super();

        
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		response.setContentType("text/html;charset=UTF-8");
		
		
		int idOrario = Integer.parseInt( request.getParameter("IdOrario"));
		
		Orario o = ClinicaDAO.visualizzaOrario(idOrario);
		int idDottore = o.getIdDottore();
		ClinicaDAO.eliminaOrario(idOrario);
		response.sendRedirect("gestisciOrariDottore.jsp?id="+idDottore)     ;
		
		
	}

}
