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
<link rel="stylesheet" href="css/profiloClinica.css">
<script src="https://kit.fontawesome.com/367813bf67.js"
	crossorigin="anonymous"></script>
<title>Profilo Clinica</title>
</head>
<body>
<%
		Clinica C = (Clinica) session.getAttribute("utenteC");
		int x = C.getIdClinica();
		%>
	<!--   NAV BAR   -->

	<div class="container">


		<label class="logo"> <a> Uclinic</a></label>

		<ul class="nav">


			<li><a href="">Home</a></li>
			

			<li class="parent"><a href="">Profile</a>
				<ul>
					<li><a href="modificaProfiloClinica.jsp?id=<%=x%>">Modifica
							Profilo</a></li>
					
					<li class="parent"><a href="#">Impostazioni</a>
						<ul>
							<li><a href="#" class="ciao">Impostazioni</a></li>
						</ul></li>

				</ul></li>

            <li><a href="Login.jsp">Logout</a></li>
		</ul>



	</div>






	<section id="wrapper">

		
<div class="dxandsx">
		<div class="left">

			<ul class="asd">
				<div class="nomeC">
					<i class="fa-solid fa-house-chimney-medical fa-4x"></i><h3 style="font-size:30px" id="titoloC"><%=C.getNome() %></h3>

				</div>





				
				<li><i class="fa-solid fa-clipboard-user fa-2x"></i> <a
					href="StaffClinica.jsp?id=<%=x%>"> Staff</a></li>
				<li><i class="fa-solid fa-city fa-2x"></i> Regione: <%=C.getRegione()%></li>
				<li><i class="fa-solid fa-city fa-2x"></i> Citta: <%=C.getCitta()%></li>
				
				<li><i class="fa-solid fa-location-dot fa-2x"></i> Indirizzo: <%=C.getIndirizzo()%></li>
				<li><i class="fa-solid fa-phone fa-2x"></i> Recapito :<%=C.getRecapitoTel()%>
				</li>
				<li><i class="fa-solid fa-envelope fa-2x"></i> Email: <%=C.getEmail()%>
				</li>


			</ul>
		</div>

		<div class="right">

			<div class="cercaP">




		<div class="dati-search">
		<p>Se hai bisogno di trovare un paziente inserisci il suo nome, cognome o codice fiscale!</p>
		</div>
		
		
			<form class="cercaPazienti" action="CercaPaziente" method="post">
				<input type="search"  name="cercaP" id="btn-cercaP" placeholder="Inserisci parametro ricerca...">
				<input type="submit" value="Invia" id="sub-cercaP">

			</form>
		</div>
			
	<div class="gestioneApp">

		
			<div class="gest-app">
			<a href="gestisciAppuntamenti.jsp"><button type="submit" class="btnApp">Gestisci appuntamento</button></a>
			</div>
			
			<div class="gest-app">
			<a href="appuntamentiConfermati.jsp"><button type="submit" class="btnApp">Appuntamenti confermati</button></a>
			</div>
			
		</div>
	</div>	
</div>


		<div class="wave wave1"></div>
		<div class="wave wave2"></div>
		<div class="wave wave3"></div>
		<div class="wave wave4"></div>
		<div class="wave wave5"></div>


	</section>






</body>
</html>