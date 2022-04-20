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
    <link rel="stylesheet" href="css/profiloUtente.css">
    <script src="https://kit.fontawesome.com/367813bf67.js" crossorigin="anonymous"></script>
    <title>Document</title>
</head>
<body>

    <!--   NAV BAR   -->
    <div class="container">
        <label class="logo"><a>Uclinic</a></label>
        <ul class="nav">
            <li><a href="">Home</a></li>
            <li><a href="">About</a></li>

            <li class="parent">
                <a href="">Profile</a>
                <ul>
                    <li><a href="#">DropDown 1</a></li>
                    <li><a href="#">DropDown 2</a></li>
                    <li class="parent">
                        <a href="#">DropDown 3</a>
                        <ul>
                            <li>
                                <a href="">DropDown 1.1</a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#">DropDown 4</a></li>
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
                Paziente p =(Paziente) session.getAttribute("utenteP");
                %>
        
        
            <i class="fa-solid fa-user fa-4x"> <%= p.getNome() %></i> 

            <li><i class="fa-solid fa-mars-and-venus"></i>AGE : <%= p.getEta() %></li></i> 
            <li><i class="fa-solid fa-mars-and-venus"  >     </i>  SEX : ...</li>
            <li><i class="fa-solid fa-city"></i>CITY : <%= p.getCitta() %></li>
            <li> <i class="fa-solid fa-location-crosshairs"></i> Regione: <%= p.getRegione() %></li>
            <li> <i class="fa-solid fa-id-card"></i>  CODICE FISCALE : <%= p.getcFisc() %></li>
            <li> <i class="fa-solid fa-dna"></i>  BLOOD TYPE : ...</li>
            <li>  <i class="fa-solid fa-phone"></i> TEL NUMBER : ...</li>
            <li> <i class="fa-solid fa-envelope"></i>  EMAIL : <%= p.getEmail() %></li>
        
          </ul>

        </div>



<div class="right"  >

          <div class="accordion" >
            <button type="button" class="accordion_button">Medical History</button>
            <div class="accordion__content">
                <p>
                    Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                     Laborum odit, cum labore placeat quam asperiores corrupti fuga sequi eligendi voluptas praesentium.
                      Dicta cumque saepe iusto, maxime aliquid aut odio qui!
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
                const accordionContent= button.nextElementSibling;
    
                button.classList.toggle('accordion_button--active');
    
                if (button.classList.contains('accordion_button--active')) {
                    accordionContent.style.maxHeight = accordionContent.scrollHeight + 'px';
    
                }else{
                   accordionContent.style.maxHeight = 0; 
                }
            })
        })
    </script>

</body>
</html>