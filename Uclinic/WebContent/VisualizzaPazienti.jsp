<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.PazienteDAO"%>
<%@page import="model.*"%>
<%@page import="java.util.*"%>
<%@page import="dao.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
   <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/PazientiClinica.css">
    <script src="https://kit.fontawesome.com/367813bf67.js" crossorigin="anonymous"></script>
    <title>Ricerca</title>
</head>
<% Clinica c= (Clinica)session.getAttribute("utenteC"); %>
<% List<Paziente> listaP = ClinicaDAO.cercaPaziente(c, request.getParameter("ricerca")); %>
<body>
 <div class="container">
        
        <label class="logo"> <a>Uclinic</a></label>
        <ul class="nav">
            
            
            <li><a href="">Home</a></li>
            <li><a href="">About</a></li>

            <li class="parent">
                <a href="">Profile</a>
                <ul>
                    <li><a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Modifica Profilo</a></li>
                    <li><a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Modifica Medical History</a></li>
                    <li class="parent">
                        <a href="#">Impostazioni</a>
                        <ul>
                            <li>
                                <a href="#" class="ciao">Ciao</a>
                                
                            </li>
                        </ul>
                    </li>
                    
                </ul>
            </li>
</ul>
      
    </div>
 
 
   <section id="wrapper">

 
			
     
    
 
<!-- da aggiungere id  -->

<div class="tuttecarte">


   <div class="titoloR">
<h3>Pazienti</h3>
</div>
<div class="carteDott">
   
  <% for(Paziente p : listaP) {  %>


	
			<div class="card">
		
					<img class="card-img-top" src="https://cdn.pixabay.com/photo/2017/09/30/18/53/prognosis-icon-2803190_960_720.png" alt="Card image cap">
					
					<h5 class="card-title">
						<%=p.getNome()%> <%=p.getCognome()%></h5>
						

 						<div class="tooltip" >
                            
                            <a class="btn btn-dark" href="profiloUtenteEst.jsp?id=<%=p.getIdPaziente() %>" title="Ispeziona"><i style="color:#2eab97" class="fa-solid fa-eye fa-2x"></i></a>
						</div>
					
				</div>
				<% }
				
			
 %>
				</div>  
				<br>
				
	
		
   
	
		
			
 
       </div>    
 
 
            <div class="wave wave1"></div>
            <div class="wave wave2"></div>
            <div class="wave wave3"></div>
            <div class="wave wave4"></div>
            <div class="wave wave5"></div>
            
            </section> 


</body>
</html>