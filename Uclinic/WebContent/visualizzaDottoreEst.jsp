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
    <link rel="stylesheet" href="css/pagDottore.css">
    <script src="https://kit.fontawesome.com/367813bf67.js" crossorigin="anonymous"></script>
    <title>Document</title>
</head>

  <%
                Paziente p =(Paziente) session.getAttribute("utenteP");
                %>

<body>

    <!--   NAV BAR   -->
    
    <div class="container" >
        
        
        <label class="logo"> <a>   Uclinic</a></label>
        
        <ul class="nav">
            
            
            <li><a href="profiloUtente.jsp?id=<%=p.getIdPaziente() %>">Home</a></li>
           


        </ul>
        <input type="checkbox"  id="bc2">
        <label for="bc2" class="search-icon">
            <i class="fa fa-search"></i>
            <i class="fa fa-close"></i>
        </label>

        <div class="search-box">

            <form>

                <input type="search" placeholder="Search..." class="search">
                <input type="submit" value="Ok" class="sub">

            </form>

        </div>
    </div>






    <section id="wrapper">

<div class="left">

        <ul class="asd">  
             
        
         <%
        
                int x = Integer.parseInt(request.getParameter("id"));
                Clinica c = (Clinica)PazienteDAO.recuperaClinica(x);
               
                int idClinica = c.getIdClinica();		 
        		int idDoc = Integer.parseInt(request.getParameter("id"));
        		Dottore d =  ClinicaDAO.visualizzaDottore(idDoc);
                %>
        
            <i class="fa-solid fa-user fa-4x">Dr. <%=d.getNome() %> <%=d.getCognome() %></i>          
            <li><i class="fa-solid fa-mars-and-venus fa-2x"></i>Eta : <%=d.getEta() %></li>       
            <li><i class="fa-solid fa-id-card fa-2x"></i> Specializzazione : <%=d.getSpecializzazione() %> </li>
            <li><i class="fa-solid fa-dna fa-2x"></i>  Costo Visita: <%=d.getCostoVisita() %> $</li>
            <li><i class="fa-solid fa-phone fa-2x"></i> Recapito : <%=d.getRecapitoTel() %></li>
            <li><i class="fa-solid fa-envelope fa-2x"></i>  Email : <%=d.getEmail() %> </li>
            <li>     </li>
        
          </ul>


                       <div class="tooltip" >
                                                                                                                                                                                           
                            <a class="btn btn-dark" href="profiloClinicaEst.jsp?id=<%=idClinica%>" value="press me" title="Clinica"><i  style="color: rgb(55, 238, 177)" class="fa-solid fa-staff-aesculapius fa-2x"></i></a>
						</div>

        </div>




<div class="right">
   <div class="calendario">
   
   
   
   
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