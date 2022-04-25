
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
    <script src="https://kit.fontawesome.com/367813bf67.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/form.css">
    <script src="javascript/controlli.js"></script>
    <script src="javascript/porta.js"></script>
      
    <title>Document</title>
</head>
<body>
    <div class="container">
        
        <div class="title">Registrazione Utente</div>
        <form action="" name="forma" id="formino" method="post"> <!--  provo method post -->
            <div class="user-details">
                <div class="input-box">
                    <span class="details">Nome</span>
                    <input type="text" placeholder="Nome" name="regPnome" id="regPnome" >
                </div>
                <div class="input-box">
                   <span class="details">Cognome</span>
                   <input type="text" placeholder="Inserire Cognome" name="regPcognome" id="regPcognome" >
               </div>
               <div class="input-box">
                   <span class="details">Codice Fiscale</span>
                   <input type="text" placeholder="Inserire CF" name="regPcf" id="regPcf" >
               </div>
               <div class="input-box">
                   <span class="details">Email</span>
                   <input type="text" placeholder="Inserire Email" name="regPemail" id="regPemail" >
               </div>
               <div class="input-box">
                   <span class="details">Password</span>
                   <input type="password" placeholder="Inserire Password" name="regPpassword" id="regPpassword" >
               </div>
               <div class="input-box">
                   <span class="details">Confirm Password</span>
                   <input type="password" placeholder="Conferma Password" name="regPpassword2" id="regPpassword2" > 
               </div>
               <div class="input-box">
                   <span class="details">Eta</span>
                   <input type="text" placeholder="Inserire Eta" name="regPeta" id="regPeta" >
               </div>
               <div class="input-box">
                   <span class="details">Regione</span>
                   <input type="text" placeholder="Inserire Regione" name="regPregione" id="regPregione" >
               </div>
               <div class="input-box">
                   <span class="details">Città </span>
                   <input type="text" placeholder="Inserire Città " name="regPcitta" id="regPcitta" >
               </div>
            </div>
            <div class="button">
             <input type="submit" onclick="registrazioneP()" class="btn btn-primary" value="Registrazione" >
             <button type="button">Ritorna </button>       
        </div>
        
        </form>
       </div>
      
      
    
   
  
    
      <div id="container" style="width: 0px; height: 0px;">
        <i id="hidden-div1" class="fa-solid fa-door-closed  fa-2x"style="color:#3eccf0" ></i>
        <div id="hidden-div"><i class="fa-solid fa-door-open fa-2x " style="color:#3eccf0"  ></i></div>
      </div>
  
      
</body>
</html>