<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="model.*"%>
<%@page import="java.util.*"%>
<%@page import="dao.*"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/367813bf67.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/form.css">
    <script src="javascript/appuntamento.js"></script>

      
    <title>Appuntamento</title>
</head>

<%
  int idDottore = Integer.parseInt(request.getParameter("idDottore"));     
  List<Orario> orariD = PazienteDAO.orarioDoc(idDottore);

%>

<body>

<div class="container">

<div class="form-group">	               
				
                   

	<form action="" method="post" name="formi" id="form">
	 <div class="form-group"><input type="hidden"   value="<%=idDottore%>" id="idDottore" name="idDottore"  class="form-control" ></div>
		
			
		<% 
		
		int anno = Integer.parseInt(request.getParameter("anno")); 
		int mese = Integer.parseInt(request.getParameter("mese"));
		int giorno = Integer.parseInt(request.getParameter("giorno"));
		List<Integer> mesi = PazienteDAO.recuperaMesi(idDottore, anno);
				

		%>
	
		
		 <label for="lang">Anno</label> <select name="annoA" id="annoA"  onchange="reloadPageAnno()">
			<option value="<%=anno%>"><%=anno%></option> 
			<% 
			List<Integer> anni = new ArrayList<Integer>();
			for(Orario o:orariD ){  
			if(!anni.contains(o.getAnno())){
				anni.add(o.getAnno());
			}
			}
			
			%>
	<% for(int x=0;x<anni.size();x++){ %>
		
			  
			<option  value="<%=anni.get(x)%>"><%=anni.get(x)%></option>
			
			
	<% } %>

		</select> 
		
		
	
		
		
		
			
	<label for="lang">Mese</label> <select name="meseA" id="meseA" onchange="reloadPageMese()">
		<option value="<%=mese%>"><%=mese%></option> 
	  <% for(int x=0;x<mesi.size();x++){ %>
		<option value="<%=mesi.get(x)%>"> <%=mesi.get(x)%></option>
			
			<% } %>
	    </select>

		
			<% 
	
		List<Integer> giorni = PazienteDAO.recuperaGiorni(idDottore,anno,mese);
				

		%>
		
		
		<label for="lang">Giorno</label> <select name="giornoA" id="giornoA" onchange="reloadPageGiorno()">
			<option value="<%=giorno %>"><%=giorno %></option>
			
			<% for(int x=0;x<giorni.size();x++){ %>
		<option value="<%=giorni.get(x)%>"> <%=giorni.get(x)%></option>
			
			<% } %>
		

		</select> 
		
		<%
		int oraI = PazienteDAO.recuperaOreI(idDottore,anno,mese,giorno);
		int oraF = PazienteDAO.recuperaOreF(idDottore,anno,mese,giorno);
		
	    int differenza = oraF-oraI;
	    int[] orariI = new int[differenza];
	    int[] orariF = new int[differenza];
	    
	    for(int x=0;x<differenza;x++){
	    	orariI[x] = oraI+x;
	    	orariF[x] = oraI+1+x;
	    }
		%>
		
		
		<label for="lang">Ora</label> <select name="oraA" id="oraA">
		    <option value=""></option>
		 <%for (int x=0;x<differenza;x++){ %>
			<option value="<%=orariI[x]%>"><%=orariI[x] %> - <%=orariF[x]%></option>
	<%} %>
		</select>
		
		
			<div class="button" name="bottone">
             <input type="submit" onclick="controllocalendarioFormApp()" class="btn btn-primary" value="Conferma">
        </div>
	
		
	</form>
		
	
</div>
</div>
</body>
</html>