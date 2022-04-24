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

	<link rel="stylesheet" href="css/form.css">  
	<script src="javascript/controlli.js"></script>
    <script src="https://kit.fontawesome.com/367813bf67.js" crossorigin="anonymous"></script>
<title>Modifica Medical History</title>
</head>


<body>



   <%
                Paziente p =(Paziente) session.getAttribute("utenteP");
  int x= p.getIdPaziente();
                %>
        


<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">Modifica Medidcal History</div>
			<div class="card-body">
				<form action="AggiungiDottore" method="post" name="form">
					<div class="form-group">
						<label>Peso</label> 
						<input type="text" id="peso" name="peso" class="form-control" >
					</div>
					<div class="form-group">
						<label>Altezza</label> 
						<input type="text" id="altezza" name="altezza" class="form-control" >
					</div>
					<div class="form-group1">
					

                        <form action="" >
                            <label for="lang">Blood Type</label>
                            <select name="sangue" id="sangue">
                              <option value="A+">A RhD positive (A+)</option>
                              <option value="A-">A RhD negative (A-)</option>
                              <option value="B+">B RhD positive (B+)</option>
                              <option value="B-">B RhD negative (B-)</option>
                              <option value="O+">O RhD positive (O+)</option>
                              <option value="O-">O RhD negative (O-)</option>
                              <option value="AB+">AB RhD positive (AB+)</option>
                              <option value="AB-">AB RhD negative (AB-)</option>
                            </select>
                            
                      </form>

					</div>

					<div class="text-center">
						<button type="submit" onclick="valida()" class="btn btn-primary">Modifica</button>
					</div>
				</form>
			</div>
		</div>
		<section id="nuvole">	<div class="wave wave1"></div>
			<div class="wave wave2"></div>
			<div class="wave wave3"></div>
			<div class="wave wave4"></div>
			<div class="wave wave5"></div></section>
	</div>

     <button id="staffReg" type="submit" class="btn btn-primary" style=color:white><a href="profiloUtente.jsp?id=<%=x%>">Torna</a></button>






</body>
</html>