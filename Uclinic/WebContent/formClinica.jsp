<%@page import="model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/formClinica.css">
    <title>Document</title>
</head>
<body>
    <body>
        <div class="container">
            
            <div class="title">Registration Clinic </div> 
            <form action="RegistraClinica" method="post"><!-- provo metodo post -->
                <div class="user-details">
                    <div class="input-box">
                        <span class="details">Nome</span>
                        <input type="text" placeholder="Nome" name="regC-nome" id="regC-nome" required>
                    </div>
                    <div class="input-box">
                       <span class="details">Regione</span>
                       <input type="text" placeholder="Inserire Regione"  name="regC-regione" id="regC-regione" required>
                   </div>
                   <div class="input-box">
                       <span class="details">Citta </span>
                       <input type="text" placeholder="Inserire Citta " name="regC-citta" id="regC-citta" required>
                   </div>
                   <div class="input-box">
                       <span class="details">Email</span>
                       <input type="text" placeholder="Inserire Email" name="regC-email" id="regC-email" required>
                   </div>
                   <div class="input-box">
                       <span class="details">Password</span>
                       <input type="password" placeholder="Inserire Password" name="regC-password" id="regC-password" required>
                   </div>
                   <div class="input-box">
                       <span class="details">Confirm Password</span>
                       <input type="password" placeholder="Conferma Password" name="regC-password2" id="regC-password2" required>
                   </div>
                   <div class="input-box">
                       <span class="details">Indirizzo</span>
                       <input type="text" placeholder="Inserire indirizzo" name="regC-indirizzo" id="regC-indirizzo" required>
                   </div>
                   <div class="input-box">
                       <span class="details">Recapito</span>
                       <input type="text" placeholder="Inserire Recapito" name="regC-recapito" id="regC-recapito" required>
                   </div>
                
                </div>

                <div class="button">
                    <input type="submit" value="Registra">
                </div>
       
       
            </form>
           </div>

</body>
</html>