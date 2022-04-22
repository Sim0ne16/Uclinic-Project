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
    <link rel="stylesheet" href="css/StaffClinica.css">
    <script src="https://kit.fontawesome.com/367813bf67.js" crossorigin="anonymous"></script>
    <title>Dottori</title>
</head>
<%List<Dottore> listaD = PazienteDAO.cercaDottore(request.getParameter("ricerca"));%>
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
        <input type="checkbox"  id="bc2">
        <label for="bc2" class="search-icon">
            <i class="fa fa-search"></i>
            <i class="fa fa-close"></i>
        </label>

        <div class="search-box">

            <form action="CercaDottore" method="post">



                <input name="cerca" type="search"  placeholder="Search..." class="search">

                <input type="submit"  value="Ok"  class="sub">



            </form>

        </div>
    </div>
 
 
   <section id="wrapper">

 
			
     
    
 
<!-- da aggiungere id  -->

<div class="tuttecarte">


  


    <% for(Dottore d : listaD) {  %>
  <div class="carte">


	
			<span class="card">
		
					<img class="card-img-top" src="https://www.ciaodottore.it/file-asset/Ciao_Dottore_Medico1?v=1" alt="Card image cap">
					
					<h3 class="category"><%=d.getSpecializzazione() %></h5>
						<h3 class="card-title"><%=d.getNome()%> <%=d.getCognome()%></h5>
						

 						<div class="tooltip" >
                            
                            <a class="btn btn-dark" href="visualizzaPropriDottori.jsp" value="press me" title="Ispeziona"><i style="color:#2eab97" class="fa-solid fa-eye fa-2x"></i></a>
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