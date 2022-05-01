  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        
 <%@page import="model.*"%>
<%@page import="java.util.*"%>
<%@page import="dao.*"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Orario Dottore</title>
  <link rel="stylesheet" href="css/mdb.min.css">
    <link rel="stylesheet" href="css/orarioDottore.css">
    <script src="https://kit.fontawesome.com/367813bf67.js" crossorigin="anonymous"></script>
</head>

 <% 
      int idorario = Integer.parseInt(request.getParameter("idOrario"));
      Orario o =  ClinicaDAO.visualizzaOrario(idorario);
%>  

<body>
 
  <div class="cardBody">
                   
    <h5 class="card-title">Data: <%=o.getGiorno()%>/<%=o.getMese()%>/<%=o.getAnno() %></h5>
    <p class="card-text">Orario: <%=o.getOraI()%> - <%=o.getOraF() %>  </p>
  
    
    
     <a class="btn btn-dark" href="eliminaOrarioDottore?IdOrario=<%=o.getIdOrario() %>" value="press me" title="Elimina" input type="reset"  onClick="return confirm('Sicuro di voler cancellare questo orario?')" ><i  class="fa-solid fa-trash fa-2x"></i> </a>
     
  </div>
  


<form action="ModificaOrario" method="post" class="formD">
					<div class="form-group">	               
						<input type="hidden"   value="<%=o.getIdOrario()%>" name="idOrario" class="form-control" required >
					</div>
					<div class="form-group">	               
						<input type="hidden"   value="<%=o.getIdDottore()%>" name="codDottore" class="form-control" required >
					</div>

       <div id="giornoX">
		<label for="lang" >Giorno</label> <select  name="giorno" id="giorno" >	
			<option value="<%= o.getGiorno() %>"><%= o.getGiorno() %></option>
			<option value=""></option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			<option value="10">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
			<option value="13">13</option>
			<option value="14">14</option>
			<option value="15">15</option>
			<option value="16">16</option>
			<option value="17">17</option>
			<option value="18">18</option>
			<option value="19">19</option>
			<option value="20">20</option>
			<option value="21">21</option>
			<option value="22">22</option>
			<option value="23">23</option>
			<option value="24">24</option>
			<option value="25">25</option>
			<option value="26">26</option>
			<option value="27">27</option>
			<option value="28">28</option>
			<option value="29">29</option>
			<option value="30">30</option>
			<option value="31">31</option>

		</select> 
		</div>
		
            <div id="meseX">          
		<label for="lang">Mese</label> <select name="mese" id="mese">
			<option value="<%= o.getMese() %>"><%= o.getMese() %></option>
			<option value=""></option>
			<option value="1">Gennaio</option>
			<option value="2">Febbraio</option>
			<option value="3">Marzo</option>
			<option value="4">Aprile</option>
			<option value="5">Maggio</option>
			<option value="6">Giugno</option>
			<option value="7">Luglio</option>
			<option value="8">Agosto</option>
			<option value="9">Settembre</option>
			<option value="10">Ottobre</option>
			<option value="11">Novembre</option>
			<option value="12">Dicembre</option>
		</select>
		</div>  
		
		<div id="annoX">
		 <label for="lang">Anno</label> <select name="anno" id="anno">
			<option value="<%= o.getAnno() %>"><%= o.getAnno() %></option>
			<option value=""></option>
			<option value="2022">2022</option>
			<option value="2023">2023</option>
			<option value="2024">2024</option>

		</select>      
		</div>
		
		<div id="daX">
		 <label for="lang">Da</label> <select name="oraI" id="oraI">
			<option value="<%= o.getOraI() %>"><%= o.getOraI() %></option>
			<option value=""></option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			<option value="10">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
			<option value="13">13</option>
			<option value="14">14</option>
			<option value="15">15</option>
			<option value="16">16</option>
			<option value="17">17</option>
			<option value="18">18</option>
			<option value="19">19</option>
			<option value="20">20</option>
			<option value="21">21</option>
			<option value="22">22</option>
			<option value="23">23</option>

		</select> 
				
		</div>		
				
			<div id="aX">
	 <label for="lang">A</label> <select name="oraF" id="oraF">
			<option value="<%= o.getOraF() %>"><%= o.getOraF() %></option>
			<option value=""></option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			<option value="10">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
			<option value="13">13</option>
			<option value="14">14</option>
			<option value="15">15</option>
			<option value="16">16</option>
			<option value="17">17</option>
			<option value="18">18</option>
			<option value="19">19</option>
			<option value="20">20</option>
			<option value="21">21</option>
			<option value="22">22</option>
			<option value="23">23</option>
			<option value="24">24</option>

		</select> 
		</div>	
                <div class="text-center">
						<button type="submit"  class="btn btn-primary" >Modifica</button>
                </div>
					
				</form>
				  
            <div id="btntorna">
				 <a href="gestisciOrariDottore.jsp?id=<%=o.getIdDottore()%>"><button  type="submit" class="btn btn-primary">Ritorna </button></a>
				</div>


</body>
</html>