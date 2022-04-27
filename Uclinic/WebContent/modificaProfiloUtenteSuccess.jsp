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
	<link rel="stylesheet" href="css/formAggModDottore.css">

    
    <script src="https://kit.fontawesome.com/367813bf67.js" crossorigin="anonymous"></script>
<title>Modifica Profilo</title>
</head>

<%
		Paziente p = (Paziente) session.getAttribute("utenteP");
%>


<body>

<div class="container">
		<div class="card  mx-auto my-5">
			<div class="card-header text-center">Modifica i dati della Clinica</div>
			<div class="card-body">
				<form action="modificaPaziente" method="post">
					<div class="form-group">
						<label>Nome</label> 
						<input type="text" name="uNome" value="<%=p.getNome()%>" class="form-control" required>
					</div>
					<div class="form-group">
						<label>Cognome</label> 
						<input type="text" name="uCognome" value="<%=p.getCognome()%>" class="form-control" required >
					</div>
					<div class="form-group">
						<label>Città </label> 
						<input type="text" name="uCitta" value="<%=p.getCitta() %>" class="form-control" required >
					</div>
					
					 <div class="form-group">
						<label>Regione</label> 
						<input type="text" name="uRegione" value="<%=p.getRegione() %>" class="form-control" required >
					</div>
					
					 <div class="form-group">
						<label>Eta</label> 
						<input type="text" name="uEta" value="<%=p.getEta() %>" class="form-control" required>
					</div>
					
					<div class="form-group">
						<label>Email</label> 
						<input type="email" name="uEmail" value="<%=p.getEmail() %>" class="form-control" required >
					</div>
                    <div class="form-group">
						<label>Codice Fiscale</label> 
						<input type="text" name="uCf" value="<%=p.getcFisc() %>" class="form-control" required >
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Modifica</button>
							<button id="staffReg" type="submit" class="btn btn-primary" style=color:white><a href="profiloUtente.jsp?id=<%=p.getIdPaziente()%>">Torna</a></button>
					<h1>Profilo modificato con successo!</h1>
					</div>
				</form>
			</div>
		</div>
		<section>    <div class="wave wave1"></div>
            <div class="wave wave2"></div>
            <div class="wave wave3"></div>
            <div class="wave wave4"></div>
            <div class="wave wave5"></div></section>
	</div>

     
</body>
</html>