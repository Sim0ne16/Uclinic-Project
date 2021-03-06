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
    
    <script src="https://kit.fontawesome.com/367813bf67.js" crossorigin="anonymous"></script>
<title>Modifica Clinica</title>
</head>


<%  int idClinica = Integer.parseInt(request.getParameter("id"));
    Clinica c = ClinicaDAO.visualizzaClinica(idClinica);
%>


<body>


<div class="container">
		<div class="card">
			<div class="card-header text-center" style="font-size: 30px;" id="titoloScheda">Modifica i dati della clinica <%=c.getNome() %></div>
			<div class="cardbody">
				<form action="modificaDottore" method="post">
				
					<div class="form-group">
						<label>Nome</label> 
						<input type="text"  value="<%=c.getNome()%>" name="cNome" class="form-control" >
					</div>
					<div class="form-group">
						<label>Regione</label> 
						<input type="text"  value="<%=c.getRegione()%>" name="cRegione"  class="form-control" >
					</div>
					<div class="form-group">
						<label>Citta </label> 
						<input type="text"  value="<%=c.getCitta() %>" name="cCitta" class="form-control" >
					</div>
					<div class="form-group">
						<label>Indirizzo</label> 
						<input type="text"  value="<%=c.getIndirizzo() %>" name="cIndirizzo" class="form-control" >
					</div>
					<div class="form-group">
						<label>Email</label> 
						<input type="text"  value="<%=c.getEmail() %>" name="cEmail" class="form-control" >
					</div>
					<div class="form-group">
						<label>Password</label> 
						<input type="text"  value="<%=c.getPassword() %>" name="cPassword" class="form-control" >
					</div>
                    <div class="form-group">
						<label>Recapito Telefonico </label> 
						<input type="text"  value="<%=c.getRecapitoTel() %>" name="cRecapitoTel" class="form-control" >
					</div>
					<div class="text-center">
						<button type="submit"  class="btn btn-primary">Modifica</button>
						 <h3 id="agg">Modifica avvenuta, torna alla clinica!</h3>
					</div>
				</form>
					<div id="btntorna">
				 <a href="profiloClinica.jsp?id=<%=idClinica%>"><button id="staffReg" type="submit" class="btn btn-primary" >Clinica</button></a>
				</div>
			</div>
		</div>
	</div>
     
</body>
</html>