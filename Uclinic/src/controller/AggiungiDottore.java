package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.ConnessioneDB;
import dao.ClinicaDAO;
import model.Clinica;
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
		String nome = request.getParameter("dNome");// Momentaneo guarda jsp!!!!!
		String cognome = request.getParameter("dCognome");
		String eta1 = request.getParameter("dEta");
		int eta = Integer.parseInt(eta1);
		String email = request.getParameter("dEmail");
		String recapitoTel = request.getParameter("dRecapito");
		String specializzazione = request.getParameter("dSpecializzazione");
		String costoVisit = request.getParameter("dCosto");
		double costoVisita = Double.parseDouble(costoVisit);
		Dottore dottore = new Dottore(nome, cognome, eta,  email, recapitoTel, specializzazione, costoVisita);
		Clinica c = (Clinica) request.getSession().getAttribute("utenteC");
		// ClinicaDAO.aggiungiDottore(dottore, LoginClinica.clinique); 
		
		//NON AGGIUNGE IN PERSONALE
		ClinicaDAO.aggiungiDottore(dottore, c); 
		ClinicaDAO.aggiungiDottorePersonale(dottore, c);
		response.sendRedirect("dottoreaggiunto.html"); // Redirect verso pagina Dottore Aggiunto
		try 
		{
			con.close();
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
	}
		
	}


