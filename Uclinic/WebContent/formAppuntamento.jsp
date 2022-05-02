<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="model.*"%>
<%@page import="java.util.*"%>
<%@page import="dao.*"%>
<%@page import="comparator.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/367813bf67.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/formModifiche.css">
    <script src="javascript/appuntamento.js"></script>
 



      
    <title>Appuntamento</title>
</head>

<%
  int idDottore = Integer.parseInt(request.getParameter("idDottore"));     
  List<Orario> orariD = PazienteDAO.orarioDoc(idDottore);

%>

<body>

<div class="container">

	
		<div id="allegafile">
		<label for="file">Allega qui il tuo referto di tipo MyMedica     </label>
            <input type="file" name="file">
		</div>
		


<div class="formGroup">	               
				
        
        <% 
		
		int anno = Integer.parseInt(request.getParameter("anno")); 
		int mese = Integer.parseInt(request.getParameter("mese"));
		int giorno = Integer.parseInt(request.getParameter("giorno"));
		int ora = Integer.parseInt(request.getParameter("ora"));
		List<Integer> mesi = PazienteDAO.recuperaMesi(idDottore, anno);
		Collections.sort(mesi, new ComparatorInt());
		
				

		%>
                   

	<form action="" method="post" name="formi" id="form">
	 <div class="form-group"><input type="hidden"   value="<%=idDottore%>" id="idDottore" name="idDottore"  class="form-control" ></div>
	 <div class="form-group"><input type="hidden"   value="<%=anno%>" id="annoP" name="annoP"  class="form-control" ></div>
	 <div class="form-group"><input type="hidden"   value="<%=mese%>" id="meseP" name="meseP"  class="form-control" ></div>
	 <div class="form-group"><input type="hidden"   value="<%=giorno%>" id="giornoP" name="giornoP"  class="form-control" ></div>
	 <div class="form-group"><input type="hidden"   value="<%=ora%>" id="oraP" name="oraP"  class="form-control" ></div>	
			
		
	
		
		 <label for="lang">Anno</label> <select name="annoA" id="annoA"  onchange="reloadPageAnno()" class="menu">
			<option value="<%=anno%>"><%=anno%></option> 
			<% 
			List<Integer> anni = new ArrayList<Integer>();
		    Collections.sort(anni, new ComparatorInt());
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
		
		
	
		
		
		
			
	<label for="lang">Mese</label> <select name="meseA" id="meseA" onchange="reloadPageMese()" class="menu">
		<option value="<%=mese%>"><%=mese%></option> 
	  <% for(int x=0;x<mesi.size();x++){ %>
		<option value="<%=mesi.get(x)%>"> <%=mesi.get(x)%></option>
			
			<% } %>
	    </select>

		
			<% 
	
		List<Integer> giorni = PazienteDAO.recuperaGiorni(idDottore,anno,mese);
		Collections.sort(giorni, new ComparatorInt());		

		%>
		
		
		<label for="lang">Giorno</label> <select name="giornoA" id="giornoA" onchange="reloadPageGiorno()" class="menu">
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
	  
	    List<Appuntamento> appuntamenti = new ArrayList<Appuntamento>();
	  if(oraI!=0){
      Orario orario = new Orario(idDottore,anno,mese,giorno,oraI,oraF);
	  appuntamenti = PazienteDAO.recuperaAppuntamentiDottore(orario);  
	    }
		%>
		
		
		<label for="lang">Ora</label> <select name="oraA" id="oraA" onchange="reloadPageOra()" class="menu">
		    <option value="<%=ora%>"><%=ora%>.00 </option>
		 <%for (int x=0;x<differenza;x++){  
			 boolean esito = true;
			 for(int y=0;y<appuntamenti.size();y++){
			 if(appuntamenti.get(y).getOra()==orariI[x] && appuntamenti.get(y).getPrenotazione()!=2){ 
			 esito = false;
			 %>
			
	<%}} if (esito == true){ %>
			<option value="<%=orariI[x]%>"><%=orariI[x] %>.00 - <%=orariF[x]%>.00</option> <% }}%>
		 		</select>
	
		
			<div id="conferma">
             <input type="submit" onclick="controllocalendarioFormApp()" class="btn btn-primary" value="Conferma">
        </div>
        
		
	</form>
		 <div id="conferma">
				<a href="visualizzaDottoreEst.jsp?idDottore=<%=idDottore%>"><button type="submit" class="btn btn-primary" >Torna al dottore</button></a>
				</div>
				
				
	
</div>
</div>
</body>
</html>