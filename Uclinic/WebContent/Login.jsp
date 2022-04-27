
<%@page import="model.*"%>
<%@page import="java.util.*"%>
<%@page import="controller.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/pagLogin.css">
    <script src="https://kit.fontawesome.com/367813bf67.js" crossorigin="anonymous"></script>
    <title>UClinic</title>
</head>


<body id="wrapper">
    
    <nav>
        <label class="logo">Uclinic</label>

                <ul>
                    <li><a class="active" href="AboutUs.html">Chi Siamo</a></li>                  
                    <li><a class="active" href="Contatti.html">Contatti</a></li>
                </ul>
                <i class="fa-thin fa-alien"></i>
    </nav>
<div class="container" id="container">
    <div class="form-container sign-up-container">
        <form action="LoginClinica"  method="post" id="logC">
            <h1>Fai Login come Clinica </h1>
            
            <input class="sub_reg" type="email" placeholder="Email" name="login-emailC"/>
            <input class="sub_reg" type="password" placeholder="Password" name="login-passwordC" />
            
            <button class="submit_class" type="submit" >Login</button> <!--form="logC"-->
        </form>
    </div>
    <div class="form-container sign-in-container">
        <form action="LoginPaziente"  method="post" id="logP">
            <h1>Fai Login come Utente </h1>
            
            <input class="sub_reg" type="email" placeholder="Email"  name="login-emailP" />
            <input class="sub_reg" type="password" placeholder="Password" name="login-passwordP" /> 
            <a href="#">Dimenticata la tua password?</a>
            <button class="submit_class" type="submit"  >Login</button> <!--form="logP"-->
        </form>
        
    </div>
    <div class="overlay-container">
        <div class="overlay">
            <div class="overlay-panel overlay-left">
                <h1>Ben Tornato!</h1>
                <p>Per rimanere in contatto accedi con le tue credenziali!</p>
                <button class="ghost" id="signIn">Guest</button>
            </div>
            <div class="overlay-panel overlay-right">
                <h1> Benvenuto!</h1>
                <p>Fai Login come Clinica</p>
                <button class="ghost" id="signUp">Clinics</button>
            </div>
        </div>
    </div>
</div>
<div>
   <a href="reg.html" style="text-decoration:none;"><button class="submit_class2" id="btnR" type="submit" form="registrer_form">Registrazione</button></a>
</div>
<script src="javascript/Script1.js"></script>
</body>
</html>



