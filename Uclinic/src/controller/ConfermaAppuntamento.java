package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClinicaDAO;


@WebServlet("/ConfermaAppuntamento")
public class ConfermaAppuntamento extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ConfermaAppuntamento() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idApp = Integer.parseInt(request.getParameter("idAppuntamento"));
		ClinicaDAO.confermaApp(idApp);
		response.sendRedirect("gestisciAppuntamenti.jsp");
	}

}
