<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="model.*"%>
<%@page import="java.util.*"%>
<%@page import="dao.*"%>
<%@page import="comparator.*"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/gestisciAppuntamenti.css">
<script src="https://kit.fontawesome.com/367813bf67.js"
	crossorigin="anonymous"></script>
<title>Staff</title>

</head>

<%

Paziente p = (Paziente) session.getAttribute("utenteP");
List<Appuntamento> listaA = PazienteDAO.visualizzaAppPaziente(p);
Collections.sort(listaA, new AppuntamentoComparatorOra());
Collections.sort(listaA, new AppuntamentoComparatorGiorno());
Collections.sort(listaA, new AppuntamentoComparatorMese());
Collections.sort(listaA, new AppuntamentoComparatorAnno());

%>



<body>



	<div class="container">

		<label class="logo"> <a>Uclinic</a></label>
		<ul class="nav">


			<li><a href="profiloUtente.jsp?id=<%=p.getIdPaziente() %>">Home</a></li>



		</ul>
		
	</div>


	<section id="wrapper">






		<!-- da aggiungere id  -->

		<div class="tuttecarte">

			<div class="nome-carta">
				<h3>Data</h3>
				<h3>Ora</h3>
				<h3>Clinica</h3>
				<h3>Dottore</h3>
				<h3>Stato prenotazione</h3>
			</div>


			<%
			
			
			for (Appuntamento a : listaA) {
				Dottore d = ClinicaDAO.recuperaDottFromApp(a);
				Clinica c = ClinicaDAO.recuperaClinicaFromApp(a);
			%>
			<div class="carte">



				<div class="card">

					<h3 class="category"><%=a.getGiorno()%>/<%=a.getMese()%>/<%=a.getAnno()%></h3>
					<h3 class="card-title"><%=a.getOra()%>:00-<%=a.getOra() + 1 %>:00</h3>
					<a href="profiloClinicaEst.jsp?id=<%=c.getIdClinica() %>" class="nomeclinica">Clinica : <%=c.getNome() %></a>
					<a href="visualizzaDottoreEst.jsp?idDottore=<%=d.getIdDottore() %>" class="nomedoc">Dr/Dr.ssa <%=d.getCognome()%> <%=d.getNome() %>
					</a>

					<div class="tooltip">

						<h3><% if(a.getPrenotazione() == 0) { %>In attesa...<% } %>
						<% if(a.getPrenotazione()== 1 ) { %> Confermata <% } %>
						<% if(a.getPrenotazione() == 2) { %> Rifiutata <% } %>
						</h3>

					</div>

				</div>

			</div>


			<%
			}
			%>

		</div>


		<div class="wave wave1"></div>
		<div class="wave wave2"></div>
		<div class="wave wave3"></div>
		<div class="wave wave4"></div>
		<div class="wave wave5"></div>

	</section>


</body>
</html>