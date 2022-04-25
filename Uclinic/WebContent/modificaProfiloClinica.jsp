<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/ModificaClinica.css">

    
    <script src="https://kit.fontawesome.com/367813bf67.js" crossorigin="anonymous"></script>
<title>Modifica Clinica</title>
</head>





<body>


<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">Modifica i dati della Clinica</div>
			<div class="card-body">
				<form action="AggiungiDottore" method="post">
					<div class="form-group">
						<label>Nome</label> 
						<input type="text" name="cNome" class="form-control" >
					</div>
					<div class="form-group">
						<label>Regione</label> 
						<input type="text" name="cRegione" class="form-control" >
					</div>
					<div class="form-group">
						<label>Città </label> 
						<input type="email" name="cCittà" class="form-control" >
					</div>
					<div class="form-group">
						<label>Indirizzo</label> 
						<input type="text" name="cIndirizzo" class="form-control" >
					</div>
					<div class="form-group">
						<label>Email</label> 
						<input type="text" name="cEmail" class="form-control" >
					</div>
					<div class="form-group">
						<label>Password</label> 
						<input type="text" name="cPassword" class="form-control" >
					</div>
                    <div class="form-group">
						<label>Tell Number</label> 
						<input type="text" name="cRecapitoTell" class="form-control" >
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Modifica</button>
					</div>
				</form>
			</div>
		</div>
	</div>

     <button id="staffReg" type="submit" class="btn btn-primary" style=color:white><a href="">Staff</a></button>
</body>
</html>