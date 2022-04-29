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
<title>Modifica Dottore</title>
</head>


<%  int idDoc = Integer.parseInt(request.getParameter("id"));
    Dottore d = ClinicaDAO.visualizzaDottore(idDoc);
%>


<body>


<div class="container">
		<div class="card ">
			<div class="card-header text-center" style="font-size: 30px;" id="titoloScheda">Modifica i dati del dottore</div>
			<div class="card-body">
				<form action="modificaDottore" method="post">
					<div class="form-group">	               
						<input type="hidden"   value="<%=idDoc%>" name="id" class="form-control" required >
					</div>

					<div class="form-group">
						<label>Nome</label> 
						<input type="text" name="dNome" value="<%=d.getNome()%>" class="form-control" required >
					</div>
					<div class="form-group">
						<label>Cognome</label> 
						<input type="text" name="dCognome" value="<%=d.getCognome()%>"  class="form-control" required >
					</div>
					<div class="form-group">
						<label>Eta </label> 
						<input type="text" name="dEta" value="<%=d.getEta() %>"  class="form-control" required >
					</div>
					<div class="form-group">
						<label>Indirizzo</label> 
						<input type="text" name="dRecapito" value="<%=d.getRecapitoTel() %>"  class="form-control" required>
					</div>
					<div class="form-group">
						<label>Email</label> 
						<input type="text" name="dEmail" value="<%=d.getEmail() %>"  class="form-control" required >
					</div>
					<div class="form-group">
						<label>Specializzazione</label> 
						<input type="text" name="dSpecializzazione" value="<%=d.getSpecializzazione() %>"  class="form-control" required >
					</div>
                    <div class="form-group">
						<label>Costo Visita</label> 
						<input type="text" name="dCostoVisita" value="<%=d.getCostoVisita() %>"  class="form-control" required >
					</div>
					<div class="text-center">
						<button type="submit"  class="btn btn-primary">Modifica</button>
					</div>
				</form>
					<a href="visualizzaDottore.jsp?id=<%=idDoc%>"><button id="staffReg" type="submit" class="btn btn-primary">Dottore</button></a>
				
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