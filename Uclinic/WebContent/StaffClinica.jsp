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
    <link rel="stylesheet" href="css/formRicerche.css">
    <script src="https://kit.fontawesome.com/367813bf67.js" crossorigin="anonymous"></script>
    <title>Staff</title>
</head>

<% 
 int id = Integer.parseInt(request.getParameter("id"));
List<Dottore> dottori = ClinicaDAO.visualizzaDottori(id);

Clinica C = (Clinica)request.getSession().getAttribute("utenteC");;

%>



<body>

 
 
 <div class="container">
        
        <label class="logo"> <a>Uclinic</a></label>
        <ul class="nav">
            
            
               
            <li><a href="profiloClinica.jsp?id=<%=C.getIdClinica()%>">Home</a></li>
        
            
           

        </ul>
    
    </div>
 
 
   <section id="wrapperBis">

 
			
     
    
 
<!-- da aggiungere id  -->

<div class="tuttecarteBis">


     <form action="formAggiungiDottore.jsp" class="aggD">
      
       <button  class="btn1"><i style="color:#2eab97" class="fa-solid fa-user-plus fa-8x"></i></button>        
    </form>
  


    <% for(Dottore d : dottori) {  %>
  <div class="carte">

			<span class="card">
		
					<img class="card-img-top" src="https://cdn.pixabay.com/photo/2017/05/15/23/47/stethoscope-icon-2316460_960_720.png" alt="Card image cap">
					
					<h3 class="category"><%=d.getSpecializzazione() %></h5>
						<h3 class="card-title"><%=d.getNome()%> <%=d.getCognome()%></h5>
						

 						<div class="tooltip" >
                            
                            <a class="btn btn-dark" href="visualizzaDottore.jsp?id=<%=d.getIdDottore()%>" value="press me" title="Ispeziona"><i style="color:#2eab97" class="fa-solid fa-eye fa-2x"></i></a>
						</div>
					                  
				</div>
			
        </span>     
	
		
			<% }
				
			
 %>
 
       </div>    
 
 
            
            </section> 


</body>
</html>