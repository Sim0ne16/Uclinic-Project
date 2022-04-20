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
    <title>Document</title>
    <link rel="stylesheet" href="css/profiloUtente.css">
    <script src="https://kit.fontawesome.com/367813bf67.js" crossorigin="anonymous"></script>
</head>
<body>

   
        <nav>
            
    
            <input type="checkbox" id="check">
             <label for="check" class="checkbtn">
                 <i class="fas fa-bars"></i>
             </label>
    
    
                    <label class="logo">UClinic</label>
                    <ul >
                        <li><a class="active" href="#">Home</a></li>
                        <li><a herf="#">About</a></li>
                        <li><a herf="#">Services</a></li>
                        <li><a herf="#">Account</a></li>
                        <input type="text" placeholder="Search..">
                    </ul>
                    <i class="fa-thin fa-alien"></i>
        </nav>
    

        <div class="wrapper">

   
           
                <div> 
                    <div class="wave wave1"></div>
                    <div class="wave wave2"></div>
                    <div class="wave wave3"></div>
                    <div class="wave wave4"></div>
                    <div class="wave wave5"></div>
                </div>
             
                
                <%
                Clinica C =(Clinica) session.getAttribute("utenteC");
            		 
                %>
                    
        
                <div>
                    <ul class="asd">  
                        <i class="fa-solid fa-user fa-4x"> <%= C.getNome() %></i> 
                        <li><i class="fa-solid fa-mars-and-venus"></i></li>
                        </i> <li><i class="fa-solid fa-mars-and-venus"  >     </i>  </li>
                        <li><i class="fa-solid fa-city"></i></li>
                        <li> <i class="fa-solid fa-location-crosshairs"></i>  </li>
                        <li> <i class="fa-solid fa-id-card"></i>  </li>
                        <li> <i class="fa-solid fa-dna"></i> </li>             
                        <li> <i class="fa-solid fa-envelope"></i>  </li>
                      
                 
                    </ul>
                </div>
        
        

          <div class="controlli">
          <h1>Controlli clinica </h1>
          <% int x = C.getIdClinica();%>
       <a href="StaffClinica.jsp?id=<%=x%>"> staff :D</a>

          
          </div>
          

            
               
        </div>







</body>
</html>