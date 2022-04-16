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
    <link rel="stylesheet" href="../css/formUtente.css">
    <title>Document</title>
</head>
<body>
    <div class="container">
        
        <div class="title">Registration Utente</div>
        <form action="RegistraUtente" method="post"> <!--  provo method post -->
            <div class="user-details">
                <div class="input-box">
                    <span class="details">Nome</span>
                    <input type="text" placeholder="Nome" required>
                </div>
                <div class="input-box">
                   <span class="details">Cognome</span>
                   <input type="text" placeholder="Inserire Cognome" required>
               </div>
               <div class="input-box">
                   <span class="details">Codice Fiscale</span>
                   <input type="text" placeholder="Inserire CF" required>
               </div>
               <div class="input-box">
                   <span class="details">Email</span>
                   <input type="text" placeholder="Inserire Email" required>
               </div>
               <div class="input-box">
                   <span class="details">Password</span>
                   <input type="text" placeholder="Inserire Password" required>
               </div>
               <div class="input-box">
                   <span class="details">Confirm Password</span>
                   <input type="text" placeholder="Conferma Password" required>
               </div>
               <div class="input-box">
                   <span class="details">Eta</span>
                   <input type="text" placeholder="Inserire Eta" required>
               </div>
               <div class="input-box">
                   <span class="details">Regione</span>
                   <input type="text" placeholder="Inserire Regione "required>
               </div>
               <div class="input-box">
                   <span class="details">Città</span>
                   <input type="text" placeholder="Inserire Città" required>
               </div>
            </div>
   
            <div class="gender-details">
                <input type="radio" name="gender" id="dot-1">
                <input type="radio" name="gender" id="dot-2">
                <input type="radio" name="gender" id="dot-3">

                <span class="gender-title">Gender</span>
                <div class="category">
                    <label for="dot-1">
                        <span class="dot one"></span>
                        <span class="gender">Male</span>                    
                    </label>
                    <label for="dot-2">
                       <span class="dot two"></span>
                       <span class="gender">Female</span>                    
                   </label>
                   <label for="dot-3">
                       <span class="dot three"></span>
                       <span class="gender">Non-Binary</span>                    
                   </label>
                </div>
            </div>
   
            <div class="button">
                <input type="submit" value="Registra">
            </div>
   
   
        </form>
       </div>
</body>
</html>