<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="model.*"%>
<%@page import="java.util.*"%>
<%@page import="dao.*"%>
      	

    
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Staff</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/staffClinicaGestione.css">
</head>

<% 
int id = Integer.parseInt(request.getParameter("id"));
List<Dottore> dottori = ClinicaDAO.visualizzaDottori(id);
%>



<body>
<form action="formAggiungiDottore.jsp">
    <input type="submit" value="Aggiungi Dottore" />
</form>

<div class=carte>
<%
for(Dottore d : dottori) {  %>

<div class="col-md-3 my-3">
				<div class="card w-100">
					<img class="card-img-top" src="https://www.ciaodottore.it/file-asset/Ciao_Dottore_Medico1?v=1" alt="Card image cap">
					<div class="card-body">
					<h5 class="category"><%=d.getSpecializzazione() %></h5>
						<h5 class="card-title"><%=d.getNome()%> <%=d.getCognome()%></h5>
						
						<div class="mt-3 d-flex justify-content-between">
							<a class="btn btn-dark" href="add-to-cart?id=">Modifica</a> 
                            <a class="btn btn-dark" href="add-to-cart?id=">Elimina </a> 
                            <a class="btn btn-dark" href="add-to-cart?id=">Visualizza </a> 
						</div>
					</div>
				</div>
			</div>
			<% }
				
			
 %>
</div>

</body>
</html>