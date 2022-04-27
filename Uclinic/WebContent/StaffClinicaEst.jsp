<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
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
    <link rel="stylesheet" href="css/StaffClinica.css">
    <script src="https://kit.fontawesome.com/367813bf67.js" crossorigin="anonymous"></script>
    <title>Staff</title>
</head>

<% 
 int id = Integer.parseInt(request.getParameter("id"));
 Clinica C = (Clinica)PazienteDAO.recuperaClinica(id);
 List<Dottore> dottori = ClinicaDAO.visualizzaDottori(id);
 Paziente p =(Paziente) session.getAttribute("utenteP");
%>



<body>

 
 
 <div class="container">
        
        <label class="logo"> <a>Uclinic</a></label>
        <ul class="nav">
            
            
            <li><a href="profiloUtente.jsp?id=<%=p.getIdPaziente() %>">Home</a></li>
            

        </ul>
        <input type="checkbox"  id="bc2">
        <label for="bc2" class="search-icon">
            <i class="fa fa-search"></i>
            <i class="fa fa-close"></i>
        </label>

        <div class="search-box">

            <form class="QI">

                <input type="search" placeholder="Search..." class="search">
                <input type="submit" value="Ok" class="sub">

            </form>
      
        </div>
    </div>
 
 
   <section id="wrapper">

 
			
     
    
 
<!-- da aggiungere id  -->

<div class="tuttecarte">


     
  


    <% for(Dottore d : dottori) {  %>
  <div class="carte">


	
			<span class="card">
		
					<img class="card-img-top" src="https://cdn.pixabay.com/photo/2017/05/15/23/47/stethoscope-icon-2316460_960_720.png" alt="Card image cap">
					
					<h3 class="category"><%=d.getSpecializzazione() %></h5>
						<h3 class="card-title"><%=d.getNome()%> <%=d.getCognome()%></h5>
						
						<% int idDottore = d.getIdDottore(); %>

 						<div class="tooltip" >
                            
                            <a class="btn btn-dark" href="visualizzaDottoreEst.jsp?idDottore=<%=idDottore%>" value="press me" title="Ispeziona"><i style="color:#2eab97" class="fa-solid fa-eye fa-2x"></i></a>
						</div>
					                  
				</div>
			
        </span>     
	
		
			<% }
				
			
 %>
 
       </div>    
 
 
            <div class="wave wave1"></div>
            <div class="wave wave2"></div>
            <div class="wave wave3"></div>
            <div class="wave wave4"></div>
            <div class="wave wave5"></div>
            
            </section> 


</body>
</html>