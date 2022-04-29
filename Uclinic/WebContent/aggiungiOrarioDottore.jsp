<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="model.*"%>
<%@page import="java.util.*"%>
<%@page import="dao.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Aggiungi Orario Dottore </title>
  <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/367813bf67.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/form.css">
        <link rel="stylesheet" href="css/aggiungiOrarioDottore.css">
    <script src="javascript/appuntamento.js"></script>
</head>
<body>
  <% int idDoc = Integer.parseInt(request.getParameter("idDottore"));
           Dottore d =  ClinicaDAO.visualizzaDottore(idDoc); %>
 
       
       
       
        <div class="container">
   
        <div class="title">Aggiungi Orari </div>
        <form action="aggiungiOrariDottore" name="formgiorni" id="formgiorni" method="post">
          <div class="user-details">
          
          <div class="form-group">	               
						<input type="hidden"   value="<%=idDoc%>" name="idDottore" class="form-control" required >
					</div>
          
          
          <fieldset>
    <legend>Giorno</legend>

  
     <div id="sett1">

    <div >
      <input type="checkbox" id="1" name="1" value="1">
      <label for="1">1</label>
    </div>
    
    
    <div >
      <input type="checkbox" id="2" name="2" value="2">
      <label for="2">2</label>
    </div>
    
    
    <div >
      <input type="checkbox" id="3" name="3" value="3" >
      <label for="3">3</label>
    </div>

 <div>
      <input type="checkbox" id="4" name="4" value="4">
      <label for="4">4</label>
    </div>
    
    
    <div>
      <input type="checkbox" id="5" name="5" value="5">
      <label for="5">5</label>
    </div>
    
    
    <div>
      <input type="checkbox" id="6" name="6" value="6" >
      <label for="6">6</label>
    </div>
 
   <div>
      <input type="checkbox" id="7" name="7" value="7" >
      <label for="7">7</label>
    </div>
    
    </div>
    
    
    
    <br>
    
  <div id="sett2">

    <div >
      <input type="checkbox" id="8" name="8" value="8">
      <label for="8">8</label>
    </div>
    
    
    <div >
      <input type="checkbox" id="9" name="9" value="9">
      <label for="9">9</label>
    </div>
    
    
    <div >
      <input type="checkbox" id="10" name="10" value="10" >
      <label for="10">10</label>
    </div>

 <div>
      <input type="checkbox" id="11" name="11" value="11">
      <label for="11">11</label>
    </div>
    
    
    <div>
      <input type="checkbox" id="12" name="12" value="12">
      <label for="12">12</label>
    </div>
    
    
    <div>
      <input type="checkbox" id="13" name="13" value="13" >
      <label for="13">13</label>
    </div>
 
   <div>
      <input type="checkbox" id="14" name="14" value="14" >
      <label for="14">14</label>
    </div>
    
    </div>
    
    <br> 
    
    <div id="sett3">

    <div >
      <input type="checkbox" id="15" name="15" value="15">
      <label for="15">15</label>
    </div>
    
    
    <div >
      <input type="checkbox" id="16" name="16" value="16">
      <label for="16">16</label>
    </div>
    
    
    <div >
      <input type="checkbox" id="17" name="17" value="17" >
      <label for="17">17</label>
    </div>

 <div>
      <input type="checkbox" id="18" name="18" value="18">
      <label for="18">18</label>
    </div>
    
    
    <div>
      <input type="checkbox" id="19" name="19" value="19">
      <label for="19">19</label>
    </div>
    
    
    <div>
      <input type="checkbox" id="20" name="20" value="20" >
      <label for="20">20</label>
    </div>
 
   <div>
      <input type="checkbox" id="21" name="21" value="21" >
      <label for="21">21</label>
    </div>
    
    </div>
     <br>
     <div id="sett4">

    <div >
      <input type="checkbox" id="22" name="22" value="22">
      <label for="22">22</label>
    </div>
    
    
    <div >
      <input type="checkbox" id="23" name="23" value="23">
      <label for="23">23</label>
    </div>
    
    
    <div >
      <input type="checkbox" id="24" name="24" value="24" >
      <label for="24">24</label>
    </div>

 <div>
      <input type="checkbox" id="25" name="25" value="25">
      <label for="25">25</label>
    </div>
    
    
    <div>
      <input type="checkbox" id="26" name="26" value="26">
      <label for="26">26</label>
    </div>
    
    
    <div>
      <input type="checkbox" id="27" name="27" value="27" >
      <label for="27">27</label>
    </div>
 
   <div>
      <input type="checkbox" id="28" name="28" value="28" >
      <label for="28">28</label>
    </div>
    
    </div>
    
    <br>
    <div class="sett5" id="sett5">
    <div >
      <input type="checkbox" id="29" name="29" value="29" >
      <label for="29">29</label>
    </div>
 
   <div>
      <input type="checkbox" id="30" name="30" value="30" >
      <label for="30">30</label>
    </div>
 
 
 
     <div id="giorno31" >
      <input type="checkbox" id="31" name="31" value="31" >
      <label for="31">31</label>
    </div>
      </div>

   
</fieldset>
          
          
          
            
      
		
           
		<label for="lang">Mese</label> <select name="mese" id="mese" onchange="giorniM()">
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
		
		
		 <label for="lang">Anno</label> <select name="anno" id="anno">
			<option value=""></option>
			<option value="2022">2022</option>
			<option value="2023">2023</option>
			<option value="2024">2024</option>

		</select>      
            
        <label for="lang">Da</label> <select name="oraI" id="oraI">
			<option value=""></option>
			<option value="0"></option>
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
				
				
				
				
	 <label for="lang">A</label> <select name="oraF" id="oraF">
			<option value=""></option>
			<option value="0"></option>
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
            <div class="button">
             <input type="submit" onclick="" class="btn btn-primary" value="Aggiungi" >
        </div>
        
        
        </form>
       </div>
             
        <button class="bb1" type="button">Ritorna</button>
</body>
</html>