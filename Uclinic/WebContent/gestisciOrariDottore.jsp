<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@page import="model.*"%>
<%@page import="java.util.*"%>
<%@page import="dao.*"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Orario Dottore </title>
   <link rel="stylesheet" href="css/mdb.min.css">
    <link rel="stylesheet" href="css/formModifiche.css">
    <script src="https://kit.fontawesome.com/367813bf67.js" crossorigin="anonymous"></script>
</head>

<% 
int idDoc = Integer.parseInt(request.getParameter("id"));
Dottore d =  ClinicaDAO.visualizzaDottore(idDoc); 
List<Orario> orario = ClinicaDAO.visulizzaOrari(idDoc);

%>

<body>

<h1>Orari del Dr <%=d.getNome() %><%=d.getCognome() %></h1>


 <a href="aggiungiOrarioDottore.jsp?idDottore=<%=idDoc%>" class="btn btn-primary">Aggiungi Orario</a>
 

 


<% for(Orario o : orario) {%>

<div class="card">
  <div class="card-header">
   
  </div>
  <div class="card-body">
    <h5 class="card-title">Data: <%=o.getGiorno()%>/<%=o.getMese()%>/<%=o.getAnno() %></h5>
    <p class="card-text">Orario: <%=o.getOraI()%> - <%=o.getOraF() %>  </p>
    <a href="visualizzaOrarioDottore.jsp?idOrario=<%=o.getIdOrario() %>" class="btn btn-primary">Visualizza</a>
    
  </div>
</div>



<%  } %>
</body>
</html>