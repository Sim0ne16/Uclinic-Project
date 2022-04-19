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
    <link rel="stylesheet" href="css/formUtente.css">
    <title>Document</title>
</head>
<body>
    <div class="container">
        
        <div class="title">Registration Utente</div>
        <form action="RegistraPaziente" method="post"> <!--  provo method post -->
            <div class="user-details">
                <div class="input-box">
                    <span class="details">Nome</span>
                    <input type="text" placeholder="Nome" name="regP-nome" id="regP-nome" required>
                </div>
                <div class="input-box">
                   <span class="details">Cognome</span>
                   <input type="text" placeholder="Inserire Cognome" name="regP-cognome" id="regP-cognome" required>
               </div>
               <div class="input-box">
                   <span class="details">Codice Fiscale</span>
                   <input type="text" placeholder="Inserire CF" name="regP-cf" id="regP-cf" required>
               </div>
               <div class="input-box">
                   <span class="details">Email</span>
                   <input type="text" placeholder="Inserire Email" name="regP-email" id="regP-email" required>
               </div>
               <div class="input-box">
                   <span class="details">Password</span>
                   <input type="password" placeholder="Inserire Password" name="regP-password" id="regP-password" required>
               </div>
               <div class="input-box">
                   <span class="details">Confirm Password</span>
                   <input type="password" placeholder="Conferma Password" name="regP-password2" id="regP-password2" required> 
               </div>
               <div class="input-box">
                   <span class="details">Eta</span>
                   <input type="number" placeholder="Inserire Eta" name="regP-eta" id="regP-eta" required>
               </div>
               <div class="input-box">
                   <span class="details">Regione</span>
                   <input type="text" placeholder="Inserire Regione" name="regP-regione" id="regP-regione" required>
               </div>
               <div class="input-box">
                   <span class="details">Città </span>
                   <input type="text" placeholder="Inserire Città " name="regP-citta" id="regP-citta" required>
               </div>
            </div>
   
   
            <div class="button">
                <input type="submit"  value="Registra" ">
            </div>
   
   
        </form>
       </div>
       <script src="javascript/formUt.js"></script>
</body>
</html>