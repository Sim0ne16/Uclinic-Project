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

	<link rel="stylesheet" href="css/formModifiche.css">  
	<script src="javascript/controlli.js"></script>
    <script src="https://kit.fontawesome.com/367813bf67.js" crossorigin="anonymous"></script>
<title>Modifica Medical History</title>
</head>


<body>



   <%
                Paziente p =(Paziente) session.getAttribute("utenteP");
                int x= p.getIdPaziente();
                 MedicalHistory m = (MedicalHistory) PazienteDAO.recuperaMh(x);
                %>
        


<div class="container">
		<div class="formGroup2">
		
			<div class="card-header" id="titoloScheda" style="font-size: 40px">Modifica Medical History</div>
			
			<div class="card-body1">
			
				<form action=""  method="post" id="formMH" name="form">
				    <div class="form-group">	               
						<input type="hidden"   value="<%=p.getIdPaziente()%>" id="id" name="id" class="form-control" required >
					</div>
					<div class="form-group">
						<label>Peso(kg)</label> 
						<input type="text" id="peso" value="<%=m.getPeso() %>" name="peso" class="form-control"  >
					</div>
					<div class="form-group">
						<label>Altezza(cm)</label> 
						<input type="text" id="altezza"  value="<%=m.getAltezza() %>" name="altezza" class="form-control" >
					</div>
					
					<div class="form-group1">
					

                   
                            <label for="lang">Blood Type</label>
                            <select name="sangue" id="sangue" value="<%=m.getGsangue()%>">
                              <option value="A+">A RhD positive (A+)</option>
                              <option value="A-">A RhD negative (A-)</option>
                              <option value="B+">B RhD positive (B+)</option>
                              <option value="B-">B RhD negative (B-)</option>
                              <option value="O+">O RhD positive (O+)</option>
                              <option value="O-">O RhD negative (O-)</option>
                              <option value="AB+">AB RhD positive (AB+)</option>
                              <option value="AB-">AB RhD negative (AB-)</option>
                            </select>
                            
                    

					</div>

					<div class="button" id="paddingtop">
						<input type="submit" onclick="validaMH()" class="btn btn-primary" value="Modifica">
					</div>
						
					
				
				</form>
				<div id="btntorna">
				<a href="profiloUtente.jsp?id=<%=x%>"><button id="staffReg" type="submit" class="btn btn-primary">Torna</button></a>
				 </div>
			</div>
		</div>
		
	</div>

     






</body>
</html>