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
    <title>Profilo Dottore</title>
</head>

<%  Clinica c = (Clinica)request.getSession().getAttribute("utenteC"); %>

<body>

    <!--   NAV BAR   -->
    
    <div class="container" >
        
        
        <label class="logo"> <a>   Uclinic</a></label>
        
        <ul class="nav">
            
            
            <li><a href="profiloClinica.jsp?id=<%=c.getIdClinica()%>">Home</a></li>
        

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

        <div class="dxandsx">

        

<div class="left" >

        <ul class="asd">  
             
        
         <%

              
                int idClinica = c.getIdClinica();		 
        		int idDoc = Integer.parseInt(request.getParameter("id"));
        		Dottore d =  ClinicaDAO.visualizzaDottore(idDoc);
                %>

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
                       <div class="tooltip" >
                           <div class="btnDot">
                            
                            <a class="btn btn-dark" href="modificaProfiloDottore.jsp?id=<%=idDoc%>" title="Modifica"><i  style="color: rgb(55, 238, 177)" class="fa-solid fa-user-pen fa-2x"></i>
                            
                            </a><p id="pDot">Modifica il profilo del dottore.</p>
                        </div>
                        <div class="btnDot">
                            <a class="btn btn-dark" href="EliminaDottore?id=<%=idDoc%>" title="Elimina" type="reset"  onClick="return confirm('Sicuro di voler cancellare il dottore?')" ><i  style="color: rgb(55, 238, 177)" class="fa-solid fa-user-xmark fa-2x"></i> </a>
                           <p id="pDot">Elimina dottore dalla clinica.</p>
                        </div>
                          
                            <div class="btnDot">                                                                                                                                                         
                            <a class="btn btn-dark" href="StaffClinica.jsp?id=<%=idClinica%>" title="Staff"><i  style="color: rgb(55, 238, 177)" class="fa-solid fa-staff-aesculapius fa-2x"></i></a>
                        <p id="pDot">Visualizza lo staff della clinica.  </p>
                        </div>
                            <div class="btnDot">
                            <a class="btn btn-dark" href="gestisciOrariDottore.jsp?id=<%=idDoc%>" title="Gestisci Orari"><i  style="color: rgb(55, 238, 177)" class="fa-solid fa-calendar fa-2x"></i></a>
                        <p id="pDot">Gestisci gli orari del dottore.</p>
                        </div>
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