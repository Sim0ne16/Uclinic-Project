package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClinicaDAO;


@WebServlet("/CercaPazXCodFisc")
public class CercaPazXCodFisc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public CercaPazXCodFisc() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		String codFisc = request.getParameter("codFiscPaz"); //parametro in arrivo da html
		
		ClinicaDAO.cercaPazXCodFisc(LoginClinica.clinique, codFisc);
		//restituisce tutto dal paziente ricercato , da decidere come farlo vedere
	}

}
