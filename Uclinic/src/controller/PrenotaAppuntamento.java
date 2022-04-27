package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PazienteDAO;
import model.Appuntamento;
import model.Paziente;


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
		
		int idDottore = Integer.parseInt(request.getParameter("idDottore"));
		int idClinica = PazienteDAO.recuperaIdClinica(idDottore);
		Paziente p =(Paziente) request.getSession().getAttribute("utenteP");
		int idPaziente = p.getIdPaziente();
		int giorno =Integer.parseInt(request.getParameter("giorno"));
		int mese =Integer.parseInt(request.getParameter("mese"));
		int anno =Integer.parseInt(request.getParameter("anno"));
		int ora =Integer.parseInt(request.getParameter("ora"));
		
		Appuntamento app = new Appuntamento(idClinica, idDottore, idPaziente, giorno, mese, anno, ora);
		
		if(PazienteDAO.validaAppuntamento(app)==true) {
		   PazienteDAO.prenotaAppuntamento(app);
		
		//response.sendRedirect("profiloUtente.jsp");
		} 

		
	}

}
