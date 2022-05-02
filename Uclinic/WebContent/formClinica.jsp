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
<script src="https://kit.fontawesome.com/367813bf67.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/form.css">
<script src="javascript/controlli.js"></script>
<title>Registrazione Clinica</title>
</head>
<body>
<div class="testa">
<h2>Inserisci i dati della Clinica</h2>
</div>

	<div class="container">

		<div class="title">Registrazione Clinica</div>
		<form action="" name="forma" id="formix" method="post">
			<!-- provo metodo post -->
			<div class="user-details">
				<div class="input-box">
					<span class="details">Nome</span> <input type="text"
						placeholder="Nome" name="regCnome" id="regCnome">
				</div>
				<div class="input-box">
					<span class="details">Regione</span> <input type="text"
						placeholder="Inserire Regione" name="regCregione" id="regCregione">
				</div>
				<div class="input-box">
					<span class="details">Citta </span> <input type="text"
						placeholder="Inserire Citta " name="regCcitta" id="regCcitta">
				</div>
				<div class="input-box">
					<span class="details">Email</span> <input type="text"
						placeholder="Inserire Email" name="regCemail" id="regCemail">
				</div>
				<div class="input-box">
					<span class="details">Password</span> <input type="password"
						placeholder="Inserire Password" name="regCpassword"
						id="regCpassword">
				</div>
				<div class="input-box">
					<span class="details">Confirm Password</span> <input
						type="password" placeholder="Conferma Password"
						name="regCpassword2" id="regCpassword2">
				</div>
				<div class="input-box">
					<span class="details">Indirizzo</span> <input type="text"
						placeholder="Inserire indirizzo" name="regCindirizzo"
						id="regCindirizzo">
				</div>
				<div class="input-box">
					<span class="details">Recapito</span> <input type="text"
						placeholder="Inserire Recapito" name="regCrecapito"
						id="regCrecapito">
				</div>
				
				

			</div>
			
			<!--  BOTTONI -->
			
			<div class="button">
				<input type="submit" onclick="registrazioneC()"
					class="bb1" value="Registrazione">
					
			
			</div>



		</form>
		<br>
	<div class="button">
	<a href="Login.jsp"><button class="bb1" type="button">Torna alla home</button></a>
	</div>
</div>

<!-- NUVOLE -->

     <section>


        <div class="wave wave1"></div>
        <div class="wave wave2"></div>
        <div class="wave wave3"></div>
        <div class="wave wave4"></div>
        <div class="wave wave5"></div>


       </section>
       
       
    
</body>
</html>