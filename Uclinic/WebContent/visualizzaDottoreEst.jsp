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
  
	int idDoc = Integer.parseInt(request.getParameter("idDottore"));
	Dottore d = ClinicaDAO.visualizzaDottore(idDoc);
    Paziente p = (Paziente) session.getAttribute("utenteP");
                %>

<body>

    <!--   NAV BAR   -->
    
    <div class="container" >
        
        
        <label class="logo"> <a>   Uclinic</a></label>
        
        <ul class="nav">
            
            
            <li><a href="profiloUtente.jsp?id=<%=p.getIdPaziente() %>">Home</a></li>
           


        </ul>
        
    </div>






    <section id="wrapper">
    
    <div class="dxandsx">

<div class="left">

        <ul class="asd">  
             
        
         
        
             <div class="nomeD">
                    <i class="fa-solid fa-user fa-4x"></i> <h3 style="font-size: 30px" id="titoloD">Dr. <%=d.getNome() %> <%=d.getCognome() %></h3>
                </div>   
                  
            <li><i class="fa-solid fa-image-portrait fa-2x"></i> Eta : <%=d.getEta() %></li>       
            <li><i class="fa-solid fa-id-card fa-2x"></i> Specializzazione : <%=d.getSpecializzazione() %> </li>
            <li><i class="fa-solid fa-money-bill fa-2x"></i>  Costo Visita: <%=d.getCostoVisita() %> euro</li>
            <li><i class="fa-solid fa-phone fa-2x"></i> Recapito : <%=d.getRecapitoTel() %></li>
            <li><i class="fa-solid fa-envelope fa-2x"></i>  Email : <%=d.getEmail() %> </li>
            
        
          </ul>


                   
                       

        </div>




<div class="right">
   <div class="prenotaApp">
   <a href="formAppuntamento.jsp?<%=request.getQueryString() %>&anno=0&mese=0&giorno=0&ora=0"> <button type="submit" id="btnPrenota">Prenota Appuntamento</button></a>
   </div>
   
   
   <div class="tooltipEst" >
                                                                                                                                                                                           
                            <a class="btn1 btn-dark" href="javascript:history.go(-1)" title="Torna Indietro">
                            <i  style="color: rgb(55, 238, 177)" class="fa-solid fa-arrow-rotate-left fa-4x"></i></a>
						   
						
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