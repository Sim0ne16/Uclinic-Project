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

<% int idClinica = Integer.parseInt(request.getParameter("id")); 
Clinica c =  ClinicaDAO.visualizzaClinica(idClinica);
%>



<body>


<div class="container">
		<div class="card ">
			<div class="card-header text-center" style="font-size: 30px;" id="titoloScheda">Modifica i dati della Clinica</div>
			<div class="card-body">
				<form action="ModificaClinica" method="post">
				<div class="form-group">	               
						<input type="hidden"   value="<%=idClinica%>" name="id" class="form-control" >
					</div>
					<div class="form-group">
						<label>Nome</label> 
						<input type="text" name="cNome" value="<%=c.getNome() %>" class="form-control" >
					</div>
					<div class="form-group">
						<label>Regione</label> 
						<input type="text" name="cRegione"  value="<%=c.getRegione() %>" class="form-control" >
					</div>
					<div class="form-group">
						<label>Città </label> 
						<input type="text" name="cCitta" value="<%=c.getCitta() %>" class="form-control" >
					</div>
					<div class="form-group">
						<label>Indirizzo</label> 
						<input type="text" name="cIndirizzo"  value="<%=c.getIndirizzo() %>" class="form-control" >
					</div>
					<div class="form-group">
						<label>Email</label>  
						<input type="email" name="cEmail" value="<%=c.getEmail() %>" class="form-control" >
					</div>
					<!-- da cancellare !! controllare se sbomballa la query -->
					<div class="form-group">
						<label>Password</label> 
						<input type="text" name="cPassword" value="<%=c.getPassword() %>" class="form-control" >
					</div>
                    <div class="form-group">
						<label>Tell Number</label> 
						<input type="text" name="cRecapitoTel" value="<%=c.getRecapitoTel() %>" class="form-control" >
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Modifica</button>
					</div>
				</form>
				<a href="profiloClinica.jsp?id=<%=idClinica%>"><button id="staffReg" type="submit" class="btn btn-primary" >Clinica</button></a>
				
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