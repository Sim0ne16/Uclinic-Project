package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClinicaDAO;
import model.Orario;


@WebServlet("/aggiungiOrariDottore")
public class aggiungiOrariDottore extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public aggiungiOrariDottore() {
        super();
     
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<Integer> giorni = new ArrayList<Integer>();
		
		for(int x=1;x<31;x++) {
		String valoreG = String.valueOf(x);
		
		if(request.getParameter(valoreG)==null) {
			
		}else {
		int giorno = Integer.parseInt(request.getParameter(valoreG));
		giorni.add(giorno);
		}
		}
		
		
		
		
		for(int x=0;x<giorni.size();x++) {
		
		int giorno = giorni.get(x);	
		int mese = Integer.parseInt(request.getParameter("mese")) ;
		int anno = Integer.parseInt(request.getParameter("anno")) ;
		int orai = Integer.parseInt(request.getParameter("oraI")) ;
		int oraf = Integer.parseInt(request.getParameter("oraF")) ;
		int idDottore = Integer.parseInt(request.getParameter("idDottore")) ;
		Orario o = new Orario(idDottore,anno,mese,giorno,orai,oraf);
		ClinicaDAO.aggiungiOrario(o);
		
		}
		
		//redirect
		
	}

}
