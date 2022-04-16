
<%@page import="model.*"%>
<%@page import="java.util.*"%>
<%@page import="controllerPaziente.*"%>
<%@page import="controllerClinica.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../css/pagLogin.css">
    <title>Paragliola 4Ever 2</title>
</head>
<body id="wrapper">
    
    <nav>
        <label class="logo">Uclinic</label>

                <ul>
                    <li><a class="active" href="#">Home</a></li>
                    <li><a class="active" href="#">Portfolio</a></li>
                    <li><a class="active" href="#">About</a></li>
                    <li><a class="active" href="#">Team</a></li>
                    <li><a class="active" href="#">Contact</a></li>
                </ul>
                <i class="fa-thin fa-alien"></i>
    </nav>
<div class="container" id="container">
    <div class="form-container sign-up-container">
        <form action="LoginClinica" method="get" id="logC">
            <h1>Sign in as Clinic </h1>
            <span>//</span>
         
            <input type="email" placeholder="Email" name="login-emailC"/>
            <input type="password" placeholder="Password" name="login-passwordC" />
            
            <button class="submit_class" type="submit" >Sign In</button> <!--form="logC"-->
        </form>
    </div>
    <div class="form-container sign-in-container">
        <form action="LoginPaziente" method="post" id="logP">
            <h1>Sign in as Guest </h1>
            <span>or use your account</span>
            <input type="email" placeholder="Email" name="login-emailP" />
            <input type="password" placeholder="Password" name="login-passwordP" /> 
            <a href="#">Forgot your password?</a>
            <button class="submit_class" type="submit"  >Sign In</button> <!--form="logP"-->
        </form>
    </div>
    <div class="overlay-container">
        <div class="overlay">
            <div class="overlay-panel overlay-left">
                <h1>Welcome Back!</h1>
                <p>To keep connected with us please login with your personal info</p>
                <button class="ghost" id="signIn">Guest</button>
            </div>
            <div class="overlay-panel overlay-right">
                <h1> Welcome!</h1>
                <p>Sign in as Clinic</p>
                <button class="ghost" id="signUp">Clinics</button>
            </div>
        </div>
    </div>
</div>
<div>
   <a href="reg.html" style="text-decoration:none;"><button class="submit_class2" id="btnR" type="submit" form="registrer_form">registration</button></a>
</div>
<script src="../javascript/	Script1.js"></script>
</body>
</html>