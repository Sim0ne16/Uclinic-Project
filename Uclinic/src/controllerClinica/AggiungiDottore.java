package controllerClinica;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.ConnessioneDB;
import dao.ClinicaDAO;
import model.Dottore;

@WebServlet("/AggiungiDottore")
public class AggiungiDottore extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AggiungiDottore() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		ConnessioneDB con = new ConnessioneDB();
		String nome = request.getParameter("nomeDottoreFormHTML");// Momentaneo guarda jsp!!!!!
		String cognome = request.getParameter("regP-password");
		String eta1 = request.getParameter("regP-nome");
		int eta = Integer.parseInt(eta1);
		String email = request.getParameter("regP-cognome");
		String recapito = request.getParameter("regP-eta");
		int recapitoTel = Integer.parseInt(recapito);
		String specializzazione = request.getParameter("regP-citta");
		String costoVisit = request.getParameter("regP-regione");
		double costoVisita = Double.parseDouble(costoVisit);
		Dottore dottore = new Dottore(nome, cognome, eta,  email, recapitoTel, specializzazione, costoVisita);
		ClinicaDAO cDAO = new ClinicaDAO(con.getCon());
		cDAO.aggiungiDottore(dottore, LoginClinica.idClinica);
		response.sendRedirect("dottoreaggiunto.html"); // Redirect verso pagina Dottore Aggiunto
		
	}

}
