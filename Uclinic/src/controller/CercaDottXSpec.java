package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.ConnessioneDB;
import dao.PazienteDAO;
import model.Dottore;

@WebServlet("/CercaDottXSpec")
public class CercaDottXSpec extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public CercaDottXSpec() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		String spec = request.getParameter("specDott");//nome del campo html
		
		List<Dottore> listaD = PazienteDAO.cercaDottXSpec(spec);
		//decidete poi voi cosa farci con sta lista, come stamparla ecc...
	}

}
