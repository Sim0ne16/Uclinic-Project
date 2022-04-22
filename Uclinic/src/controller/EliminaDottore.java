package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.ClinicaDAO;
import model.Clinica;


@WebServlet("/EliminaDottore")
public class EliminaDottore extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public EliminaDottore() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		Clinica c = (Clinica) request.getSession().getAttribute("utenteC");
		int x = c.getIdClinica();
		int idDoc = Integer.parseInt( request.getParameter("id"));
		ClinicaDAO.eliminaDottore(idDoc);
		response.sendRedirect("StaffClinica.jsp?id="+x);
		
		
	}

}
