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
<title>Aggiungi Dottore</title>
</head>
<body>


<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">Registrazione Dottore</div>
			<div class="card-body">
				<form action="AggiungiDottore" method="post">
					<div class="form-group">
						<label>Nome</label> 
						<input type="text" name="dNome" class="form-control" >
					</div>
					<div class="form-group">
						<label>Cognome</label> 
						<input type="text" name="dCognome" class="form-control" >
					</div>
					<div class="form-group">
						<label>Eta</label> 
						<input type="text" name="dEta" class="form-control" >
					</div>
					<div class="form-group">
						<label>Email </label> 
						<input type="email" name="dEmail" class="form-control" >
					</div>
					<div class="form-group">
						<label>Recapito</label> 
						<input type="text" name="dRecapito" class="form-control" >
					</div>
					<div class="form-group">
						<label>Specializzazione</label> 
						<input type="text" name="dSpecializzazione" class="form-control" >
					</div>
					<div class="form-group">
						<label>Costo Visita</label> 
						<input type="text" name="dCosto" class="form-control" >
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Registrazione</button>
					</div>
				</form>
			</div>
		</div>
	</div>


</body>
</html>