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
    <link rel="stylesheet" href="css/staff.css">
    <script src="https://kit.fontawesome.com/367813bf67.js" crossorigin="anonymous"></script>
    <title>Document</title>
</head>



<body>

    <!--   NAV BAR   -->
    
    <div class="container" >
        
        
        <label class="logo"> <a>   Uclinic</a></label>
        
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
                		 
        		int idDoc = Integer.parseInt(request.getParameter("id"));
        		Dottore d =  ClinicaDAO.visualizzaDottore(idDoc);
                %>
        
            <i class="fa-solid fa-user fa-4x">Dr. <%=d.getNome() %> <%=d.getCognome() %></i>          
            <li><i class="fa-solid fa-mars-and-venus"></i>Eta : <%=d.getEta() %></li>       
            <li> <i class="fa-solid fa-id-card"></i> Specializzazione : <%=d.getSpecializzazione() %> </li>
            <li> <i class="fa-solid fa-dna"></i>  Costo Visita: <%=d.getCostoVisita() %> $</li>
            <li>  <i class="fa-solid fa-phone"></i> Recapito : <%=d.getRecapitoTel() %></li>
            <li> <i class="fa-solid fa-envelope"></i>  EMAIL : <%=d.getEmail() %> </li>
        
          </ul>

        </div>




<div class="right"  >

          <div class="accordion" >
            <button type="button" class="accordion_button">Medical History</button>
            <div class="accordion__content">
                <p>
                <p>ciaociaociaociaco</p > <br>ciacoiacoaciaocia<br>

                </p>
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
               // const accordionContent= button.nextElementSibling;
    
                button.classList.toggle('accordion_button--active');
    
              //  if (button.classList.contains('accordion_button--active')) {
               //     accordionContent.style.maxHeight = accordionContent.scrollHeight + 'px';
    //
              //  }else{
               //    accordionContent.style.maxHeight = 0; 
              //  }
            });
        });
    </script>

</body>
</html>