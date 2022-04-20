package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PazienteDAO;
import model.Appuntamento;


@WebServlet("/PrenotaAppuntamento")
public class PrenotaAppuntamento extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public PrenotaAppuntamento() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		Appuntamento app= null; //request.getParameter("appuntamento-N"); -> deve essere preso dal form html durante la scelta dell'appuntamento
		PazienteDAO.prenotaAppuntamento(app, LoginPaziente.pazienteLog) ;
		response.sendRedirect(""); //pagina o window alert con appuntamento prenotato (possibile email di prenotazione effettuata)
		
	}

}
