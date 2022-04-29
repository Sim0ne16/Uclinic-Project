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
<script type="text/javascript">

function ConfermaOperazione() {
var richiesta = window.confirm("Confermare operazione");
return richiesta;
}

</script>
</head>

<%

Clinica C = (Clinica) session.getAttribute("utenteC");
List<Appuntamento> listaA = ClinicaDAO.visualizzaApp(C);
Collections.sort(listaA, new AppuntamentoComparatorOra());
Collections.sort(listaA, new AppuntamentoComparatorGiorno());
Collections.sort(listaA, new AppuntamentoComparatorMese());
Collections.sort(listaA, new AppuntamentoComparatorAnno());

%>



<body>



	<div class="container">

		<label class="logo"> <a>Uclinic</a></label>
		<ul class="nav">


			<li><a href="profiloClinica.jsp?id=" <%=C.getIdClinica()%>>Home</a></li>



		</ul>
		
	</div>


	<section id="wrapper">






		<!-- da aggiungere id  -->

		<div class="tuttecarte">

			<div class="nome-carta">
				<h3>Data</h3>
				<h3>Ora</h3>
				<h3>Paziente</h3>
				<h3>Dottore</h3>
				<h3>Stato prenotazione</h3>
			</div>


			<%
			for (Appuntamento a : listaA) {
				Dottore d = ClinicaDAO.recuperaDottFromApp(a);
				Paziente p = ClinicaDAO.recuperaPazienteFromApp(a);
			%>
			<div class="carte">



				<div class="card">

					<h3 class="category"><%=a.getGiorno()%>/<%=a.getMese()%>/<%=a.getAnno()%></h3>
					<h3 class="card-title"><%=a.getOra()%>:00-<%=a.getOra() + 1 %>:00</h3>
					<a href="profiloUtenteEst.jsp?id=<%=p.getIdPaziente() %>" class="paziente">Sig/Sig.ra <%=p.getCognome()%> <%=p.getNome() %></a>
					<a href="visualizzaDottore.jsp?id=<%=d.getIdDottore() %>" class="nomedoc">Dr/Dr.ssa <%=d.getCognome()%> <%=d.getNome() %></a>
					

					<div class="tooltip">

						<form action="ConfermaAppuntamento" method="post" >
						<div class="form-group">
					<input type="hidden" value="<%=a.getIdAppuntamento()%>"
						name="idAppuntamento" class="form-control" required>
</div>

							<button type="submit" class="btnApp" title="Conferma" onClick="return ConfermaOperazione()">
								<i style="color: green" class="fa-solid fa-circle-check fa-2x"></i>
							</button>
						</form>

						<form action="RifiutaAppuntamento" method="post">
						<div class="form-group">
					<input type="hidden" value="<%=a.getIdAppuntamento()%>"
						name="idAppuntamento" class="form-control" required>
</div>
							<button class="btnApp" type="submit" title="Rifiuta" onClick="return ConfermaOperazione()">
								<i style="color: red" class="fa-solid fa-circle-xmark fa-2x"></i>
							</button>
						</form>

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