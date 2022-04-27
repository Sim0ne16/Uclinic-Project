package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PazienteDAO;
import model.MedicalHistory;


@WebServlet("/modificaMH")
public class modificaMH extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public modificaMH() {
        super();
    
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
		MedicalHistory mh = new MedicalHistory();
		int id = Integer.parseInt(request.getParameter("id"));
		String altezz = request.getParameter("altezza");
		String pes = request.getParameter("peso");
		int altezza = Integer.parseInt(altezz);
		Double peso = Double.parseDouble(pes);
		String sangue = request.getParameter("sangue");
		
		mh.setIdPaziente(id);
		mh.setAltezza(altezza);
		mh.setGsangue(sangue);
		mh.setPeso(peso);
		
	if(	PazienteDAO.modificaMh(mh)==true ) {
		PazienteDAO.modificaMh(mh);
	} else {
		PazienteDAO.inserisciMh(mh);
	}
		
		
		
		
		
		
	}

}
