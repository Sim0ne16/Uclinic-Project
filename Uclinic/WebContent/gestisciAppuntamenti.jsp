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
<link rel="stylesheet" href="css/formGestisciAppuntamenti.css">
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

Clinica C = (Clinica)request.getSession().getAttribute("utenteC");

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


			   
            <li><a href="profiloClinica.jsp?id=<%=C.getIdClinica()%>">Home</a></li>
        



		</ul>
		
	</div>


	<section id="wrapper">






		<!-- da aggiungere id  -->

		<div class="tabellaApp">




			<%
			for (Appuntamento a : listaA) {
				Dottore d = ClinicaDAO.recuperaDottFromApp(a);
				Paziente p = ClinicaDAO.recuperaPazienteFromApp(a);
			%>
			<div class="App">



				<div class="Colonna">
                    <h3>Data</h3><hr>
					<h3 class="category"><%=a.getGiorno()%>/<%=a.getMese()%>/<%=a.getAnno()%></h3></div>
					<div class="Colonna">
						<h3>Ora</h3><hr>
					
					<h3 class="card-title"><%=a.getOra()%>:00-<%=a.getOra() + 1 %>:00</h3></div>
					<div class="Colonna"><h3>Paziente</h3><hr>
					<a href="profiloUtenteEst.jsp?id=<%=p.getIdPaziente() %>" class="paziente">Sig/Sig.ra <%=p.getCognome()%> <%=p.getNome() %></a></div>
					<div class="Colonna"><h3>Dottore</h3><hr>
					<a href="visualizzaDottore.jsp?id=<%=d.getIdDottore() %>" class="nomedoc">Dr/Dr.ssa <%=d.getCognome()%> <%=d.getNome() %></a></div>
					
                    <div class="Colonna">
						<h3>Pendenza</h3><hr>
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


		

	</section>


</body>
</html>