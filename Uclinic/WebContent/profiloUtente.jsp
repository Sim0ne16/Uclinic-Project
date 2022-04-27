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
 <%
                Paziente p =(Paziente) session.getAttribute("utenteP");
                %>
        
    <!--   NAV BAR   -->
    
    <div class="container" >
        
        
        <label class="logo"> <a>   Uclinic</a></label>
        
        <ul class="nav">
            
            
            <li><a href="">Home</a></li>
           

            <li class="parent">
                <a href="">Profile</a>
                <ul>
                    <li><a href="modificaProfiloUtente.jsp?id=<%=p.getIdPaziente()%>">Modifica Profilo</a></li>
                    <li><a href="MedicalHistory.jsp">Modifica Medical History</a></li>
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
            
             <li><a href="Login.jsp">Esci </a></li>
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

<div class="left">

        <ul class="asd">  
             
        
        
            <i class="fa-solid fa-user fa-4x"> <%= p.getNome() %>  <%= p.getCognome() %></i> 

            <li><i class="fa-solid fa-mars-and-venus fa-2x"></i> Eta: <%= p.getEta() %></li></i> 
            <li><i class="fa-solid fa-city fa-2x"></i> Citta : <%= p.getCitta() %></li>
            <li> <i class="fa-solid fa-location-crosshairs fa-2x"></i> Regione: <%= p.getRegione() %></li>
            <li> <i class="fa-solid fa-id-card fa-2x"></i>  Codice Fiscale : <%= p.getcFisc() %></li>
            <li> <i class="fa-solid fa-envelope fa-2x"></i>  Email : <%= p.getEmail() %></li>
        
          </ul>

        </div>




<div class="right"  >

<div class="info-research">
<p>Per prenotare un appuntamento con una delle nostre cliniche partner, usa il tasto cerca qui sopra.<br>
Questo tasto ti permette di cercare sia le cliniche sia i dottori. </p>
</div>

          <div class="accordion" >
            <button type="button" class="accordion_button">Medical History</button>
            <div class="accordion__content">
               <li><p>Peso :</p></li>
                <li> <p>Altezza :  </p></li>
                <li> <p>Sangue : </p></li>
            </div>
        </div>

    </div>



        <div class="wave wave1"></div>
        <div class="wave wave2"></div>
        <div class="wave wave3"></div>
        <div class="wave wave4"></div>
        <div class="wave wave5"></div>


    </section> 





    <script>
        document.querySelectorAll('.accordion_button').forEach(button => {
            button.addEventListener('click', () => {
              
    
                button.classList.toggle('accordion_button--active');
    
         
            });
        });
    </script>

</body>
</html>