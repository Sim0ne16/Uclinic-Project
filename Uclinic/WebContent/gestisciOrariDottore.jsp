<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%@page import="model.*"%>
<%@page import="java.util.*"%>
<%@page import="dao.*"%>
<%@page import="comparator.*"%>

<!DOCTYPE html>
<html>
<head>

 <% 
int idDoc = Integer.parseInt(request.getParameter("id"));
Dottore d =  ClinicaDAO.visualizzaDottore(idDoc); 
List<Orario> orario = ClinicaDAO.visulizzaOrari(idDoc);
Collections.sort(orario, new OrarioComparatorOra());
Collections.sort(orario, new OrarioComparatorGiorno());
Collections.sort(orario, new OrarioComparatorMese());
Collections.sort(orario, new OrarioComparatorAnno());

%>
<meta charset="ISO-8859-1">
<title>Orari di <%=d.getNome() %> <%=d.getCognome() %> </title>
      <link rel="stylesheet" href="css/visualizzaOrari.css">
    <script src="https://kit.fontawesome.com/367813bf67.js" crossorigin="anonymous"></script>
</head>


<body>
<div class="container"> 

<h1 id="oraridoc">Orari del Dr <%=d.getNome() %><%=d.getCognome() %></h1>

<div id="aggiungi">
 <a href="aggiungiOrarioDottore.jsp?idDottore=<%=idDoc%>" class="btn btn-primary"  id="aggDoc">Aggiungi Orario</a>
 </div>
 <div id="btntorna">
                 <a href="visualizzaDottore.jsp?id=<%=idDoc%>"><button  type="submit" class="btn btn-primary">Ritorna </button></a>
                </div>


</div>

   <section id="wrapper"> 

<% for(Orario o : orario) { %>

<div class="card" id="cardDottore">

<div id="scritte">
    <h5 style="font-size:1em" class="card-title">Data: <%=o.getGiorno()%>/<%=o.getMese()%>/<%=o.getAnno() %></h5><br>
    <p style="font-size:1em" class="card-text">Orario: <%=o.getOraI()%> - <%=o.getOraF() %>  </p>
</div>
    <div class="tooltip" >
    <a href="visualizzaOrarioDottore.jsp?idOrario=<%=o.getIdOrario() %>" class="btn btn-primary">Visualizza</a>
    </div>

</div>



<%  } %>

            </section> 
</body>
</html>