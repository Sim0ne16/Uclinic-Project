<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<%@page import="model.*"%>
<%@page import="java.util.*"%>
<%@page import="dao.*"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/profiloUtente2.css">
    <script src="https://kit.fontawesome.com/367813bf67.js" crossorigin="anonymous"></script>
    <title>Profilo Utente</title>
</head>
<body>

    <!--   NAV BAR   -->
    
    <div class="container" >
        
        
        <label class="logo"> <a>   Uclinic</a></label>
        
        <ul class="nav">
            
            <% Clinica C = (Clinica) session.getAttribute("utenteC"); %>
            <li><a href="profiloClinica.jsp?id=<%=C.getIdClinica()%>">Home</a></li>
          

         

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
<div class="dxandsx">
<div class="left">

        <ul class="asd">  
             
         <%
                int x = Integer.parseInt(request.getParameter("id"));
        		Paziente p = (Paziente)ClinicaDAO.recuperaPaziente(x);
        		
                %>
        
        
             <div class="nomeP">
            <i class="fa-solid fa-user fa-4x"></i> <h3 style="font-size: 30px" id="titoloP"><%=p.getNome() %>  <%= p.getCognome() %></h3>
</div>

            <li><i class="fa-solid fa-mars-and-venus fa-2x"></i> Eta: <%= p.getEta() %></li>
            <li><i class="fa-solid fa-city fa-2x"></i> Citta : <%= p.getCitta() %></li>
            <li> <i class="fa-solid fa-location-crosshairs fa-2x"></i> Regione: <%= p.getRegione() %></li>
            <li> <i class="fa-solid fa-id-card fa-2x"></i>  Codice Fiscale : <%= p.getcFisc() %></li>
            <li> <i class="fa-solid fa-envelope fa-2x"></i>  Email : <%= p.getEmail() %></li>
        
          </ul>

        </div>




<div class="right"  >

          <div class="storiaMedica">
<ul>
<li><h4>Peso:</h4> </li>
<li><h4>Altezza:</h4> </li>
<li><h4>Gruppo sanguigno:</h4> </li>
</ul>
</div>
</div>
</div>
        <div class="wave wave1"></div>
        <div class="wave wave2"></div>
        <div class="wave wave3"></div>
        <div class="wave wave4"></div>
        <div class="wave wave5"></div>


    </section> 





    

</body>
</html>