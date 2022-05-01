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
    <link rel="stylesheet" href="css/Contatti.css">
    <script src="https://kit.fontawesome.com/367813bf67.js" crossorigin="anonymous"></script>
    <title>Document</title>
</head>
<body class="wrapper">
    



    <div class="container">
        
        <div class="map">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2970.3714147920364!2d12.509750715754588!3d41.88486877296908!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x132f61eb51f4cf27%3A0x83de8b0edb38f637!2sTrattoria%20Pizzeria%20Da%20Simonetta!5e0!3m2!1sit!2sit!4v1650623272269!5m2!1sit!2sit" width="100%" height="650px" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
        <div class="contact-form">
            <h1 class="title">Contattaci</h1>
            <h2 class="subtitle">Siamo a tua disposizione</h2>
            <form action="">
                <input type="text" name="nome" placeholder="Il tuo nome" />
                <input type="email" name="e-mail" placeholder="La tua E-mail Adress" />
                <input type="tel" name="phone" placeholder="Il tuo numero di telefono"/>
                <textarea name="text" id="" rows="8" placeholder="Il tuo messaggio"></textarea>
                <button class="btn-send">Contattaci!</button>
              
            </form>
             <a href="Login.jsp"><button  class="bb1"  type="button1">Ritorna</button></a>
        </div>
    </div>
    <section>
        <div class="wave wave1"></div>
        <div class="wave wave2"></div>
        <div class="wave wave3"></div>
        <div class="wave wave4"></div>
        <div class="wave wave5"></div>
    </section>
</body>
</html>
