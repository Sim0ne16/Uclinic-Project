<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
<%@page import="model.*"%>
<%@page import="java.util.*"%>
<%@page import="dao.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/formModifiche.css">
	<script src="javascript/controlli.js"></script>
<title>Aggiungi Dottore</title>
</head>


<%
                Clinica C =(Clinica) session.getAttribute("utenteC");
        		    int x = C.getIdClinica();
                %>




<body>


<div class="container">
		<div class="card ">
			<div class="card-header text-center" style="font-size: 30px;" id="titoloScheda">Aggiungi Dottore</div>
			<div class="card-body">
				<form action="" id="aggiungiDoc" name="formino" method="post">
					<div class="form-group">
						<label>Nome</label> 
						<input type="text" id="dNome" name="dNome" class="form-control" >
					</div>
					<div class="form-group">
						<label>Cognome</label> 
						<input type="text" id="dCognome" name="dCognome"  class="form-control" >
					</div>
					<div class="form-group">
						<label>Eta</label> 
						<input type="text" id="dEta" name="dEta" class="form-control" >
					</div>
					<div class="form-group">
						<label>Email </label> 
						<input type="email" id="dEmail" name="dEmail" class="form-control" >
					</div>
					<div class="form-group">
						<label>Recapito</label> 
						<input type="text" id="dRecapito" name="dRecapito" class="form-control" >
					</div>
					<div class="form-group">
						<label>Specializzazione</label> 
						<input type="text" id="dSpecializzazione" name="dSpecializzazione" class="form-control" >
					</div>
					<div class="form-group">
						<label>Costo Visita</label> 
						<input type="text" id="dCosto" name="dCosto" class="form-control" >
					</div>
					<div class="text-center">
						<button type="submit" onclick="controlloD()" class="btn btn-primary">Registrazione</button>
					 
					<h3 id="agg"> Dottore aggiunto. Se non hai altri dottori da aggiungere ritorna allo staff.</h3>
					</div>
				</form>
				
			<a href="StaffClinica.jsp?id=<%=x%>"> <button  type="submit" class="btn btn-primary">Ritorna allo Staff</button></a>
				
			</div>
		</div>
	</div>
      
</body>
</html>