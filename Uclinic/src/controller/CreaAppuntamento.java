package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.ConnessioneDB;
import dao.ClinicaDAO;
import model.Appuntamento;


@WebServlet("/CreaAppuntamento")
public class CreaAppuntamento extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public CreaAppuntamento() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		ConnessioneDB con = new ConnessioneDB();
		Appuntamento app = null;
		try 
		{
			con.connect();
			app = new Appuntamento();
			app.setCodClinica(LoginClinica.clinique.getIdClinica());
			app.setCodDottore(0);//menu a tendina con la lista dei dottori della clinica loggata
			app.setData("");//data da scegliere con un possibilie calendario?
			app.setOrario(0);//un numero da 1 a 24 anche questo in un possibile menu a tendina con controlli per non inserire orari strani?
			ClinicaDAO.creaAppuntamento(app);
			response.sendRedirect("");//inserire pagina da visualizzare tipo APPUNTAMENTO PRENOTATO
			
			//qua va inserita la possibile agenda
		} 
		catch (SQLException e1) 
		{
			e1.printStackTrace();
		} 
		finally
		{
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

}
